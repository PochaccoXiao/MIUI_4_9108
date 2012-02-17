.class public final Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "GsmMultiDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$OemCommands;,
        Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;
    }
.end annotation


# static fields
.field protected static final APN_DELAY_MILLIS:I = 0x1388

.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final CLEANUP_AFTER_GPRS_DETACHED_TIMER:I = 0x1d4c0

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.gprs-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final PDP_CONNECTION_POOL_SIZE:I = 0x3

.field private static final POLL_PDP_MILLIS:I = 0x1388

.field static final PREFERAPN_URI:Landroid/net/Uri;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private allApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private apnObserver:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;

.field private canSetPreferApn:Z

.field failNextConnect:Z

.field protected mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field private mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

.field private mCleanupCount:I

.field private mCurrentRequestedApnType:Ljava/lang/String;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

.field private mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

.field private mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPsRestricted:Z

.field private mIsScreenOn:Z

.field private mIsSimSupportMultiPdp:Z

.field private mPdpResetCount:I

.field private mPendingRequestedApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPingTestActive:Z

.field private mPollNetStat:Ljava/lang/Runnable;

.field private mReregisterOnReconnectFailure:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

.field private noAutoAttach:Z

.field private pdpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field private waitingApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 9
    .parameter "p"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v8, "GSM"

    .line 334
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 95
    const-string v3, "GSM"

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 122
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsSimSupportMultiPdp:Z

    .line 124
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    .line 127
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->noAutoAttach:Z

    .line 129
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 132
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPingTestActive:Z

    .line 135
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I

    .line 136
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsScreenOn:Z

    .line 142
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->failNextConnect:Z

    .line 150
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    .line 157
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    .line 159
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 164
    const-string v3, "default"

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    .line 167
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    .line 178
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    .line 199
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->canSetPreferApn:Z

    .line 217
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1270
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    .line 335
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 336
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 337
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xc

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v4, 0x4

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 339
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x6

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 340
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v4, 0xf

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 341
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v4, 0xe

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 342
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x1a

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForGprsAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 343
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x13

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 344
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x15

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 345
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x16

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 346
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x20

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 347
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x21

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 349
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v3, "android.intent.action.BROADCAST_START_NET_STAT_POLL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v3, "android.net.action.DUN_DISCONNECTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v3, "android.net.action.DUN_ATTEMPTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v3, "android.intent.action.CONNECT_GPRS_TRUE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v3, "android.intent.action.CONNECT_GPRS_FALSE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v3, "android.net.action.DUN_CONNECTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v3, "android.net.action.DUN_BLOCKED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1, v5, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 376
    iput-object p0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 377
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    .line 379
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnObserver:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;

    .line 380
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnObserver:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 383
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->createAllPdpList()V

    .line 386
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->createPendingRequestedApnList()V

    .line 389
    new-instance v3, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    .line 393
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 394
    .local v2, sp:Landroid/content/SharedPreferences;
    const/4 v0, 0x1

    .line 396
    .local v0, dataEnabledSetting:Z
    :try_start_0
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 401
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const-string v4, "disabled_on_boot_key"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    move v4, v7

    :goto_1
    aput-boolean v4, v3, v6

    .line 403
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_0

    .line 404
    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 406
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, v6

    if-nez v3, :cond_4

    move v3, v7

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->noAutoAttach:Z

    .line 408
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const-string/jumbo v4, "ro.gsm.data_retry_config"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 409
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const-string v4, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 411
    const-string v3, "GSM"

    const-string v3, "Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const/16 v4, 0x14

    const/16 v5, 0x7d0

    const/16 v6, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    .line 417
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

    .line 418
    new-instance v3, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v3}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    .line 420
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string/jumbo v4, "ro.gsm.2nd_data_retry_config"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 422
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string/jumbo v4, "max_retries=3, 5000, 5000, 5000"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 424
    const-string v3, "GSM"

    const-string v3, "Could note configure using SECONDARY_DATA_RETRY_CONFIG=max_retries=3, 5000, 5000, 5000"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string/jumbo v4, "max_retries=3, 333, 333, 333"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    .line 429
    :cond_2
    return-void

    :cond_3
    move v4, v6

    .line 401
    goto :goto_1

    :cond_4
    move v3, v6

    .line 406
    goto :goto_2

    .line 398
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->showDialogOnInternetSharingBlockedByActiveSync()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isInternetSharingBlockedByActiveSync()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->disconnectDun()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2202(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$2414(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2702(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$3708(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->runPingTest()V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPingTestActive:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return p1
.end method

.method static synthetic access$4302(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$4402(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method private addPendingApnRequest(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is added to list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2138
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2140
    :cond_0
    return-void
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2286
    .local p1, apns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2287
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .end local p0
    .local v2, size:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2288
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2292
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private buildWaitingApns()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v7, ":"

    .line 2221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2234
    .local v1, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    const-string v6, "bip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2235
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->fetchBipApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v2

    .line 2236
    .local v2, bip:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2266
    .end local v2           #bip:Lcom/android/internal/telephony/gsm/ApnSetting;
    :cond_0
    :goto_0
    return-object v1

    .line 2242
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 2244
    .local v4, operator:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2245
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v5, :cond_3

    .line 2246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preferred APN:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2248
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2249
    const-string v5, "Waiting APN set to preferred APN"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2250
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2253
    :cond_2
    const/4 v5, -0x1

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setPreferredApn(I)V

    .line 2254
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 2259
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 2260
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 2261
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2262
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private cleanUpConnection(ZLjava/lang/String;)V
    .locals 6
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 830
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clean up connection due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 833
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 834
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 836
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 837
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 840
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 842
    const/4 v3, 0x0

    .line 844
    .local v3, notificationDeferred:Z
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    .line 846
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 847
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    .line 849
    if-eqz p1, :cond_1

    .line 850
    const-string v4, "cleanUpConnection: teardown, call conn.disconnect"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 851
    const/16 v4, 0x19

    invoke-virtual {p0, v4, p2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/DataConnection;->disconnect(Landroid/os/Message;)V

    .line 852
    const/4 v3, 0x1

    goto :goto_0

    .line 854
    :cond_1
    const-string v4, "cleanUpConnection: !tearDown, call conn.resetSynchronously"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetSynchronously()V

    .line 856
    const/4 v3, 0x0

    goto :goto_0

    .line 859
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    .line 861
    if-nez v3, :cond_3

    .line 862
    const-string v4, "cleanupConnection: !notificationDeferred"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 863
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 865
    :cond_3
    return-void
.end method

.method private clearAllPendingApnRequest()V
    .locals 1

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2145
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2146
    :cond_0
    return-void
.end method

.method private createAllApnList()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    .line 2070
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 2072
    .local v7, operator:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 2076
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSelectedNetworkProfile()Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-result-object v8

    .line 2077
    .local v8, profile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    if-eqz v8, :cond_3

    iget-object v0, v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND nwkname = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR (numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND nwkname = \'\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2089
    .local v3, selection:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2092
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2093
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2094
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    .line 2103
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2107
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #profile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2109
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 2110
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 2119
    :cond_2
    :goto_1
    return-void

    .line 2083
    .restart local v8       #profile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #selection:Ljava/lang/String;
    goto :goto_0

    .line 2112
    .end local v3           #selection:Ljava/lang/String;
    .end local v8           #profile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 2113
    const-string v0, "Get PreferredAPN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2114
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2115
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 2116
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setPreferredApn(I)V

    goto :goto_1
.end method

.method private createAllPdpList()V
    .locals 3

    .prologue
    .line 2122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    .line 2125
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 2126
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->makeDataConnection(Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v1

    .line 2127
    .local v1, pdp:Lcom/android/internal/telephony/DataConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2129
    .end local v1           #pdp:Lcom/android/internal/telephony/DataConnection;
    :cond_0
    return-void
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 17
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 884
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v16, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 887
    :cond_0
    const-string/jumbo v3, "type"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 889
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/gsm/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "numeric"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "proxy"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "port"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "mmsc"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mmsproxy"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "mmsport"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "password"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-direct/range {v2 .. v15}, Lcom/android/internal/telephony/gsm/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 903
    .local v2, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 906
    .end local v2           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    :cond_1
    return-object v16
.end method

.method private createPendingRequestedApnList()V
    .locals 1

    .prologue
    .line 2132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    .line 2133
    return-void
.end method

.method private destroyAllPdpList()V
    .locals 2

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2168
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2170
    :cond_0
    return-void
.end method

.method private disconnectDun()V
    .locals 6

    .prologue
    .line 2492
    const-string v3, "[ActiveSync] disconnectDun()"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2494
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2495
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2505
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x9

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2506
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2507
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2508
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2509
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2510
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2512
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2519
    :goto_0
    if-eqz v1, :cond_0

    .line 2521
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2527
    :cond_0
    :goto_1
    return-void

    .line 2514
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 2515
    .local v2, e:Ljava/io/IOException;
    const-string v3, "Error on disconnectDun()"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2523
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 2524
    .restart local v2       #e:Ljava/io/IOException;
    const-string v3, "GSM"

    const-string v4, "dos close fail!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private doRecovery()V
    .locals 4

    .prologue
    .line 1214
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "pdp_watchdog_max_pdp_reset_fail_count"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1218
    .local v0, maxPdpReset:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I

    if-ge v1, v0, :cond_1

    .line 1219
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I

    .line 1220
    const v1, 0xc3b6

    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1221
    const/4 v1, 0x1

    const-string/jumbo v2, "pdpReset"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1230
    .end local v0           #maxPdpReset:I
    :cond_0
    :goto_0
    return-void

    .line 1223
    .restart local v0       #maxPdpReset:I
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I

    .line 1224
    const v1, 0xc3b8

    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1225
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private enableNewApnImmediate(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1719
    const-string v0, "Enable new APN immediately"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1722
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    .line 1728
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1730
    const-string v0, "apnEnabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1731
    return-void

    .line 1726
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    goto :goto_0
.end method

.method private fetchBipApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .locals 19

    .prologue
    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 2177
    .local v18, pref:Landroid/content/SharedPreferences;
    if-nez v18, :cond_0

    .line 2178
    const-string v4, "fetchBipApn : there is no default preferences"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2179
    const/4 v4, 0x0

    .line 2200
    :goto_0
    return-object v4

    .line 2182
    :cond_0
    const-string v4, "bip.pref.enable"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 2184
    .local v17, isEnabled:Z
    if-nez v17, :cond_1

    .line 2185
    const-string v4, "fetchBipApn : BIP apn is not enabled"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2186
    const/4 v4, 0x0

    goto :goto_0

    .line 2189
    :cond_1
    const-string v4, "bip.pref.apn"

    const-string v5, ""

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2190
    .local v7, apnname:Ljava/lang/String;
    const-string v4, "bip.pref.user"

    const-string v5, ""

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2191
    .local v13, user:Ljava/lang/String;
    const-string v4, "bip.pref.passwd"

    const-string v5, ""

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2192
    .local v14, passwd:Ljava/lang/String;
    const-string v4, "bip.pref.proxy"

    const-string v5, ""

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2194
    .local v8, proxy:Ljava/lang/String;
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    const-string v5, "bip"

    aput-object v5, v16, v4

    .line 2195
    .local v16, types:[Ljava/lang/String;
    new-instance v3, Lcom/android/internal/telephony/gsm/ApnSetting;

    const/4 v4, -0x1

    const-string v5, ""

    const-string v6, "BipApn"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v16}, Lcom/android/internal/telephony/gsm/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 2198
    .local v3, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchBipApn ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v4, v3

    .line 2200
    goto/16 :goto_0
.end method

.method private fetchDunApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .locals 5

    .prologue
    .line 2205
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2206
    .local v1, c:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tether_dun_apn"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2208
    .local v0, apnData:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v2

    .line 2209
    .local v2, dunSetting:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 2212
    :goto_0
    return-object v3

    .line 2211
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2212
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v3

    goto :goto_0
.end method

.method private findFreePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 9

    .prologue
    const-string v8, "Free pdp found: idx("

    const-string v7, ")"

    .line 910
    const/4 v3, 0x0

    .line 912
    .local v3, idx:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 913
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v4, v0

    .line 915
    .local v4, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 916
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Free pdp found: idx("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v5, v4

    .line 934
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v4           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_1
    return-object v5

    .line 919
    .restart local v1       #conn:Lcom/android/internal/telephony/DataConnection;
    .restart local v4       #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 920
    goto :goto_0

    .line 922
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v4           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_1
    const/4 v3, 0x0

    .line 924
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 925
    .restart local v1       #conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v4, v0

    .line 927
    .restart local v4       #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isInactive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 928
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Free pdp found: idx("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getStateAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v5, v4

    .line 929
    goto :goto_1

    .line 931
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 932
    goto :goto_2

    .line 934
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v4           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getNextApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .locals 3

    .prologue
    .line 2274
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    .line 2275
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    const/4 v0, 0x0

    .line 2277
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-eqz v1, :cond_0

    .line 2278
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2279
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 2282
    .restart local v0       #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    :cond_0
    return-object v0
.end method

.method private getNextPendingApnRequest()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2149
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    move-object v1, v3

    .line 2162
    :goto_0
    return-object v1

    .line 2152
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2153
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2154
    .local v0, type:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 2159
    goto :goto_0

    .end local v0           #type:Ljava/lang/String;
    :cond_2
    move-object v1, v3

    .line 2162
    goto :goto_0
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-string v12, "_id"

    .line 2329
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    .line 2359
    :goto_0
    return-object v0

    .line 2333
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v12, v2, v10

    const-string/jumbo v4, "name"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string/jumbo v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2337
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2338
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->canSetPreferApn:Z

    .line 2343
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 2345
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2346
    const-string v0, "_id"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2347
    .local v9, pos:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 2348
    .local v8, p:Lcom/android/internal/telephony/gsm/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2349
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 2350
    goto :goto_0

    .line 2340
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v9           #pos:I
    :cond_2
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->canSetPreferApn:Z

    goto :goto_1

    .line 2355
    :cond_3
    if-eqz v6, :cond_4

    .line 2356
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v3

    .line 2359
    goto :goto_0
.end method

.method private gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleAndNotifyDataConnection: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1185
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1186
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1189
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1191
    :cond_0
    return-void
.end method

.method private isAllDataConnectionInactive()Z
    .locals 5

    .prologue
    .line 585
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 586
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 587
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isInactive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 588
    const/4 v4, 0x0

    .line 591
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isAnyApnTypeActive()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 575
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 576
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 577
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActive()Z

    move-result v4

    if-ne v4, v5, :cond_0

    move v4, v5

    .line 581
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isApnTypeInactive(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 563
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 564
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 565
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 566
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isInactive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 567
    const/4 v4, 0x0

    .line 571
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isDataAllowed()Z
    .locals 2

    .prologue
    .line 644
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 645
    .local v0, roaming:Z
    const-string/jumbo v1, "park: getAllDataConnections() start "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    const-string/jumbo v1, "park: getAnyDataEnabled() true "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 649
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 650
    :cond_1
    const-string/jumbo v1, "park: (!roaming || getDataOnRoamingEnabled()) true "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 651
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    if-eqz v1, :cond_3

    .line 652
    const-string/jumbo v1, "park: (mMasterDataEnabled) true "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 654
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDuringActionOnApnType(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 595
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 596
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 597
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 598
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isInactive()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 599
    const/4 v4, 0x1

    .line 603
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isInternetSharingBlockedByActiveSync()Z
    .locals 3

    .prologue
    const-string v2, "gsm.allowIS.set"

    .line 2478
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 2479
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2480
    const-string v0, "[ActiveSync] internet sharing is blocked"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2481
    const-string v0, "gsm.allowIS.set"

    const-string/jumbo v0, "true"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    const-string v0, "[ActiveSync] onReceive() gsm.allowIS.set=true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2483
    const/4 v0, 0x1

    .line 2488
    :goto_0
    return v0

    .line 2485
    :cond_0
    const-string v0, "[ActiveSync] internet sharing is NOT blocked"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2486
    const-string v0, "gsm.allowIS.set"

    const-string v0, "false"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    const-string v0, "[ActiveSync] onReceive() gsm.allowIS.set=false"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2488
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDefaultData(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 1163
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1164
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    .line 1168
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->isDormancyPollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->startFastDorm()V

    .line 1170
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->resetPollStats()V

    .line 1171
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->setDormancyPollState(Z)V

    .line 1172
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->run()V

    .line 1179
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 1181
    return-void

    .line 1174
    :cond_0
    const-string v0, "GSM"

    const-string v1, "DormancyPoll is already enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 1
    .parameter "lastFailCauseCode"

    .prologue
    .line 1485
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1486
    return-void
.end method

.method private onApnChanged()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "apnChanged"

    .line 1062
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAllDataConnectionInactive()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 1065
    .local v0, isConnected:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 1068
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1074
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->createAllApnList()V

    .line 1075
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_0

    .line 1076
    const-string v1, "apnChanged"

    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1077
    if-nez v0, :cond_0

    .line 1079
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1080
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 1081
    const-string v1, "apnChanged"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1084
    :cond_0
    return-void

    .end local v0           #isConnected:Z
    :cond_1
    move v0, v4

    .line 1062
    goto :goto_0
.end method

.method private onGprsAttached()V
    .locals 3

    .prologue
    const-string v2, "gprsAttached"

    .line 688
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->removeMessages(I)V

    .line 693
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->updateMultiplePdpCapacity()V

    .line 695
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gprsAttached"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->initialFDTimer()V

    .line 717
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1

    .line 704
    const/4 v0, 0x0

    const-string v1, "gprsAttached"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 708
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    if-eqz v0, :cond_2

    .line 710
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gprsAttached"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 715
    :cond_2
    const-string v0, "gprsAttached"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 874
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 875
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 876
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 880
    :goto_0
    return-object v0

    .line 878
    .end local v0           #result:[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_0
.end method

.method private pdpStatesHasActiveCID(Ljava/util/ArrayList;I)Z
    .locals 3
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1047
    .local p1, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local p0
    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1048
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    if-ne v2, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v2, :cond_0

    .line 1049
    const/4 v2, 0x1

    .line 1053
    :goto_1
    return v2

    .line 1047
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1053
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private pdpStatesHasCID(Ljava/util/ArrayList;I)Z
    .locals 3
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1038
    .local p1, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local p0
    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1039
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    if-ne v2, p2, :cond_0

    const/4 v2, 0x1

    .line 1042
    :goto_1
    return v2

    .line 1038
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1042
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private printProperties(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const-string/jumbo v7, "net."

    const-string v6, " @net."

    .line 1799
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v2, v0

    .line 1800
    .local v2, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    if-eqz v2, :cond_0

    .line 1801
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getInterface()Ljava/lang/String;

    move-result-object v1

    .line 1802
    .local v1, intfName:Ljava/lang/String;
    const-string v4, "Connected properties..."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1804
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "net."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".gw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1805
    .local v3, temp:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " @net."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".gw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1807
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "net."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1808
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " @net."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "net."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1811
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " @net."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1813
    .end local v1           #intfName:Ljava/lang/String;
    .end local v3           #temp:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V
    .locals 8
    .parameter "lastFailCauseCode"
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    .line 1434
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_0

    .line 1435
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1436
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1438
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "apnFailed"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1439
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onEnableApn(II)V

    .line 1482
    :cond_0
    :goto_0
    return-void

    .line 1443
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->retryForeverUsingLastTimeout()V

    .line 1459
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v2

    .line 1460
    .local v2, nextReconnectDelay:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PDP activate failed. Scheduling next attempt for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit16 v4, v2, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1463
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1465
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.gprs-reconnect"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1466
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v3, "reason"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1467
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 1469
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1473
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    .line 1475
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1476
    const-string v3, "NOT Posting GPRS Unavailable notification -- likely transient error"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1479
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto :goto_0
.end method

.method private resetPollStats()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 1206
    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    .line 1207
    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    .line 1208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    .line 1209
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    .line 1210
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    .line 1211
    return-void
.end method

.method private retryAfterDisconnected(Ljava/lang/String;)Z
    .locals 2
    .parameter "reason"

    .prologue
    .line 1425
    const/4 v0, 0x1

    .line 1427
    .local v0, retry:Z
    const-string/jumbo v1, "radioTurnedOff"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1428
    const/4 v0, 0x0

    .line 1430
    :cond_0
    return v0
.end method

.method private runPingTest()V
    .locals 8

    .prologue
    .line 1378
    const/4 v4, -0x1

    .line 1380
    .local v4, status:I
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "pdp_watchdog_ping_address"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1382
    .local v0, address:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "pdp_watchdog_ping_deadline"

    const/4 v7, 0x5

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1384
    .local v1, deadline:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pinging "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1385
    if-eqz v0, :cond_0

    const-string v5, "0.0.0.0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1386
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ping -c 1 -i 1 -w "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 1388
    .local v3, p:Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 1396
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #deadline:I
    .end local v3           #p:Ljava/lang/Process;
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 1399
    const v5, 0xc3b6

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1400
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPdpResetCount:I

    .line 1401
    const/16 v5, 0x1b

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1406
    :goto_1
    return-void

    .line 1390
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1391
    .local v2, e:Ljava/io/IOException;
    const-string/jumbo v5, "ping failed: IOException"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1392
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 1393
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "exception trying to ping"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1404
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v5, 0x1c

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private setPreferredApn(I)V
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 2301
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->canSetPreferApn:Z

    if-nez v2, :cond_1

    .line 2326
    :cond_0
    :goto_0
    return-void

    .line 2305
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2319
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2321
    if-ltz p1, :cond_0

    .line 2322
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2323
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2324
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private setupData(Ljava/lang/String;)Z
    .locals 6
    .parameter "reason"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 941
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getNextApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v0

    .line 942
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-nez v0, :cond_0

    move v3, v4

    .line 965
    :goto_0
    return v3

    .line 943
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->findFreePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    .line 944
    .local v2, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    if-nez v2, :cond_1

    .line 945
    const-string/jumbo v3, "setupData: No free GsmDataConnection found!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    move v3, v4

    .line 946
    goto :goto_0

    .line 948
    :cond_1
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 949
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 952
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 953
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    .line 958
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 959
    .local v1, msg:Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 960
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 961
    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->connect(Landroid/os/Message;Lcom/android/internal/telephony/gsm/ApnSetting;)V

    .line 963
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 964
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    move v3, v5

    .line 965
    goto :goto_0

    .line 955
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    goto :goto_1
.end method

.method private shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z
    .locals 1
    .parameter "cause"

    .prologue
    .line 1414
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDialogOnInternetSharingBlockedByActiveSync()V
    .locals 3

    .prologue
    .line 2531
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040467

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2532
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2533
    return-void
.end method

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V
    .locals 0
    .parameter "cause"
    .parameter "reason"

    .prologue
    .line 2296
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 2297
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V

    .line 2298
    return-void
.end method

.method private startPeriodicPdpPoll()V
    .locals 3

    .prologue
    const/4 v0, 0x7

    .line 1200
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->removeMessages(I)V

    .line 1202
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1203
    return-void
.end method

.method private trySetupData(Ljava/lang/String;)Z
    .locals 10
    .parameter "reason"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, ")"

    .line 720
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "***trySetupData due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_0

    const-string v6, "(unspecified)"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCurrReqApnType("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 723
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DSAC DEB] trySetupData with mIsPsRestricted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 725
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 728
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 729
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 731
    const-string v5, "GSM"

    const-string v6, "(fix?) We\'re on the simulator; assuming data is connected"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 804
    :goto_1
    return v5

    :cond_0
    move-object v6, p1

    .line 720
    goto :goto_0

    .line 735
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v2

    .line 736
    .local v2, gprsState:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .line 738
    .local v0, desiredPowerState:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->findFreePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v3

    .line 739
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    if-nez v3, :cond_5

    move v1, v7

    .line 741
    .local v1, freepdpAvailable:Z
    :goto_2
    if-eqz v1, :cond_8

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isInactive()Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v2, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->noAutoAttach:Z

    if-eqz v5, :cond_8

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isDataAllowed()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    if-nez v5, :cond_8

    if-eqz v0, :cond_8

    .line 751
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 752
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->buildWaitingApns()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    .line 753
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 754
    const-string v5, "No APN found"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 755
    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    move v5, v7

    .line 756
    goto :goto_1

    .end local v1           #freepdpAvailable:Z
    :cond_5
    move v1, v8

    .line 739
    goto :goto_2

    .line 759
    .restart local v1       #freepdpAvailable:Z
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create from allApns : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 764
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setup waitngApns : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 766
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setupData(Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_1

    .line 769
    :cond_8
    const-string/jumbo v4, "pdp is null"

    .line 770
    .local v4, pdpState:Ljava/lang/String;
    if-eqz v3, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v5, :cond_9

    .line 771
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getStateAsString()Ljava/lang/String;

    move-result-object v4

    .line 772
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trySetupData: Not ready for data: pdpslotAvailable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dataState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gprsState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " UMTS="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " phoneState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isDataAllowed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isDataAllowed()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dataEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " roaming="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dataOnRoamingEnable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ps restricted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " desiredPowerState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MasterDataEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 787
    if-eqz v3, :cond_a

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v5, :cond_b

    .line 788
    :cond_a
    const-string/jumbo v5, "pdp == null || mGsmPhone ==null || phone==null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 789
    if-nez v3, :cond_b

    iget v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    const/4 v6, 0x3

    if-le v5, v6, :cond_b

    .line 790
    const-string v5, " enableCount > 3, But it\'s no problem.. I guess"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 794
    :cond_b
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_c

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v5

    if-nez v5, :cond_c

    .line 795
    const-string/jumbo v5, "put into pending list because of 2G network"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 796
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enable new APN: mCurrReqApnType("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 797
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 798
    const-string v5, "There are no same APN in pending list"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 799
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->addPendingApnRequest(Ljava/lang/String;)V

    :cond_c
    :goto_3
    move v5, v7

    .line 804
    goto/16 :goto_1

    .line 801
    :cond_d
    const-string v5, "There are same APN in pending list, So not added in mPendingRequestedApns"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private trySetupNextData()V
    .locals 4

    .prologue
    const-string v3, ")"

    .line 809
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getNextPendingApnRequest()Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, nextRequestedApnType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 811
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trySetupNextData: mCurrReqApnType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 813
    const/4 v1, 0x5

    const-string/jumbo v2, "pendingApnEnabled"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trySetupNextData: Nothing to try(mCurrReqApnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateMultiplePdpCapacity()V
    .locals 6

    .prologue
    .line 2454
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 2456
    .local v2, operator:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2457
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 2460
    .local v1, netType:I
    const/4 v4, 0x3

    if-lt v1, v4, :cond_1

    .line 2461
    const/4 v3, 0x2

    .line 2465
    .local v3, type:I
    :goto_0
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/PdpContextTable;->getContextNumber(Ljava/lang/String;I)I

    move-result v0

    .line 2467
    .local v0, contextNum:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " supports "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "pdp context"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2469
    const/4 v4, 0x2

    if-ge v0, v4, :cond_2

    .line 2470
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsSimSupportMultiPdp:Z

    .line 2474
    .end local v0           #contextNum:I
    .end local v1           #netType:I
    .end local v3           #type:I
    :cond_0
    :goto_1
    return-void

    .line 2463
    .restart local v1       #netType:I
    :cond_1
    const/4 v3, 0x1

    .restart local v3       #type:I
    goto :goto_0

    .line 2472
    .restart local v0       #contextNum:I
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsSimSupportMultiPdp:Z

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataStateChanged(Landroid/os/Handler;)V

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForGprsAttached(Landroid/os/Handler;)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForGprsDetached(Landroid/os/Handler;)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnObserver:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 449
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->destroyAllPdpList()V

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->dispose()V

    .line 452
    return-void
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 1694
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1695
    .local v0, id:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1696
    const/4 v1, 0x3

    .line 1715
    :goto_0
    monitor-exit p0

    return v1

    .line 1699
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), isApnTypeActive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1702
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1703
    const-string/jumbo v1, "type not available"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1704
    const/4 v1, 0x2

    goto :goto_0

    .line 1710
    :cond_1
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V

    .line 1712
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 1713
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1715
    goto :goto_0

    .line 1694
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 455
    const-string v0, "GSM"

    const-string v1, "GsmMultiDataConnectionTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void
.end method

.method protected getActiveApnString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    .line 520
    :cond_0
    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    .line 512
    .local v0, result:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 509
    .end local v0           #result:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 510
    .restart local v0       #result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getActiveState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method public getAllDataConnections()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 639
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 640
    .local v0, pdps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataConnection;>;"
    return-object v0
.end method

.method protected getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "apnType"

    .prologue
    .line 1020
    if-nez p1, :cond_0

    .line 1021
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    if-eqz v4, :cond_2

    .line 1022
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v4

    .line 1033
    :goto_0
    return-object v4

    .line 1025
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 1026
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 1027
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1028
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1033
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "apnType"

    .prologue
    .line 1003
    if-nez p1, :cond_0

    .line 1004
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    if-eqz v4, :cond_2

    .line 1005
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v4

    .line 1016
    :goto_0
    return-object v4

    .line 1008
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 1009
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 1010
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1011
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1016
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "apnType"

    .prologue
    .line 969
    if-nez p1, :cond_0

    .line 970
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    if-eqz v4, :cond_2

    .line 971
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getInterface()Ljava/lang/String;

    move-result-object v4

    .line 982
    :goto_0
    return-object v4

    .line 974
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 975
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 976
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 977
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getInterface()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 982
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "apnType"

    .prologue
    .line 986
    if-nez p1, :cond_0

    .line 987
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    if-eqz v4, :cond_2

    .line 988
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    .line 999
    :goto_0
    return-object v4

    .line 991
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 992
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 993
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 994
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 999
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 476
    const/4 v1, 0x0

    .line 477
    .local v1, activating:Z
    const/4 v3, 0x0

    .line 479
    .local v3, disconnecting:Z
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    .line 480
    .local v2, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v5, v0

    .line 482
    .local v5, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 483
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 501
    .end local v2           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v5           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_1
    return-object v6

    .line 485
    .restart local v2       #conn:Lcom/android/internal/telephony/DataConnection;
    .restart local v5       #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActivating()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 486
    const/4 v1, 0x1

    .line 488
    :cond_2
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isDisconnecting()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 489
    const/4 v3, 0x1

    goto :goto_0

    .line 492
    .end local v2           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v5           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_3
    if-ne v1, v7, :cond_4

    if-ne v3, v7, :cond_4

    .line 493
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1

    .line 494
    :cond_4
    if-ne v1, v7, :cond_5

    if-nez v3, :cond_5

    .line 495
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1

    .line 496
    :cond_5
    if-nez v1, :cond_6

    if-ne v3, v7, :cond_6

    .line 497
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1

    .line 498
    :cond_6
    if-nez v1, :cond_7

    if-nez v3, :cond_7

    .line 499
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1

    .line 501
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v4, "psRestrictEnabled"

    .line 2363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSMDataConnTrack handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "park : handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2367
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_0

    .line 2368
    const-string v0, "Ignore GSM msgs since GSM phone is inactive"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2447
    :goto_0
    return-void

    .line 2372
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2444
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2374
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_0

    .line 2378
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onGprsDetached()V

    goto :goto_0

    .line 2382
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onGprsAttached()V

    goto :goto_0

    .line 2386
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onPdpStateChanged(Landroid/os/AsyncResult;Z)V

    goto :goto_0

    .line 2390
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onPdpStateChanged(Landroid/os/AsyncResult;Z)V

    goto :goto_0

    .line 2394
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onPollPdp()V

    goto :goto_0

    .line 2398
    :sswitch_6
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPingTestActive:Z

    .line 2399
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    .line 2403
    :sswitch_7
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPingTestActive:Z

    .line 2404
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->doRecovery()V

    goto :goto_0

    .line 2408
    :sswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onApnChanged()V

    goto :goto_0

    .line 2418
    :sswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DSAC DEB] EVENT_PS_RESTRICT_ENABLED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2419
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    .line 2420
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    goto :goto_0

    .line 2428
    :sswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DSAC DEB] EVENT_PS_RESTRICT_DISABLED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2429
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    .line 2430
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1

    .line 2431
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    .line 2433
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_2

    .line 2434
    const-string/jumbo v0, "psRestrictEnabled"

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 2435
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 2436
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 2438
    :cond_2
    const-string/jumbo v0, "psRestrictEnabled"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2372
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6 -> :sswitch_3
        0x7 -> :sswitch_5
        0xb -> :sswitch_4
        0x13 -> :sswitch_1
        0x1a -> :sswitch_2
        0x1b -> :sswitch_6
        0x1c -> :sswitch_7
        0x1d -> :sswitch_8
        0x20 -> :sswitch_9
        0x21 -> :sswitch_a
    .end sparse-switch
.end method

.method protected isApnTypeActive(Ljava/lang/String;)Z
    .locals 7
    .parameter "type"

    .prologue
    .line 547
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 548
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 549
    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isApnTypeActive function type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "park: isApnTypeActive() type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 555
    const/4 v4, 0x1

    .line 559
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 618
    const-string v2, "bip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 619
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->fetchBipApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 632
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 619
    goto :goto_0

    .line 625
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 626
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 627
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 628
    goto :goto_0

    .end local v0           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    move v2, v3

    .line 632
    goto :goto_0
.end method

.method public isDataConnectionAsDesired()Z
    .locals 2

    .prologue
    .line 533
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 535
    .local v0, roaming:Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsPsRestricted:Z

    if-nez v1, :cond_1

    .line 540
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v1

    .line 542
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2450
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmMultiDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    return-void
.end method

.method protected onCleanUpConnection(ZLjava/lang/String;)V
    .locals 0
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 2059
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 2060
    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v8, "gsm.defaultpdpcontext.active"

    const-string v13, "default"

    .line 1816
    const/4 v6, 0x0

    .line 1817
    .local v6, reason:Ljava/lang/String;
    iget-object v7, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1818
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v6           #reason:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1821
    .restart local v6       #reason:Ljava/lang/String;
    :cond_0
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_6

    .line 1822
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v2, v0

    .line 1823
    .local v2, connectedPdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    if-eqz v2, :cond_4

    .line 1824
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 1825
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1832
    :goto_0
    const-string v7, "default"

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1833
    const-string/jumbo v7, "onDataSetupComplete gsm.defaultpdpcontext.active == true"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1834
    const-string v7, "gsm.defaultpdpcontext.active"

    const-string/jumbo v7, "true"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-nez v7, :cond_1

    .line 1837
    const-string v7, "PREFERED APN is null"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1838
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1839
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget v7, v7, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setPreferredApn(I)V

    .line 1847
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->printProperties(Landroid/os/AsyncResult;)V

    .line 1849
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->notifyDefaultData(Ljava/lang/String;)V

    .line 1851
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 1852
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1857
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupNextData()V

    .line 1913
    .end local v2           #connectedPdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_3
    :goto_2
    return-void

    .line 1828
    .restart local v2       #connectedPdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_4
    const-string v7, "ar.result == null: This should not happen"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1842
    :cond_5
    const-string/jumbo v7, "onDataSetupComplete gsm.defaultpdpcontext.active == false"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1843
    const-string v7, "gsm.defaultpdpcontext.active"

    const-string v7, "false"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1861
    .end local v2           #connectedPdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_6
    const/4 v3, 0x0

    .line 1864
    .local v3, failedPdpConnection:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/DataConnection$FailResult;

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/DataConnection$FailResult;

    move-object v4, v0

    .line 1865
    .local v4, failureResult:Lcom/android/internal/telephony/DataConnection$FailResult;
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection$FailResult;->getFailCause()Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v1

    .line 1866
    .local v1, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection$FailResult;->getConnection()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .line 1868
    if-eqz v3, :cond_7

    .line 1869
    const-string v7, "Receive Failed result"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1870
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 1871
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1874
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PDP setup failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1877
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isEventLoggable()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1878
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    .line 1879
    .local v5, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v7, 0xc3b9

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v9

    :goto_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1885
    .end local v5           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_8
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1886
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1887
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    const-string v8, "default"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1888
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v8, "apnFailed"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1889
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onEnableApn(II)V

    goto/16 :goto_2

    .line 1879
    .restart local v5       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_9
    const/4 v9, -0x1

    goto :goto_3

    .line 1894
    .end local v5           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eq v7, v12, :cond_b

    .line 1895
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing waiting apns: current size("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1896
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1899
    :cond_b
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1901
    :cond_c
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V

    .line 1904
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupNextData()V

    goto/16 :goto_2

    .line 1907
    :cond_d
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1910
    const/4 v7, 0x5

    invoke-virtual {p0, v7, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x1388

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2
.end method

.method protected onDisconnectDone(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "ar"

    .prologue
    const/4 v6, 0x0

    const-string v8, "gsm.defaultpdpcontext.active"

    const-string v7, "false"

    const-string v5, "default"

    .line 1919
    const/4 v2, 0x0

    .line 1920
    .local v2, reason:Ljava/lang/String;
    const-string v3, "EVENT_DISCONNECT_DONE"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1921
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1922
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #reason:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1927
    .restart local v2       #reason:Ljava/lang/String;
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 1928
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/DataConnection$DisconnectResult;

    if-eqz v3, :cond_5

    .line 1929
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/DataConnection$DisconnectResult;

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/DataConnection$DisconnectResult;

    move-object v1, v0

    .line 1930
    .local v1, disconnectResult:Lcom/android/internal/telephony/DataConnection$DisconnectResult;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$DisconnectResult;->getConnection()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 1931
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$DisconnectResult;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1943
    .end local v1           #disconnectResult:Lcom/android/internal/telephony/DataConnection$DisconnectResult;
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1944
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1946
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->resetSynchronously()V

    .line 1948
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1949
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1952
    :cond_1
    const-string v3, "default"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1953
    const-string/jumbo v3, "onDisconnectDone gsm.defaultpdpcontext.active == false"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1954
    const-string v3, "gsm.defaultpdpcontext.active"

    const-string v3, "false"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAllDataConnectionInactive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1962
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1963
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    .line 1966
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->setDormancyPollState(Z)V

    .line 1967
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1970
    const-string v3, "gsm.defaultpdpcontext.active"

    const-string v3, "false"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDisconnectDone mCleanupCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1975
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    if-lez v3, :cond_3

    .line 1976
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    .line 1981
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsSimSupportMultiPdp:Z

    if-eqz v3, :cond_9

    .line 1982
    const-string v3, "default"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1984
    const-string v3, "default"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->addPendingApnRequest(Ljava/lang/String;)V

    .line 1985
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupNextData()V

    .line 2000
    :cond_4
    :goto_2
    return-void

    .line 1934
    :cond_5
    const-string v3, "ar.result is not DisconnectResult instance"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1935
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 1936
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    goto/16 :goto_0

    .line 1940
    :cond_6
    const-string v3, "ar.result == null: This should not happen"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1957
    :cond_7
    const-string/jumbo v3, "onDisconnectDone isApnTypeActive(Phone.APN_TYPE_DEFAULT) == true"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1991
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupNextData()V

    goto :goto_2

    .line 1995
    :cond_9
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAllDataConnectionInactive()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCleanupCount:I

    if-nez v3, :cond_4

    .line 1997
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_2
.end method

.method protected declared-synchronized onEnableApn(II)V
    .locals 15
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    const-string v11, ")"

    const-string v11, "default"

    .line 1503
    monitor-enter p0

    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_APN_ENABLE_REQUEST "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1504
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " dataEnabled = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v12, v12, p1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", enabledCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isApnTypeActive = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1519
    iget v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-le v11, v13, :cond_1

    .line 1520
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DataConnection;

    .line 1521
    .local v3, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v8, v0

    .line 1522
    .local v8, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 1523
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pdp list in FM by park : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getStateAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", apn("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "), enabledCount : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1503
    .end local v3           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1527
    :cond_1
    move/from16 v0, p2

    move v1, v13

    if-ne v0, v1, :cond_5

    .line 1528
    :try_start_1
    iget v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-nez v11, :cond_2

    .line 1529
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->clearAllPendingApnRequest()V

    .line 1532
    :cond_2
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v11, v11, p1

    if-nez v11, :cond_3

    .line 1533
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v12, 0x1

    aput-boolean v12, v11, p1

    .line 1534
    iget v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 1535
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pdp list in FM by park : enabledCount++ , enabledCount : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1537
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v9

    .line 1538
    .local v9, type:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1539
    iput-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1540
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onEnableNewApn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1634
    .end local v9           #type:Ljava/lang/String;
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 1545
    :cond_5
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v11, v11, p1

    if-eqz v11, :cond_4

    .line 1546
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v12, 0x0

    aput-boolean v12, v11, p1

    .line 1547
    iget v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    sub-int/2addr v11, v13

    iput v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 1548
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pdp list in FM by park : enabledCount-- , enabledCount : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1549
    iget v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-nez v11, :cond_6

    .line 1550
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->clearAllPendingApnRequest()V

    .line 1551
    const/4 v11, 0x1

    const-string v12, "dataDisabled"

    invoke-virtual {p0, v11, v12}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    goto :goto_1

    .line 1553
    :cond_6
    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsSimSupportMultiPdp:Z

    if-nez v11, :cond_7

    .line 1554
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v12, 0x0

    aget-boolean v11, v11, v12

    if-ne v11, v13, :cond_4

    const-string v11, "default"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "default"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isDuringActionOnApnType(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1557
    const-string v11, "default"

    iput-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1558
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onEnableNewApn()V

    goto :goto_1

    .line 1565
    :cond_7
    const/4 v7, 0x0

    .line 1566
    .local v7, multipleWAP:I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DataConnection;

    .line 1567
    .restart local v3       #conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v8, v0

    .line 1568
    .restart local v8       #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    const-string v12, "cmwap"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1569
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1578
    .end local v3           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v8           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_9
    const/4 v6, 0x0

    .line 1579
    .local v6, idx:I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DataConnection;

    .line 1580
    .restart local v3       #conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v8, v0

    .line 1581
    .restart local v8       #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v11

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    move v2, v13

    .line 1584
    .local v2, canHandle:Z
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "idx "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getStateAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", apn("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "), "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "canHandle("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isInactive()Z

    move-result v11

    if-nez v11, :cond_10

    if-eqz v2, :cond_10

    .line 1590
    const/4 v10, 0x0

    .line 1591
    .local v10, usedByOther:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    const/16 v11, 0x10

    if-ge v4, v11, :cond_a

    .line 1592
    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_d

    .line 1593
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v11

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v11, v11, v4

    if-eqz v11, :cond_d

    .line 1595
    const-string v11, "Apn used by other connection"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1596
    const/4 v10, 0x1

    .line 1602
    :cond_a
    if-nez v10, :cond_b

    .line 1603
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isDisconnecting()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1604
    const-string v11, "Already in disconnecting state"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1621
    .end local v4           #i:I
    .end local v10           #usedByOther:Z
    :cond_b
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 1622
    goto/16 :goto_3

    .end local v2           #canHandle:Z
    :cond_c
    move v2, v14

    .line 1581
    goto/16 :goto_4

    .line 1591
    .restart local v2       #canHandle:Z
    .restart local v4       #i:I
    .restart local v10       #usedByOther:Z
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1607
    :cond_e
    if-ge v13, v7, :cond_f

    .line 1608
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fakedisconnect pdp("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1609
    const/16 v11, 0x19

    const-string v12, "apnDisabled"

    invoke-virtual {p0, v11, v12}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->fakedisconnect(Landroid/os/Message;)V

    goto :goto_6

    .line 1613
    :cond_f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Disconnect pdp("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1614
    const/16 v11, 0x19

    const-string v12, "apnDisabled"

    invoke-virtual {p0, v11, v12}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->disconnect(Landroid/os/Message;)V

    goto :goto_6

    .line 1619
    .end local v4           #i:I
    .end local v10           #usedByOther:Z
    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "idx "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pass!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 1625
    .end local v2           #canHandle:Z
    .end local v3           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v8           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_11
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v12, 0x0

    aget-boolean v11, v11, v12

    if-ne v11, v13, :cond_4

    const-string v11, "default"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "default"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isDuringActionOnApnType(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1628
    const-string v11, "default"

    iput-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1629
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onEnableNewApn()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method protected onEnableNewApn()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v3, "Enable new APN: mCurrReqApnType("

    const-string v2, ")"

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable new APN: mRequestedApnType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1643
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsSimSupportMultiPdp:Z

    if-nez v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    .line 1646
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->clearAllPendingApnRequest()V

    .line 1647
    const-string v0, "apnSwitched"

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1681
    :goto_0
    return-void

    .line 1654
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPendingRequestedApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1655
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isDuringActionOnApnType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isDuringActionOnApnType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1660
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->addPendingApnRequest(Ljava/lang/String;)V

    .line 1661
    const-string v0, "Already active or action in progress(put into pending list)"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable new APN: mCurrReqApnType("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1665
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1666
    const-string/jumbo v0, "put into pending list because of 2G network"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable new APN: mCurrReqApnType("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1668
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->addPendingApnRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 1670
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable new APN: mCurrReqApnType("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1672
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->enableNewApnImmediate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1677
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->addPendingApnRequest(Ljava/lang/String;)V

    .line 1678
    const-string/jumbo v0, "put into pending list"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable new APN: mCurrReqApnType("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onGprsDetached()V
    .locals 4

    .prologue
    const-string v3, "gprsDetached"

    .line 668
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    .line 671
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->setDormancyPollState(Z)V

    .line 672
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mFastDormPollNetStat:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 675
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gprsDetached"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 680
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 681
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 682
    const-string v1, "gprsDetached"

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 683
    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 684
    return-void
.end method

.method protected onPdpStateChanged(Landroid/os/AsyncResult;Z)V
    .locals 14
    .parameter "ar"
    .parameter "explicitPoll"

    .prologue
    const v13, 0xc3bd

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 1095
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    .line 1097
    .local v6, pdpStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1112
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    .line 1113
    .local v2, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v5, v0

    .line 1114
    .local v5, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1117
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCid()I

    move-result v1

    .line 1119
    .local v1, cid:I
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpStatesHasCID(Ljava/util/ArrayList;I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1123
    const-string v7, "PDP connection has dropped. Reconnecting"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1126
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 1127
    .local v4, loc:Landroid/telephony/gsm/GsmCellLocation;
    new-array v7, v12, [Ljava/lang/Object;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v8

    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1131
    const-string/jumbo v7, "pdpDropped"

    invoke-direct {p0, v9, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v8, v10

    .line 1127
    goto :goto_2

    .line 1133
    .end local v4           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_4
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->pdpStatesHasActiveCID(Ljava/util/ArrayList;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1138
    if-nez p2, :cond_5

    .line 1140
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xb

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->getPDPContextList(Landroid/os/Message;)V

    .line 1143
    const/16 p2, 0x1

    goto :goto_1

    .line 1145
    :cond_5
    const-string v7, "PDP connection has dropped (active=false case).  Reconnecting"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1149
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 1150
    .restart local v4       #loc:Landroid/telephony/gsm/GsmCellLocation;
    new-array v7, v12, [Ljava/lang/Object;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v8

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1154
    const-string/jumbo v7, "pdpDropped"

    invoke-direct {p0, v9, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v8, v10

    .line 1150
    goto :goto_3
.end method

.method protected onPollPdp()V
    .locals 3

    .prologue
    .line 2016
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPDPContextList(Landroid/os/Message;)V

    .line 2019
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2021
    :cond_0
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1766
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1769
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1770
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1772
    const-string v0, "GSM"

    const-string v1, "We\'re on the simulator; assuming data is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAllDataConnectionInactive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1776
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1778
    :cond_1
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1783
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1784
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 1786
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1789
    const-string v0, "GSM"

    const-string v1, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :goto_0
    return-void

    .line 1791
    :cond_0
    const-string v0, "Radio is off and clean up all connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1793
    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->addPendingApnRequest(Ljava/lang/String;)V

    .line 1794
    const-string/jumbo v0, "radioTurnedOff"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onRecordsLoaded()V
    .locals 2

    .prologue
    .line 1492
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->updateMultiplePdpCapacity()V

    .line 1494
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->createAllApnList()V

    .line 1495
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 1496
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1498
    :cond_0
    const/4 v0, 0x5

    const-string/jumbo v1, "simLoaded"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1499
    return-void
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 2007
    const-string v1, "EVENT_RESET_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2008
    const/4 v0, 0x0

    .line 2009
    .local v0, reason:Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2010
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 2012
    .restart local v0       #reason:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 2013
    return-void
.end method

.method protected onRoamingOff()V
    .locals 1

    .prologue
    .line 1752
    const-string/jumbo v0, "roamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1753
    return-void
.end method

.method protected onRoamingOn()V
    .locals 3

    .prologue
    const-string/jumbo v2, "roamingOn"

    .line 1757
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1758
    const-string/jumbo v0, "roamingOn"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1763
    :goto_0
    return-void

    .line 1760
    :cond_0
    const-string v0, "Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1761
    const/4 v0, 0x1

    const-string/jumbo v1, "roamingOn"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onSetDataEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1738
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1739
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 1740
    if-eqz p1, :cond_1

    .line 1741
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1742
    const-string v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 1748
    :cond_0
    :goto_0
    return-void

    .line 1744
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->clearAllPendingApnRequest()V

    .line 1745
    const/4 v0, 0x1

    const-string v1, "dataDisabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 1
    .parameter "reason"

    .prologue
    .line 1734
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onVoiceCallEnded()V
    .locals 3

    .prologue
    const-string v2, "2GVoiceCallEnded"

    .line 2036
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2037
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2038
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    .line 2039
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "2GVoiceCallEnded"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 2048
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupNextData()V

    .line 2056
    :goto_1
    return-void

    .line 2042
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->resetPollStats()V

    goto :goto_0

    .line 2051
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 2052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 2054
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method protected onVoiceCallStarted()V
    .locals 2

    .prologue
    .line 2024
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2025
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    .line 2026
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "2GVoiceCallStarted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 2031
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mCurrentRequestedApnType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->addPendingApnRequest(Ljava/lang/String;)V

    .line 2033
    :cond_0
    return-void
.end method

.method protected restartRadio()V
    .locals 4

    .prologue
    const-string/jumbo v3, "net.ppp.reset-by-timeout"

    .line 1255
    const-string v1, "************TURN OFF RADIO**************"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1256
    const/4 v1, 0x1

    const-string/jumbo v2, "radioTurnedOff"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1257
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely()V

    .line 1266
    const-string/jumbo v1, "net.ppp.reset-by-timeout"

    const-string v1, "0"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1267
    .local v0, reset:I
    const-string/jumbo v1, "net.ppp.reset-by-timeout"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, p1, :cond_0

    .line 461
    const v0, 0xc3c1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 462
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 469
    :cond_1
    return-void
.end method

.method protected startNetStatPoll()V
    .locals 1

    .prologue
    .line 1233
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isAnyApnTypeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPingTestActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 1234
    const-string v0, "Start poll NetStat"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1235
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->resetPollStats()V

    .line 1236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    .line 1237
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1240
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1242
    return-void
.end method

.method protected stopNetStatPoll()V
    .locals 1

    .prologue
    .line 1245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    .line 1248
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1249
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1250
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1251
    const-string v0, "Stop poll NetStat"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1252
    return-void
.end method
