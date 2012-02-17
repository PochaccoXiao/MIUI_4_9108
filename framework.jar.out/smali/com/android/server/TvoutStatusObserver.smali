.class public Lcom/android/server/TvoutStatusObserver;
.super Landroid/os/Binder;
.source "TvoutStatusObserver.java"


# static fields
.field private static final ACTION_HDMI_PLUG:Ljava/lang/String; = "android.intent.action.HDMI_PLUG"

.field private static final HDMIName:Ljava/lang/String; = "hdmi"

.field private static final HDMI_STATE_PATH:Ljava/lang/String; = "/sys/devices/platform/omapdss/display1/enabled"

.field private static final HDMI_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/omapdss/display1"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHDMIName:Ljava/lang/String;

.field private mHDMIState:I

.field private final mHandler:Landroid/os/Handler;

.field private mPrevHDMIState:I

.field private mUEventObserver:Landroid/os/UEventObserver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/server/TvoutStatusObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TvoutStatusObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    new-instance v1, Lcom/android/server/TvoutStatusObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/TvoutStatusObserver$1;-><init>(Lcom/android/server/TvoutStatusObserver;)V

    iput-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mUEventObserver:Landroid/os/UEventObserver;

    .line 223
    new-instance v1, Lcom/android/server/TvoutStatusObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/TvoutStatusObserver$2;-><init>(Lcom/android/server/TvoutStatusObserver;)V

    iput-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/android/server/TvoutStatusObserver;->mContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 75
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "TvoutStatusObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 76
    iget-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 78
    iget-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v2, "DEVPATH=/devices/omapdss/display1"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/android/server/TvoutStatusObserver;->init()V

    .line 81
    return-void
.end method

