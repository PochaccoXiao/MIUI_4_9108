.class Lcom/android/server/UsbStorageService;
.super Landroid/os/storage/IUsbStorageService$Stub;
.source "UsbStorageService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UsbStorageService$VoldResponseCode;,
        Lcom/android/server/UsbStorageService$VolumeState;,
        Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;,
        Lcom/android/server/UsbStorageService$UsbStorageServiceHandler;,
        Lcom/android/server/UsbStorageService$UsbStorageMap;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "UsbStorageService"

.field private static final USBSTORAGE_TAG:Ljava/lang/String; = "UsbStorageConnector"


# instance fields
.field private mBooted:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReady:Z

.field private mSafeUnmountedUsbHost:Z

.field private final mUsbStorageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/UsbStorageService$UsbStorageMap;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkQueueHandler:Landroid/os/Handler;

.field private final mWorkQueueHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v4, "UsbStorageService"

    const-string v7, "UsbStorageConnector"

    .line 571
    invoke-direct {p0}, Landroid/os/storage/IUsbStorageService$Stub;-><init>()V

    .line 71
    iput-boolean v6, p0, Lcom/android/server/UsbStorageService;->mBooted:Z

    .line 72
    iput-boolean v6, p0, Lcom/android/server/UsbStorageService;->mReady:Z

    .line 74
    iput-boolean v6, p0, Lcom/android/server/UsbStorageService;->mSafeUnmountedUsbHost:Z

    .line 76
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    .line 135
    new-instance v2, Lcom/android/server/UsbStorageService$2;

    invoke-direct {v2, p0}, Lcom/android/server/UsbStorageService$2;-><init>(Lcom/android/server/UsbStorageService;)V

    iput-object v2, p0, Lcom/android/server/UsbStorageService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 602
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/UsbStorageService;->mListeners:Ljava/util/ArrayList;

    .line 572
    const-string v2, "UsbStorageService"

    const-string v2, "UsbStorageService :: "

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iput-object p1, p0, Lcom/android/server/UsbStorageService;->mContext:Landroid/content/Context;

    .line 577
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 578
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 580
    iget-object v2, p0, Lcom/android/server/UsbStorageService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 582
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "UsbStorageServiceEvent"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/UsbStorageService;->mWorkQueueHandlerThread:Landroid/os/HandlerThread;

    .line 583
    iget-object v2, p0, Lcom/android/server/UsbStorageService;->mWorkQueueHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 584
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/UsbStorageService;->mWorkQueueHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/UsbStorageService;->mWorkQueueHandler:Landroid/os/Handler;

    .line 586
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "UsbStorageService"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/UsbStorageService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 587
    iget-object v2, p0, Lcom/android/server/UsbStorageService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 588
    new-instance v2, Lcom/android/server/UsbStorageService$UsbStorageServiceHandler;

    iget-object v3, p0, Lcom/android/server/UsbStorageService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/UsbStorageService$UsbStorageServiceHandler;-><init>(Lcom/android/server/UsbStorageService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/UsbStorageService;->mHandler:Landroid/os/Handler;

    .line 590
    new-instance v2, Lcom/android/server/NativeDaemonConnector;

    const-string v3, "usbstorage"

    const/16 v4, 0x64

    const-string v5, "UsbStorageConnector"

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/UsbStorageService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 592
    iput-boolean v6, p0, Lcom/android/server/UsbStorageService;->mSafeUnmountedUsbHost:Z

    .line 594
    iput-boolean v6, p0, Lcom/android/server/UsbStorageService;->mReady:Z

    .line 595
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/UsbStorageService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "UsbStorageConnector"

    invoke-direct {v1, v2, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 596
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 597
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/UsbStorageService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/server/UsbStorageService;->mReady:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/UsbStorageService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/server/UsbStorageService;->mBooted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/UsbStorageService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/UsbStorageService;->waitForReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/UsbStorageService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/UsbStorageService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/UsbStorageService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/UsbStorageService;->updatePartitionsList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/UsbStorageService;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/UsbStorageService;->doMountVolume(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/UsbStorageService;ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UsbStorageService;->onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/UsbStorageService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/UsbStorageService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private final debugUsbStorageMap(Ljava/lang/String;)V
    .locals 9
    .parameter "tag"

    .prologue
    const-string v3, "UsbStorageService"

    .line 556
    iget-object v3, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 557
    :try_start_0
    iget-object v4, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, i:I
    iget-object v4, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 560
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 561
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/UsbStorageService$UsbStorageMap;

    .line 562
    .local v2, map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    const-string v4, "UsbStorageService"

    const-string v5, "%s :: %02d::%s [%s] %s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, v2, Lcom/android/server/UsbStorageService$UsbStorageMap;->label:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, v2, Lcom/android/server/UsbStorageService$UsbStorageMap;->state:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, v2, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    add-int/lit8 v0, v0, 0x1

    .line 564
    goto :goto_0

    .line 566
    .end local v0           #i:I
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v2           #map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    :cond_0
    const-string v4, "UsbStorageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "debugUsbStorageMap -> \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' empty"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_1
    monitor-exit v3

    .line 569
    return-void

    .line 568
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .locals 10
    .parameter "path"

    .prologue
    const-string v9, "doMountVolume :: path = "

    const-string v8, "UsbStorageService"

    .line 491
    const/4 v2, 0x0

    .line 493
    .local v2, rc:I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v3

    .line 495
    .local v3, tmpFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 496
    const-string v4, "UsbStorageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " create directory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 503
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/UsbStorageService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "volume mount %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_1
    return v2

    .line 498
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 499
    const-string v4, "UsbStorageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not directory !!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 505
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 506
    .local v0, code:I
    const/16 v4, 0x191

    if-ne v0, v4, :cond_2

    .line 507
    const-string v4, "UsbStorageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doMountVolume :: path = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",result = OperationFailedNoMedia"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v2, -0x2

    goto :goto_1

    .line 509
    :cond_2
    const/16 v4, 0x192

    if-ne v0, v4, :cond_3

    .line 510
    const-string v4, "UsbStorageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doMountVolume :: path = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",result = OperationFailedMediaBlank"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v4, "nofs"

    invoke-direct {p0, p1, v4}, Lcom/android/server/UsbStorageService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v2, -0x3

    goto :goto_1

    .line 513
    :cond_3
    const/16 v4, 0x193

    if-ne v0, v4, :cond_4

    .line 514
    const-string v4, "UsbStorageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doMountVolume :: path = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",result = OperationFailedMediaCorrupt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v4, "unmountable"

    invoke-direct {p0, p1, v4}, Lcom/android/server/UsbStorageService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v2, -0x4

    goto/16 :goto_1

    .line 518
    :cond_4
    const-string v4, "UsbStorageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doMountVolume :: path = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",result = OperationFailedInternalError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v2, -0x1

    goto/16 :goto_1
.end method

.method private declared-synchronized doMountVolume(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "path"
    .parameter "with"

    .prologue
    .line 532
    monitor-enter p0

    :try_start_0
    const-string v3, "UsbStorageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doMountVolume :: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", with = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v3, "disk"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, bMounted:Z
    iget-object v3, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 537
    :try_start_1
    iget-object v4, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 538
    iget-object v4, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 539
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 540
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/UsbStorageService$UsbStorageMap;

    .line 541
    .local v2, map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    iget-object v4, v2, Lcom/android/server/UsbStorageService$UsbStorageMap;->label:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/server/UsbStorageService$UsbStorageMap;->state:Ljava/lang/String;

    const-string v5, "mounted"

    if-eq v4, v5, :cond_0

    .line 542
    iget-object v4, v2, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/UsbStorageService;->doMountVolume(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 543
    const/4 v0, 0x1

    goto :goto_0

    .line 550
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v2           #map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    .end local v0           #bMounted:Z
    :cond_2
    const/4 v3, 0x0

    monitor-exit p0

    return v3

    .line 550
    .restart local v0       #bMounted:Z
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 532
    .end local v0           #bMounted:Z
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private doUnmountVolume(Ljava/lang/String;Z)I
    .locals 11
    .parameter "path"
    .parameter "force"

    .prologue
    const/16 v10, 0x194

    const/4 v5, 0x1

    const/4 v9, 0x0

    const-string v8, "UsbStorageService"

    .line 707
    const-string v3, "UsbStorageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doUnmountVolume :: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {p0, p1}, Lcom/android/server/UsbStorageService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v10

    .line 732
    :goto_0
    return v3

    .line 713
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 715
    const/4 v2, 0x0

    .line 716
    .local v2, rc:I
    iput-boolean v5, p0, Lcom/android/server/UsbStorageService;->mSafeUnmountedUsbHost:Z

    .line 719
    :try_start_0
    iget-object v3, p0, Lcom/android/server/UsbStorageService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume unmount %s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    if-eqz p2, :cond_1

    const-string v7, " force"

    :goto_1
    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move v3, v9

    .line 721
    goto :goto_0

    .line 719
    :cond_1
    const-string v7, ""
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 722
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 723
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 724
    .local v0, code:I
    if-ne v0, v10, :cond_2

    .line 725
    const-string v3, "UsbStorageService"

    const-string v3, "doUnmountVolume :: result = OperationFailedStorageNotMounted"

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v3, -0x5

    goto :goto_0

    .line 727
    :cond_2
    const/16 v3, 0x195

    if-ne v0, v3, :cond_3

    .line 728
    const-string v3, "UsbStorageService"

    const-string v3, "doUnmountVolume :: result = OperationFailedStorageBusy"

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v3, -0x7

    goto :goto_0

    .line 731
    :cond_3
    const-string v3, "UsbStorageService"

    const-string v3, "doUnmountVolume :: result = OperationFailedInternalError"

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private isUsbStorageConnected(Ljava/lang/String;)Z
    .locals 13
    .parameter "state"

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "UsbStorageService"

    .line 798
    :try_start_0
    iget-object v7, p0, Lcom/android/server/UsbStorageService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "volume connected"

    invoke-virtual {v7, v8}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 804
    .local v5, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 805
    .local v3, line:Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 806
    .local v6, tok:[Ljava/lang/String;
    array-length v7, v6

    if-ge v7, v12, :cond_0

    .line 807
    const-string v7, "UsbStorageService"

    const-string v7, "Malformed response to volume connected"

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 832
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #tok:[Ljava/lang/String;
    :goto_0
    return v7

    .line 799
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 800
    .local v1, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "UsbStorageService"

    const-string v7, "Failed to read response to volume connected"

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 801
    goto :goto_0

    .line 813
    .end local v1           #ex:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #tok:[Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 819
    .local v0, code:I
    const/16 v7, 0xd8

    if-ne v0, v7, :cond_2

    .line 820
    const-string v7, "enabled"

    aget-object v8, v6, v12

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 821
    const-string v7, "UsbStorageService"

    const-string v7, " :::: isUsbStorageConnected :: result = true"

    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 822
    goto :goto_0

    .line 814
    .end local v0           #code:I
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 815
    .local v4, nfe:Ljava/lang/NumberFormatException;
    const-string v7, "UsbStorageService"

    const-string v7, "isUsbStorageConnected :: Error parsing code %s"

    new-array v8, v9, [Ljava/lang/Object;

    aget-object v9, v6, v10

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 816
    goto :goto_0

    .line 824
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .restart local v0       #code:I
    :cond_1
    const-string v7, "UsbStorageService"

    const-string v7, " :::: isUsbStorageConnected :: result = false"

    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 825
    goto :goto_0

    .line 827
    :cond_2
    const-string v7, "UsbStorageService"

    const-string v7, "isUsbStorageConnected :: Unexpected response code %d"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 828
    goto :goto_0

    .line 831
    .end local v0           #code:I
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :cond_3
    const-string v7, "UsbStorageService"

    const-string v7, "isUsbStorageConnected :: Got an empty response"

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 832
    goto :goto_0
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter "label"
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const-string v6, "file://"

    const-string v5, "UsbStorageService"

    .line 442
    invoke-virtual {p0, p2}, Lcom/android/server/UsbStorageService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, vs:Ljava/lang/String;
    const/4 v0, 0x0

    .line 445
    .local v0, in:Landroid/content/Intent;
    const/4 v2, -0x1

    if-ne p4, v2, :cond_2

    .line 483
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 484
    iget-object v2, p0, Lcom/android/server/UsbStorageService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 486
    :cond_1
    :goto_1
    return-void

    .line 446
    :cond_2
    if-eqz p4, :cond_0

    .line 448
    const/4 v2, 0x1

    if-ne p4, v2, :cond_4

    .line 449
    const-string v2, "bad_removal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "nofs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "unmountable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 452
    const-string v2, "unmounted"

    invoke-direct {p0, p2, v2}, Lcom/android/server/UsbStorageService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v2, "UsbStorageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending intent :: ACTION_MEDIA_UNMOUNTED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v0, Landroid/content/Intent;

    .end local v0           #in:Landroid/content/Intent;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #in:Landroid/content/Intent;
    goto :goto_0

    .line 456
    :cond_3
    const-string v2, "UsbStorageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip State change to Unmount :: vs is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    :cond_4
    const/4 v2, 0x2

    if-eq p4, v2, :cond_0

    .line 459
    const/4 v2, 0x3

    if-ne p4, v2, :cond_5

    .line 460
    const-string v2, "checking"

    invoke-direct {p0, p2, v2}, Lcom/android/server/UsbStorageService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v2, "UsbStorageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending intent :: ACTION_MEDIA_CHECKING : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v0, Landroid/content/Intent;

    .end local v0           #in:Landroid/content/Intent;
    const-string v2, "android.intent.action.MEDIA_CHECKING"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #in:Landroid/content/Intent;
    goto/16 :goto_0

    .line 463
    :cond_5
    const/4 v2, 0x4

    if-ne p4, v2, :cond_6

    .line 464
    const-string v2, "mounted"

    invoke-direct {p0, p2, v2}, Lcom/android/server/UsbStorageService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v0, Landroid/content/Intent;

    .end local v0           #in:Landroid/content/Intent;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 466
    .restart local v0       #in:Landroid/content/Intent;
    const-string v2, "read-only"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 467
    const-string v2, "UsbStorageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending intent :: ACTION_MEDIA_MOUNTED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 468
    :cond_6
    const/4 v2, 0x5

    if-ne p4, v2, :cond_7

    .line 469
    new-instance v0, Landroid/content/Intent;

    .end local v0           #in:Landroid/content/Intent;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 470
    .restart local v0       #in:Landroid/content/Intent;
    const-string v2, "UsbStorageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending intent :: ACTION_MEDIA_EJECT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 471
    :cond_7
    const/4 v2, 0x6

    if-eq p4, v2, :cond_0

    .line 472
    const/4 v2, 0x7

    if-ne p4, v2, :cond_8

    .line 473
    const-string v2, "shared"

    invoke-direct {p0, p2, v2}, Lcom/android/server/UsbStorageService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Landroid/content/Intent;

    .end local v0           #in:Landroid/content/Intent;
    const-string v2, "android.intent.action.MEDIA_SHARED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 475
    .restart local v0       #in:Landroid/content/Intent;
    const-string v2, "UsbStorageService"

    const-string v2, "Sending intent :: ACTION_MEDIA_SHARED"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 476
    :cond_8
    const/16 v2, 0x8

    if-ne p4, v2, :cond_9

    .line 477
    const-string v2, "UsbStorageService"

    const-string v2, "Live shared mounts not supported yet!"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 480
    :cond_9
    const-string v2, "UsbStorageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled VolumeState {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 19
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v6, builder:Ljava/lang/StringBuilder;
    const-string v15, "onEvent::"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " raw= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    if-eqz p3, :cond_0

    .line 230
    const-string v15, " cooked = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    move-object/from16 v5, p3

    .local v5, arr$:[Ljava/lang/String;
    array-length v11, v5

    .local v11, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v11, :cond_0

    aget-object v14, v5, v7

    .line 232
    .local v14, str:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 235
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v11           #len$:I
    .end local v14           #str:Ljava/lang/String;
    :cond_0
    const-string v15, "UsbStorageService"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/16 v15, 0x25d

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_2

    .line 239
    const/4 v15, 0x2

    aget-object v15, p3, v15

    const/16 v16, 0x3

    aget-object v16, p3, v16

    const/16 v17, 0x7

    aget-object v17, p3, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0xa

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/UsbStorageService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 298
    :cond_1
    :goto_1
    const/4 v15, 0x1

    return v15

    .line 241
    :cond_2
    const/16 v15, 0x276

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_3

    .line 242
    const/4 v15, 0x2

    aget-object v10, p3, v15

    .line 243
    .local v10, label:Ljava/lang/String;
    const/4 v15, 0x3

    aget-object v13, p3, v15

    .line 245
    .local v13, path:Ljava/lang/String;
    new-instance v15, Lcom/android/server/UsbStorageService$4;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/server/UsbStorageService$4;-><init>(Lcom/android/server/UsbStorageService;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/server/UsbStorageService$4;->start()V

    goto :goto_1

    .line 256
    .end local v10           #label:Ljava/lang/String;
    .end local v13           #path:Ljava/lang/String;
    :cond_3
    const/16 v15, 0x277

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_6

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    move-object v15, v0

    monitor-enter v15

    .line 258
    const/16 v16, 0x3

    :try_start_0
    aget-object v10, p3, v16

    .line 259
    .restart local v10       #label:Ljava/lang/String;
    const/4 v8, 0x0

    .line 261
    .local v8, in:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_5

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 263
    .local v9, iter:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 264
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/UsbStorageService$UsbStorageMap;

    .line 265
    .local v12, map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/UsbStorageService$UsbStorageMap;->label:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 266
    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/UsbStorageService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "bad_removal"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 269
    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/UsbStorageService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v8, Landroid/content/Intent;

    .end local v8           #in:Landroid/content/Intent;
    const-string v16, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "file://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    .restart local v8       #in:Landroid/content/Intent;
    const-string v16, "UsbStorageService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Sending intent :: ACTION_MEDIA_UNMOUNTED : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UsbStorageService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 274
    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/UsbStorageService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v16, "UsbStorageService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Sending intent :: ACTION_MEDIA_REMOVED : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v8, Landroid/content/Intent;

    .end local v8           #in:Landroid/content/Intent;
    const-string v16, "android.intent.action.MEDIA_REMOVED"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "file://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 277
    .restart local v8       #in:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UsbStorageService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 281
    .end local v8           #in:Landroid/content/Intent;
    .end local v9           #iter:Ljava/util/Iterator;
    .end local v10           #label:Ljava/lang/String;
    .end local v12           #map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    :catchall_0
    move-exception v16

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .restart local v8       #in:Landroid/content/Intent;
    .restart local v10       #label:Ljava/lang/String;
    :cond_5
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 283
    .end local v8           #in:Landroid/content/Intent;
    .end local v10           #label:Ljava/lang/String;
    :cond_6
    const/16 v15, 0x278

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_1

    .line 284
    const/4 v8, 0x0

    .line 285
    .restart local v8       #in:Landroid/content/Intent;
    const/4 v15, 0x3

    aget-object v13, p3, v15

    .line 286
    .restart local v13       #path:Ljava/lang/String;
    const-string v15, "unmounted"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/server/UsbStorageService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v8, Landroid/content/Intent;

    .end local v8           #in:Landroid/content/Intent;
    const-string v15, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "file://"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object v0, v8

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 288
    .restart local v8       #in:Landroid/content/Intent;
    const-string v15, "UsbStorageService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Sending intent :: ACTION_MEDIA_UNMOUNTED : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UsbStorageService;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 291
    const-string v15, "bad_removal"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/server/UsbStorageService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v8, Landroid/content/Intent;

    .end local v8           #in:Landroid/content/Intent;
    const-string v15, "android.intent.action.MEDIA_BAD_REMOVAL"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "file://"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object v0, v8

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 293
    .restart local v8       #in:Landroid/content/Intent;
    const-string v15, "UsbStorageService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Sending intent :: ACTION_MEDIA_BAD_REMOVAL : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UsbStorageService;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private final printDebug(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 369
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 370
    const-string v0, "init"

    .line 393
    .local v0, ret:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 371
    .end local v0           #ret:Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 372
    const-string v0, "NoMedia"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 373
    .end local v0           #ret:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 374
    const-string v0, "Idle"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 375
    .end local v0           #ret:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 376
    const-string v0, "Pending"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 377
    .end local v0           #ret:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 378
    const-string v0, "Checking"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 379
    .end local v0           #ret:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 380
    const-string v0, "Mounted"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 381
    .end local v0           #ret:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    .line 382
    const-string v0, "Unmounting"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 383
    .end local v0           #ret:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x6

    if-ne p1, v1, :cond_7

    .line 384
    const-string v0, "Formatting"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 385
    .end local v0           #ret:Ljava/lang/String;
    :cond_7
    const/4 v1, 0x7

    if-ne p1, v1, :cond_8

    .line 386
    const-string v0, "Shared"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 387
    .end local v0           #ret:Ljava/lang/String;
    :cond_8
    const/16 v1, 0x8

    if-ne p1, v1, :cond_9

    .line 388
    const-string v0, "SharedMnt"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 390
    .end local v0           #ret:Ljava/lang/String;
    :cond_9
    const-string v0, "unknown"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method private final printState(I)Ljava/lang/String;
    .locals 4
    .parameter "state"

    .prologue
    const-string v3, "unmounted"

    const-string v2, "removed"

    const-string v1, "mounted"

    .line 348
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 349
    const-string v0, "unmounted"

    move-object v0, v3

    .line 363
    :goto_0
    return-object v0

    .line 350
    :cond_0
    if-nez p1, :cond_1

    .line 351
    const-string v0, "removed"

    move-object v0, v2

    goto :goto_0

    .line 352
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 353
    const-string v0, "unmounted"

    move-object v0, v3

    goto :goto_0

    .line 354
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 355
    const-string v0, "pending"

    goto :goto_0

    .line 356
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 357
    const-string v0, "checking"

    goto :goto_0

    .line 358
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 359
    const-string v0, "mounted"

    move-object v0, v1

    goto :goto_0

    .line 360
    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    .line 361
    const-string v0, "mounted"

    move-object v0, v1

    goto :goto_0

    .line 363
    :cond_6
    const-string v0, "removed"

    move-object v0, v2

    goto :goto_0
.end method

.method private updatePartitionsList(Ljava/lang/String;)V
    .locals 14
    .parameter "label"

    .prologue
    .line 308
    :try_start_0
    iget-object v10, p0, Lcom/android/server/UsbStorageService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v11, "volume list parti %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6e

    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 316
    .local v0, Partitions:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    monitor-enter v10

    .line 317
    :try_start_1
    iget-object v11, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 318
    iget-object v11, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    new-instance v12, Lcom/android/server/UsbStorageService$UsbStorageMap;

    invoke-direct {v12, p0, p1}, Lcom/android/server/UsbStorageService$UsbStorageMap;-><init>(Lcom/android/server/UsbStorageService;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 319
    iget-object v11, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    new-instance v12, Lcom/android/server/UsbStorageService$UsbStorageMap;

    invoke-direct {v12, p0, p1}, Lcom/android/server/UsbStorageService$UsbStorageMap;-><init>(Lcom/android/server/UsbStorageService;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 322
    :cond_0
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    :try_start_2
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v9, v1, v3

    .line 328
    .local v9, volstr:Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 330
    .local v8, tok:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v5, v8, v10

    .line 331
    .local v5, mountpoint:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 332
    .local v7, st:I
    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 334
    .local v6, num:I
    iget-object v10, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    monitor-enter v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 335
    :try_start_3
    iget-object v11, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    new-instance v12, Lcom/android/server/UsbStorageService$UsbStorageMap;

    invoke-direct {p0, v7}, Lcom/android/server/UsbStorageService;->printState(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, p0, p1, v5, v13}, Lcom/android/server/UsbStorageService$UsbStorageMap;-><init>(Lcom/android/server/UsbStorageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 336
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 327
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    .end local v0           #Partitions:[Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #mountpoint:Ljava/lang/String;
    .end local v6           #num:I
    .end local v7           #st:I
    .end local v8           #tok:[Ljava/lang/String;
    .end local v9           #volstr:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 310
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v10, "UsbStorageService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updatePartitionsList :: NativeDaemonConnectorException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    :goto_1
    return-void

    .line 322
    .restart local v0       #Partitions:[Ljava/lang/String;
    :catchall_0
    move-exception v11

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v11

    .line 336
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #mountpoint:Ljava/lang/String;
    .restart local v6       #num:I
    .restart local v7       #st:I
    .restart local v8       #tok:[Ljava/lang/String;
    .restart local v9       #volstr:Ljava/lang/String;
    :catchall_1
    move-exception v11

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 338
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #mountpoint:Ljava/lang/String;
    .end local v6           #num:I
    .end local v7           #st:I
    .end local v8           #tok:[Ljava/lang/String;
    .end local v9           #volstr:Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v2, v10

    .line 339
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "UsbStorageService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updatePartitionsList ::  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const-string v10, "i"

    invoke-direct {p0, v10}, Lcom/android/server/UsbStorageService;->debugUsbStorageMap(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "path"
    .parameter "state"

    .prologue
    const/4 v12, 0x1

    const-string v10, ", state = "

    const-string v11, "UsbStorageService"

    .line 397
    const-string v8, "UsbStorageService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePublicVolumeState :: path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", state = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, bFound:Z
    move-object v6, p2

    .line 401
    .local v6, oldState:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 402
    iget-object v8, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 403
    .local v4, iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 404
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/UsbStorageService$UsbStorageMap;

    .line 405
    .local v5, map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    iget-object v8, v5, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 406
    const/4 v0, 0x1

    .line 407
    iget-object v6, v5, Lcom/android/server/UsbStorageService$UsbStorageMap;->state:Ljava/lang/String;

    .line 408
    iput-object p2, v5, Lcom/android/server/UsbStorageService$UsbStorageMap;->state:Ljava/lang/String;

    .line 414
    .end local v4           #iter:Ljava/util/Iterator;
    .end local v5           #map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    :cond_1
    if-eqz v0, :cond_4

    .line 415
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 416
    const-string v8, "UsbStorageService"

    const-string v8, "Duplicate state transition (%s -> %s) and path is %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    aput-object p2, v9, v12

    const/4 v10, 0x2

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return-void

    .line 420
    :cond_2
    iget-object v8, p0, Lcom/android/server/UsbStorageService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 421
    :try_start_0
    iget-object v9, p0, Lcom/android/server/UsbStorageService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v3, v9, v12

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_3

    .line 422
    iget-object v9, p0, Lcom/android/server/UsbStorageService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    .local v1, bl:Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;
    :try_start_1
    iget-object v9, v1, Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;->mListener:Landroid/os/storage/IUsbStorageServiceListener;

    invoke-interface {v9, p1, v6, p2}, Landroid/os/storage/IUsbStorageServiceListener;->onUsbStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 421
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 425
    :catch_0
    move-exception v9

    move-object v7, v9

    .line 426
    .local v7, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v9, "UsbStorageService"

    const-string v10, "Listener dead"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v9, p0, Lcom/android/server/UsbStorageService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 432
    .end local v1           #bl:Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;
    .end local v3           #i:I
    .end local v7           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 428
    .restart local v1       #bl:Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;
    .restart local v3       #i:I
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 429
    .local v2, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v9, "UsbStorageService"

    const-string v10, "Listener failed"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 432
    .end local v1           #bl:Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    .end local v3           #i:I
    :goto_3
    const-string v8, "u"

    invoke-direct {p0, v8}, Lcom/android/server/UsbStorageService;->debugUsbStorageMap(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_4
    const-string v8, "UsbStorageService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePublicVolumeState :: Can\'t find path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", state = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private validatePermission(Ljava/lang/String;)V
    .locals 4
    .parameter "perm"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/server/UsbStorageService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_0
    return-void
.end method

.method private waitForReady()V
    .locals 3

    .prologue
    .line 114
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/UsbStorageService;->mReady:Z

    if-nez v1, :cond_0

    .line 115
    const/4 v0, 0x5

    .local v0, retries:I
    :goto_1
    if-lez v0, :cond_2

    .line 116
    iget-boolean v1, p0, Lcom/android/server/UsbStorageService;->mReady:Z

    if-eqz v1, :cond_1

    .line 123
    .end local v0           #retries:I
    :cond_0
    return-void

    .line 119
    .restart local v0       #retries:I
    :cond_1
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 115
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 121
    :cond_2
    const-string v1, "UsbStorageService"

    const-string v2, "waitForReady :: Waiting too long for mReady!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 849
    iget-object v2, p0, Lcom/android/server/UsbStorageService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump UsbStorageService from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    :goto_0
    return-void

    .line 857
    :cond_0
    iget-object v2, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    monitor-enter v2

    .line 858
    :try_start_0
    const-string v3, "USB Storage State:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    system ready = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/UsbStorageService;->mReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    boot completed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/UsbStorageService;->mBooted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    iget-object v3, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 863
    iget-object v3, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 864
    .local v0, iter:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 865
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/UsbStorageService$UsbStorageMap;

    .line 866
    .local v1, map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/UsbStorageService$UsbStorageMap;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :: path = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/UsbStorageService$UsbStorageMap;->state:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 869
    .end local v0           #iter:Ljava/util/Iterator;
    .end local v1           #map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 759
    const-string v0, "UsbStorageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: formatVolume :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/UsbStorageService;->validatePermission(Ljava/lang/String;)V

    .line 761
    invoke-direct {p0}, Lcom/android/server/UsbStorageService;->waitForReady()V

    .line 763
    const/4 v0, 0x0

    return v0
.end method

.method public getShowSafeUnmountNotification()Z
    .locals 3

    .prologue
    .line 837
    const-string v0, "UsbStorageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShowSafeUnmountNotification :: mSafeUnmountedUsbHost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/UsbStorageService;->mSafeUnmountedUsbHost:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-boolean v0, p0, Lcom/android/server/UsbStorageService;->mSafeUnmountedUsbHost:Z

    return v0
.end method

.method public getVolumeList()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 653
    iget-object v4, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 654
    :try_start_0
    iget-object v5, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 655
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v3, rdata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 657
    .local v0, i:I
    iget-object v5, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 658
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 659
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/UsbStorageService$UsbStorageMap;

    .line 660
    .local v2, map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    iget-object v5, v2, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v0, v0, 0x1

    .line 662
    goto :goto_0

    .line 663
    .end local v2           #map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    :cond_0
    new-array v5, v0, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    monitor-exit v4

    move-object v4, p0

    .line 669
    .end local v0           #i:I
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v3           #rdata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v4

    .line 665
    .restart local p0
    :cond_1
    const-string v5, "UsbStorageService"

    const-string v6, "getVolumeList -> empty !"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    goto :goto_1

    .line 667
    .end local p0
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "mountPoint"

    .prologue
    .line 675
    const-string v3, "removed"

    .line 676
    .local v3, state:Ljava/lang/String;
    const/4 v0, 0x0

    .line 677
    .local v0, bFound:Z
    iget-object v4, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 678
    iget-object v4, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 679
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 680
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/UsbStorageService$UsbStorageMap;

    .line 681
    .local v2, map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    iget-object v4, v2, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 682
    const/4 v0, 0x1

    .line 683
    iget-object v4, v2, Lcom/android/server/UsbStorageService$UsbStorageMap;->state:Ljava/lang/String;

    .line 690
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v2           #map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    :goto_0
    return-object v4

    .line 688
    :cond_1
    if-nez v0, :cond_2

    const-string v4, "UsbStorageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVolumeState :: Can\'t find path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v4, v3

    .line 690
    goto :goto_0
.end method

.method public isUsbStorageConnected()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v3, "UsbStorageService"

    .line 768
    iget-object v3, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 769
    :try_start_0
    iget-object v4, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 770
    const/4 v0, 0x0

    .line 771
    .local v0, i:I
    iget-object v4, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 772
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 773
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/UsbStorageService$UsbStorageMap;

    .line 775
    .local v2, map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    const-string v4, "pending"

    iget-object v5, v2, Lcom/android/server/UsbStorageService$UsbStorageMap;->state:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "checking"

    iget-object v5, v2, Lcom/android/server/UsbStorageService$UsbStorageMap;->state:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "mounted"

    iget-object v5, v2, Lcom/android/server/UsbStorageService$UsbStorageMap;->state:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "mounted_ro"

    iget-object v5, v2, Lcom/android/server/UsbStorageService$UsbStorageMap;->state:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 779
    :cond_1
    const-string v4, "UsbStorageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " :::: isUsbStorageConnected :: result = true ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/UsbStorageService$UsbStorageMap;->state:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v4, 0x1

    monitor-exit v3

    move v3, v4

    .line 789
    .end local v0           #i:I
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v2           #map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    :goto_0
    return v3

    .line 785
    :cond_2
    const-string v4, "UsbStorageService"

    const-string v5, " :::: isUsbStorageConnected :: result = false (empty)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    monitor-exit v3

    move v3, v6

    goto :goto_0

    .line 788
    .restart local v0       #i:I
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_3
    const-string v4, "UsbStorageService"

    const-string v5, " :::: isUsbStorageConnected :: result = false (not found)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    monitor-exit v3

    move v3, v6

    goto :goto_0

    .line 790
    .end local v0           #i:I
    .end local v1           #iter:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    const-string v2, "UsbStorageService"

    .line 694
    const-string v0, "UsbStorageService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " :::: mountVolume :: path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/UsbStorageService;->validatePermission(Ljava/lang/String;)V

    .line 697
    invoke-direct {p0}, Lcom/android/server/UsbStorageService;->waitForReady()V

    .line 699
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    const-string v0, "UsbStorageService"

    const-string v0, "mountVolume -> first SD card is not ready. "

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v0, -0x6

    .line 703
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/UsbStorageService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/android/server/UsbStorageService$1;

    invoke-direct {v0, p0}, Lcom/android/server/UsbStorageService$1;-><init>(Lcom/android/server/UsbStorageService;)V

    invoke-virtual {v0}, Lcom/android/server/UsbStorageService$1;->start()V

    .line 133
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    const/4 v2, 0x1

    .line 211
    iget-boolean v0, p0, Lcom/android/server/UsbStorageService;->mBooted:Z

    if-nez v0, :cond_0

    .line 212
    const-string v0, "UsbStorageService"

    const-string v1, "not ready to boot complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 221
    :goto_0
    return v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/server/UsbStorageService;->mWorkQueueHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/UsbStorageService$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/UsbStorageService$3;-><init>(Lcom/android/server/UsbStorageService;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v2

    .line 221
    goto :goto_0
.end method

.method public registerListener(Landroid/os/storage/IUsbStorageServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 612
    iget-object v2, p0, Lcom/android/server/UsbStorageService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 613
    :try_start_0
    new-instance v0, Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;-><init>(Lcom/android/server/UsbStorageService;Landroid/os/storage/IUsbStorageServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    .local v0, bl:Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IUsbStorageServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 616
    iget-object v3, p0, Lcom/android/server/UsbStorageService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 620
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 621
    return-void

    .line 617
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 618
    .local v1, rex:Landroid/os/RemoteException;
    const-string v3, "UsbStorageService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 620
    .end local v0           #bl:Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;
    .end local v1           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public setShowSafeUnmountNotification(Z)V
    .locals 3
    .parameter "set"

    .prologue
    .line 843
    const-string v0, "UsbStorageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowSafeUnmountNotification :: set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iput-boolean p1, p0, Lcom/android/server/UsbStorageService;->mSafeUnmountedUsbHost:Z

    .line 845
    return-void
.end method

.method public unmountVolume(Ljava/lang/String;Z)V
    .locals 3
    .parameter "path"
    .parameter "force"

    .prologue
    .line 738
    const-string v0, "UsbStorageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: unmountVolume :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/UsbStorageService;->validatePermission(Ljava/lang/String;)V

    .line 740
    invoke-direct {p0}, Lcom/android/server/UsbStorageService;->waitForReady()V

    .line 742
    invoke-direct {p0, p1, p2}, Lcom/android/server/UsbStorageService;->doUnmountVolume(Ljava/lang/String;Z)I

    .line 743
    return-void
.end method

.method public unmountVolume(Z)V
    .locals 5
    .parameter "force"

    .prologue
    .line 746
    const-string v2, "UsbStorageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: unmountVolume :: force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v2, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    monitor-enter v2

    .line 748
    :try_start_0
    iget-object v3, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 749
    iget-object v3, p0, Lcom/android/server/UsbStorageService;->mUsbStorageSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 750
    .local v0, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 751
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/UsbStorageService$UsbStorageMap;

    .line 752
    .local v1, map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    iget-object v3, v1, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lcom/android/server/UsbStorageService;->unmountVolume(Ljava/lang/String;Z)V

    goto :goto_0

    .line 755
    .end local v0           #iter:Ljava/util/Iterator;
    .end local v1           #map:Lcom/android/server/UsbStorageService$UsbStorageMap;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 756
    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IUsbStorageServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 624
    iget-object v2, p0, Lcom/android/server/UsbStorageService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 625
    :try_start_0
    iget-object v3, p0, Lcom/android/server/UsbStorageService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;

    .line 626
    .local v0, bl:Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;
    iget-object v3, v0, Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;->mListener:Landroid/os/storage/IUsbStorageServiceListener;

    if-ne v3, p1, :cond_0

    .line 627
    iget-object v3, p0, Lcom/android/server/UsbStorageService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/UsbStorageService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 628
    monitor-exit v2

    .line 632
    .end local v0           #bl:Lcom/android/server/UsbStorageService$UsbStorageServiceBinderListener;
    :goto_0
    return-void

    .line 631
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
