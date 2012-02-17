.class Lcom/android/server/HeadsetObserver;
.super Landroid/os/UEventObserver;
.source "HeadsetObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HeadsetObserver$HeadsetObserverBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final HEADSETS_WITH_MIC:I = 0x1

.field private static final HEADSET_NAME_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/name"

.field private static final HEADSET_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/state"

.field private static final HEADSET_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/h2w"

.field private static final LOG:Z = true

.field private static final SUPPORTED_HEADSETS:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHDMIState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetName:Ljava/lang/String;

.field private mHeadsetState:I

.field private mPrevHeadsetState:I

.field private mReceiver:Lcom/android/server/HeadsetObserver$HeadsetObserverBroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/server/HeadsetObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 67
    iput v3, p0, Lcom/android/server/HeadsetObserver;->mHDMIState:I

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/HeadsetObserver;->mReceiver:Lcom/android/server/HeadsetObserver$HeadsetObserverBroadcastReceiver;

    .line 226
    new-instance v1, Lcom/android/server/HeadsetObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/HeadsetObserver$1;-><init>(Lcom/android/server/HeadsetObserver;)V

    iput-object v1, p0, Lcom/android/server/HeadsetObserver;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    .line 73
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 74
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "HeadsetObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 75
    iget-object v1, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 77
    const-string v1, "DEVPATH=/devices/virtual/switch/h2w"

    invoke-virtual {p0, v1}, Lcom/android/server/HeadsetObserver;->startObserving(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/android/server/HeadsetObserver;->init()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HeadsetObserver;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/HeadsetObserver;->sendIntents(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/HeadsetObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/HeadsetObserver;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/server/HeadsetObserver;->mHDMIState:I

    return p1
.end method

.method private final declared-synchronized init()V
    .locals 8

    .prologue
    .line 101
    monitor-enter p0

    const/16 v6, 0x400

    :try_start_0
    new-array v0, v6, [C

    .line 103
    .local v0, buffer:[C
    iget-object v4, p0, Lcom/android/server/HeadsetObserver;->mHeadsetName:Ljava/lang/String;

    .line 104
    .local v4, newName:Ljava/lang/String;
    iget v5, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    .line 105
    .local v5, newState:I
    iget v6, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    iput v6, p0, Lcom/android/server/HeadsetObserver;->mPrevHeadsetState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/h2w/state"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, file:Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 109
    .local v3, len:I
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 111
    new-instance v2, Ljava/io/FileReader;

    .end local v2           #file:Ljava/io/FileReader;
    const-string v6, "/sys/class/switch/h2w/name"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v2       #file:Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 113
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 121
    .end local v2           #file:Ljava/io/FileReader;
    .end local v3           #len:I
    :goto_0
    :try_start_2
    invoke-direct {p0, v4, v5}, Lcom/android/server/HeadsetObserver;->update(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 115
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 116
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_3
    sget-object v6, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    const-string v7, "This kernel does not have wired headset support"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 101
    .end local v0           #buffer:[C
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v4           #newName:Ljava/lang/String;
    .end local v5           #newState:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 117
    .restart local v0       #buffer:[C
    .restart local v4       #newName:Ljava/lang/String;
    .restart local v5       #newState:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 118
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v6, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private final sendIntent(IIILjava/lang/String;)V
    .locals 6
    .parameter "headset"
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    .line 203
    and-int v3, p2, p1

    and-int v4, p3, p1

    if-eq v3, v4, :cond_2

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x4000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    const/4 v2, 0x0

    .line 208
    .local v2, state:I
    const/4 v1, 0x0

    .line 210
    .local v1, microphone:I
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_0

    .line 211
    const/4 v1, 0x1

    .line 213
    :cond_0
    and-int v3, p2, p1

    if-eqz v3, :cond_1

    .line 214
    const/4 v2, 0x1

    .line 216
    :cond_1
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v3, "microphone"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    sget-object v3, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent.ACTION_HEADSET_PLUG: state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 224
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #microphone:I
    .end local v2           #state:I
    :cond_2
    return-void
.end method

.method private final declared-synchronized sendIntents(IILjava/lang/String;)V
    .locals 3
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    .line 193
    monitor-enter p0

    const/4 v0, 0x3

    .line 194
    .local v0, allHeadsets:I
    const/4 v1, 0x1

    .local v1, curHeadset:I
    :goto_0
    if-eqz v0, :cond_1

    .line 195
    and-int v2, v1, v0

    if-eqz v2, :cond_0

    .line 196
    :try_start_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/HeadsetObserver;->sendIntent(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    .line 194
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_1
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private final declared-synchronized update(Ljava/lang/String;I)V
    .locals 10
    .parameter "newName"
    .parameter "newState"

    .prologue
    const-string v4, "GT-I9100G"

    const-string v4, "GT-I9108"

    .line 126
    monitor-enter p0

    and-int/lit8 v1, p2, 0x3

    .line 127
    .local v1, headsetState:I
    :try_start_0
    iget v4, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    or-int v3, v1, v4

    .line 128
    .local v3, newOrOld:I
    const/4 v0, 0x0

    .line 132
    .local v0, delay:I
    iget v4, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v1, :cond_0

    const/4 v4, 0x1

    sub-int v4, v3, v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    .line 190
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 136
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/server/HeadsetObserver;->mHeadsetName:Ljava/lang/String;

    .line 137
    iget v4, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    iput v4, p0, Lcom/android/server/HeadsetObserver;->mPrevHeadsetState:I

    .line 138
    iput v1, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    .line 142
    sget-object v4, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "headset observer : mHDMIState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/HeadsetObserver;->mHDMIState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-nez v1, :cond_5

    .line 154
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/HeadsetObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    const-string v4, "GT-I9100G"

    const-string v5, "GT-I9108"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "SHV-E110S"

    const-string v5, "GT-I9108"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 166
    :cond_2
    const/16 v0, 0x1f4

    .line 184
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 185
    iget-object v4, p0, Lcom/android/server/HeadsetObserver;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/HeadsetObserver;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/HeadsetObserver;->mHeadsetState:I

    iget v8, p0, Lcom/android/server/HeadsetObserver;->mPrevHeadsetState:I

    iget-object v9, p0, Lcom/android/server/HeadsetObserver;->mHeadsetName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    int-to-long v6, v0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v0           #delay:I
    .end local v3           #newOrOld:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 168
    .restart local v0       #delay:I
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #newOrOld:I
    :cond_4
    const/16 v0, 0xc8

    goto :goto_1

    .line 174
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/android/server/HeadsetObserver;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    const-string v4, "GT-I9100G"

    const-string v5, "GT-I9108"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_6

    .line 177
    const/16 v0, 0x1f4

    goto :goto_1

    .line 179
    :cond_6
    const/16 v0, 0xc8

    goto :goto_1
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 91
    sget-object v1, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Headset UEVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :try_start_0
    const-string v1, "SWITCH_NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/HeadsetObserver;->update(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 96
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/server/HeadsetObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