.method private EnableOrDisableHDMITV(I)V
    .locals 5
    .parameter "hdmi_status"

    .prologue
    .line 198
    sget-object v3, Lcom/android/server/TvoutStatusObserver;->TAG:Ljava/lang/String;

    const-string v4, "EnableOrDisableHDMITV() - EnableOrDisableHDMITV  !!! E"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string/jumbo v3, "tvoutservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ITvOutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITvOutService;

    move-result-object v1

    .line 205
    .local v1, tvoutService:Landroid/os/ITvOutService;
    const/4 v2, 0x0

    .line 206
    .local v2, tvouthdmisuspendInit:Z
    if-nez v1, :cond_0

    .line 208
    sget-object v3, Lcom/android/server/TvoutStatusObserver;->TAG:Ljava/lang/String;

    const-string v4, "EnableOrDisableHDMITV() - TvOutService Not running"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return-void

    .line 214
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Landroid/os/ITvOutService;->TvoutHDMIUpdateCableStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/TvoutStatusObserver;->TAG:Ljava/lang/String;

    const-string v4, "EnableOrDisableHDMITV() - Tv OUT  fail!!! "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/server/TvoutStatusObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TvoutStatusObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/TvoutStatusObserver;->mHDMIState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/TvoutStatusObserver;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/server/TvoutStatusObserver;->update(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/TvoutStatusObserver;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TvoutStatusObserver;->sendIntents(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/TvoutStatusObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private final declared-synchronized init()V
    .locals 9

    .prologue
    const-string v6, " HDMI init is failed by file close"

    .line 116
    monitor-enter p0

    :try_start_0
    sget-object v6, Lcom/android/server/TvoutStatusObserver;->TAG:Ljava/lang/String;

    const-string v7, "HDMI status observer init "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, files:Ljava/io/FileReader;
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 120
    .local v0, buffer:[C
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/TvoutStatusObserver;->mHDMIState:I

    .line 121
    iget v6, p0, Lcom/android/server/TvoutStatusObserver;->mHDMIState:I

    iput v6, p0, Lcom/android/server/TvoutStatusObserver;->mPrevHDMIState:I

    .line 122
    iget v5, p0, Lcom/android/server/TvoutStatusObserver;->mHDMIState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .local v5, newState:I
    :try_start_1
    const-string/jumbo v6, "persist.sys.HDMICableConnected"

    const-string/jumbo v7, "no"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v3, Ljava/io/FileReader;

    const-string v6, "/sys/devices/platform/omapdss/display1/enabled"

    invoke-direct {v3, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 127
    .end local v2           #files:Ljava/io/FileReader;
    .local v3, files:Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    :try_start_2
    invoke-virtual {v3, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 128
    .local v4, len:I
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 129
    const-string v6, "hdmi"

    invoke-direct {p0, v6, v5}, Lcom/android/server/TvoutStatusObserver;->update(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 135
    if-eqz v3, :cond_0

    .line 137
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_0
    :goto_0
    move-object v2, v3

    .line 144
    .end local v3           #files:Ljava/io/FileReader;
    .end local v4           #len:I
    .restart local v2       #files:Ljava/io/FileReader;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 130
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 131
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    sget-object v6, Lcom/android/server/TvoutStatusObserver;->TAG:Ljava/lang/String;

    const-string v7, " HDMI driver is not support the init state value"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 135
    if-eqz v2, :cond_1

    .line 137
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 138
    :catch_1
    move-exception v1

    .line 139
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    sget-object v6, Lcom/android/server/TvoutStatusObserver;->TAG:Ljava/lang/String;

    const-string v7, " HDMI init is failed by file close"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 116
    .end local v0           #buffer:[C
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #files:Ljava/io/FileReader;
    .end local v5           #newState:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 132
    .restart local v0       #buffer:[C
    .restart local v2       #files:Ljava/io/FileReader;
    .restart local v5       #newState:I
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 133
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_7
    sget-object v6, Lcom/android/server/TvoutStatusObserver;->TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 135
    if-eqz v2, :cond_1

    .line 137
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 138
    :catch_3
    move-exception v1

    .line 139
    .local v1, e:Ljava/io/IOException;
    :try_start_9
    sget-object v6, Lcom/android/server/TvoutStatusObserver;->TAG:Ljava/lang/String;

    const-string v7, " HDMI init is failed by file close"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 135
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    :goto_4
    if-eqz v2, :cond_2

    .line 137
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 135
    :cond_2
    :goto_5
    :try_start_b
    throw v6

    .line 138
    :catch_4
    move-exception v1

    .line 139
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v7, Lcom/android/server/TvoutStatusObserver;->TAG:Ljava/lang/String;

    const-string v8, " HDMI init is failed by file close"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 138
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #files:Ljava/io/FileReader;
    .restart local v3       #files:Ljava/io/FileReader;
    .restart local v4       #len:I
    :catch_5
    move-exception v1

    .line 139
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v6, Lcom/android/server/TvoutStatusObserver;->TAG:Ljava/lang/String;

    const-string v7, " HDMI init is failed by file close"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    .line 135
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #len:I
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3           #files:Ljava/io/FileReader;
    .restart local v2       #files:Ljava/io/FileReader;
    goto :goto_4

    .line 132
    .end local v2           #files:Ljava/io/FileReader;
    .restart local v3       #files:Ljava/io/FileReader;
    :catch_6
    move-exception v6

    move-object v1, v6

    move-object v2, v3

    .end local v3           #files:Ljava/io/FileReader;
    .restart local v2       #files:Ljava/io/FileReader;
    goto :goto_3

    .line 130
    .end local v2           #files:Ljava/io/FileReader;
    .restart local v3       #files:Ljava/io/FileReader;
    :catch_7
    move-exception v6

    move-object v1, v6

    move-object v2, v3

    .end local v3           #files:Ljava/io/FileReader;
    .restart local v2       #files:Ljava/io/FileReader;
    goto :goto_2
.end method

.method private final sendIntent(IIILjava/lang/String;)V
    .locals 5
    .parameter "HDMI"
    .parameter "HDMIState"
    .parameter "prevHDMIState"
    .parameter "HDMIName"

    .prologue
    .line 176
    and-int v2, p2, p1

    and-int v3, p3, p1

    if-eq v2, v3, :cond_1

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.HDMI_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, state:I
    and-int v2, p2, p1

    if-eqz v2, :cond_0

    .line 182
    const/4 v1, 0x1

    .line 183
    const-string/jumbo v2, "persist.sys.HDMICableConnected"

    const-string/jumbo v3, "yes"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-direct {p0, v1}, Lcom/android/server/TvoutStatusObserver;->EnableOrDisableHDMITV(I)V

    .line 189
    sget-object v2, Lcom/android/server/TvoutStatusObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_HDMI_PLUG: state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 193
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #state:I
    :cond_1
    return-void
.end method

.method private final declared-synchronized sendIntents(IILjava/lang/String;)V
    .locals 3
    .parameter "HDMIState"
    .parameter "prevHDMIState"
    .parameter "HDMIName"

    .prologue
    .line 169
    monitor-enter p0

    const/4 v1, 0x1

    .line 170
    .local v1, curHDMI:I
    const/4 v0, 0x1

    .line 171
    .local v0, allHDMI:I
    :try_start_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/TvoutStatusObserver;->sendIntent(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private final declared-synchronized update(Ljava/lang/String;I)V
    .locals 9
    .parameter "newName"
    .parameter "newState"

    .prologue
    .line 149
    monitor-enter p0

    move v0, p2

    .line 150
    .local v0, HDMIState:I
    :try_start_0
    iget v3, p0, Lcom/android/server/TvoutStatusObserver;->mHDMIState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int v2, v0, v3

    .line 151
    .local v2, newOrOld:I
    const/4 v1, 0x0

    .line 152
    .local v1, delay:I
    const/4 v3, 0x1

    sub-int v3, v2, v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    .line 166
    :goto_0
    monitor-exit p0

    return-void

    .line 156
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/server/TvoutStatusObserver;->mHDMIName:Ljava/lang/String;

    .line 157
    iget v3, p0, Lcom/android/server/TvoutStatusObserver;->mHDMIState:I

    iput v3, p0, Lcom/android/server/TvoutStatusObserver;->mPrevHDMIState:I

    .line 158
    iput v0, p0, Lcom/android/server/TvoutStatusObserver;->mHDMIState:I

    .line 160
    iget-object v3, p0, Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 161
    iget-object v3, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/TvoutStatusObserver;->mHDMIState:I

    iget v7, p0, Lcom/android/server/TvoutStatusObserver;->mPrevHDMIState:I

    iget-object v8, p0, Lcom/android/server/TvoutStatusObserver;->mHDMIName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    int-to-long v5, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    .end local v1           #delay:I
    .end local v2           #newOrOld:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
