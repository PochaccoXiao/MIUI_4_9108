.class public Lcom/android/server/MhlRcpObserver;
.super Landroid/os/Binder;
.source "MhlRcpObserver.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final MHL_RCP_KEYCODE_0:I = 0x20

.field public static final MHL_RCP_KEYCODE_1:I = 0x21

.field public static final MHL_RCP_KEYCODE_2:I = 0x22

.field public static final MHL_RCP_KEYCODE_3:I = 0x23

.field public static final MHL_RCP_KEYCODE_4:I = 0x24

.field public static final MHL_RCP_KEYCODE_5:I = 0x25

.field public static final MHL_RCP_KEYCODE_6:I = 0x26

.field public static final MHL_RCP_KEYCODE_7:I = 0x27

.field public static final MHL_RCP_KEYCODE_8:I = 0x28

.field public static final MHL_RCP_KEYCODE_9:I = 0x29

.field public static final MHL_RCP_KEYCODE_ANGLE:I = 0x50

.field public static final MHL_RCP_KEYCODE_BACKWARD:I = 0x4c

.field public static final MHL_RCP_KEYCODE_CHANNEL_DOWN:I = 0x31

.field public static final MHL_RCP_KEYCODE_CHANNEL_UP:I = 0x30

.field public static final MHL_RCP_KEYCODE_CLEAR:I = 0x2c

.field public static final MHL_RCP_KEYCODE_CONTENTS_MENU:I = 0xb

.field public static final MHL_RCP_KEYCODE_DOT:I = 0x2a

.field public static final MHL_RCP_KEYCODE_DOWN:I = 0x2

.field public static final MHL_RCP_KEYCODE_EJECT:I = 0x4a

.field public static final MHL_RCP_KEYCODE_ENTER:I = 0x2b

.field public static final MHL_RCP_KEYCODE_EXIT:I = 0xd

.field public static final MHL_RCP_KEYCODE_F1:I = 0x71

.field public static final MHL_RCP_KEYCODE_F2:I = 0x72

.field public static final MHL_RCP_KEYCODE_F3:I = 0x73

.field public static final MHL_RCP_KEYCODE_F4:I = 0x74

.field public static final MHL_RCP_KEYCODE_F5:I = 0x75

.field public static final MHL_RCP_KEYCODE_FAST_FORWARD:I = 0x49

.field public static final MHL_RCP_KEYCODE_FAVORITE_MENU:I = 0xc

.field public static final MHL_RCP_KEYCODE_FORWARD:I = 0x4b

.field public static final MHL_RCP_KEYCODE_HELP:I = 0x36

.field public static final MHL_RCP_KEYCODE_INPUT_SELECT:I = 0x34

.field public static final MHL_RCP_KEYCODE_INVALID:I = 0xff

.field public static final MHL_RCP_KEYCODE_LEFT:I = 0x3

.field public static final MHL_RCP_KEYCODE_LEFT_DOWN:I = 0x8

.field public static final MHL_RCP_KEYCODE_LEFT_UP:I = 0x7

.field public static final MHL_RCP_KEYCODE_MUTE:I = 0x43

.field public static final MHL_RCP_KEYCODE_MUTE_FUNCTION:I = 0x65

.field public static final MHL_RCP_KEYCODE_PAGE_DOWN:I = 0x38

.field public static final MHL_RCP_KEYCODE_PAGE_UP:I = 0x37

.field public static final MHL_RCP_KEYCODE_PAUSE:I = 0x46

.field public static final MHL_RCP_KEYCODE_PAUSE_PLAY_FUNCTION:I = 0x61

.field public static final MHL_RCP_KEYCODE_PAUSE_RECORD_FUNCTION:I = 0x63

.field public static final MHL_RCP_KEYCODE_PLAY:I = 0x44

.field public static final MHL_RCP_KEYCODE_PLAY_FUNCTION:I = 0x60

.field public static final MHL_RCP_KEYCODE_PREVIOUS_CHANEL:I = 0x32

.field public static final MHL_RCP_KEYCODE_RECORD:I = 0x47

.field public static final MHL_RCP_KEYCODE_RECORD_FUNCTION:I = 0x62

.field public static final MHL_RCP_KEYCODE_RESTORE_VOLUME_FUNCTION:I = 0x66

.field public static final MHL_RCP_KEYCODE_REWIND:I = 0x48

.field public static final MHL_RCP_KEYCODE_RIGHT:I = 0x4

.field public static final MHL_RCP_KEYCODE_RIGHT_DOWN:I = 0x6

.field public static final MHL_RCP_KEYCODE_RIGHT_UP:I = 0x5

.field public static final MHL_RCP_KEYCODE_ROOT_MENU:I = 0x9

.field public static final MHL_RCP_KEYCODE_SELECT:I = 0x0

.field public static final MHL_RCP_KEYCODE_SELECT_MEDIA_FUNCTION:I = 0x68

.field public static final MHL_RCP_KEYCODE_SETUP_MENU:I = 0xa

.field public static final MHL_RCP_KEYCODE_SHOW_INFORMATION:I = 0x35

.field public static final MHL_RCP_KEYCODE_SOUND_SELECT:I = 0x33

.field public static final MHL_RCP_KEYCODE_STOP:I = 0x45

.field public static final MHL_RCP_KEYCODE_STOP_FUNCTION:I = 0x64

.field public static final MHL_RCP_KEYCODE_SUBPICTURE:I = 0x51

.field public static final MHL_RCP_KEYCODE_TUNE_FUNCTION:I = 0x67

.field public static final MHL_RCP_KEYCODE_UP:I = 0x1

.field public static final MHL_RCP_KEYCODE_VENDOR_SPECIFIC:I = 0x7e

.field public static final MHL_RCP_KEYCODE_VOLUME_DOWN:I = 0x42

.field public static final MHL_RCP_KEYCODE_VOLUME_UP:I = 0x41

.field private static final MHL_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/omapdss/display1"

.field private static final MSG_MHL_RCP_EVENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MhlRcpObserver"


# instance fields
.field private IsMediakey:Z

.field private final mContext:Landroid/content/Context;

.field private mUEventObserver:Landroid/os/UEventObserver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 140
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    iput-boolean v3, p0, Lcom/android/server/MhlRcpObserver;->IsMediakey:Z

    .line 150
    new-instance v1, Lcom/android/server/MhlRcpObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/MhlRcpObserver$1;-><init>(Lcom/android/server/MhlRcpObserver;)V

    iput-object v1, p0, Lcom/android/server/MhlRcpObserver;->mUEventObserver:Landroid/os/UEventObserver;

    .line 141
    iput-object p1, p0, Lcom/android/server/MhlRcpObserver;->mContext:Landroid/content/Context;

    .line 142
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 143
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MhlRcpObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/MhlRcpObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 144
    iget-object v1, p0, Lcom/android/server/MhlRcpObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 147
    iget-object v1, p0, Lcom/android/server/MhlRcpObserver;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v2, "DEVPATH=/devices/omapdss/display1"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private SendClickEvent()V
    .locals 11

    .prologue
    const-string/jumbo v0, "window"

    const-string v10, "MhlRcpObserver"

    .line 413
    const-string v0, "MhlRcpObserver"

    const-string v0, "SENDCLICKEVENT: START"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 418
    .local v2, eventTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 420
    .local v9, event:Landroid/view/MotionEvent;
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v9, v1}, Landroid/view/IWindowManager;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z

    .line 424
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 426
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v9, v1}, Landroid/view/IWindowManager;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v2           #eventTime:J
    .end local v9           #event:Landroid/view/MotionEvent;
    :goto_0
    const-string v0, "MhlRcpObserver"

    const-string v0, "SENDCLICKEVENT: END"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 429
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 430
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "Input"

    const-string v1, "DeadOjbectException"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private SendKeyEvent(I)V
    .locals 3
    .parameter "event"

    .prologue
    const-string v2, "MhlRcpObserver"

    .line 384
    const-string v0, "MhlRcpObserver"

    const-string v0, "SENDKEYEVENT: START"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/MhlRcpObserver$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/MhlRcpObserver$2;-><init>(Lcom/android/server/MhlRcpObserver;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 408
    const-string v0, "MhlRcpObserver"

    const-string v0, "SENDKEYEVENT: END"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MhlRcpObserver;Landroid/os/UEventObserver$UEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/MhlRcpObserver;->update(Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method

.method private declared-synchronized update(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const-string v5, "UPDATE: This event not supported -> event = "

    const-string v5, " Send key event = "

    const-string v5, "UPDATE: Recive MHL_RCP event = "

    const-string v5, "MhlRcpObserver"

    .line 165
    monitor-enter p0

    :try_start_0
    const-string v5, "MHL_RCP"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, keyCodeStr:Ljava/lang/String;
    const-string v5, "MhlRcpObserver"

    const-string v6, "UPDATE: START "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-nez v3, :cond_0

    .line 170
    const-string v5, "MhlRcpObserver"

    const-string v6, "This is not MHL_RCP event"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_1
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    const/16 v5, 0x10

    :try_start_2
    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 183
    .local v2, keyCodeMhlRcpInt:I
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 375
    :pswitch_0
    :try_start_3
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: The event not supported in this code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :goto_2
    const-string v5, "MhlRcpObserver"

    const-string v6, "UPDATE: END "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 165
    .end local v2           #keyCodeMhlRcpInt:I
    .end local v3           #keyCodeStr:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 179
    .restart local v3       #keyCodeStr:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 180
    .local v4, t:Ljava/lang/Throwable;
    const/16 v2, 0xff

    .restart local v2       #keyCodeMhlRcpInt:I
    goto :goto_1

    .line 186
    .end local v4           #t:Ljava/lang/Throwable;
    :pswitch_1
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/MhlRcpObserver;->SendClickEvent()V

    .line 187
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 191
    :pswitch_2
    const/16 v1, 0x13

    .line 192
    .local v1, keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 193
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 197
    .end local v1           #keyCodeInt:I
    :pswitch_3
    const/16 v1, 0x14

    .line 198
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 199
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 203
    .end local v1           #keyCodeInt:I
    :pswitch_4
    const/16 v1, 0x15

    .line 204
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 205
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 209
    .end local v1           #keyCodeInt:I
    :pswitch_5
    const/16 v1, 0x16

    .line 210
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 211
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 218
    .end local v1           #keyCodeInt:I
    :pswitch_6
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: This event not supported -> event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 222
    :pswitch_7
    const/4 v1, 0x3

    .line 223
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 224
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 228
    .end local v1           #keyCodeInt:I
    :pswitch_8
    const/16 v1, 0x52

    .line 229
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 230
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 235
    .end local v1           #keyCodeInt:I
    :pswitch_9
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: This event not supported -> event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 239
    :pswitch_a
    const/4 v1, 0x4

    .line 240
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 241
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/16 v1, 0x6f

    .line 244
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 245
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 259
    .end local v1           #keyCodeInt:I
    :pswitch_b
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: This event not supported -> event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 263
    :pswitch_c
    const/16 v1, 0x42

    .line 264
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 265
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 269
    .end local v1           #keyCodeInt:I
    :pswitch_d
    const/16 v1, 0x1c

    .line 270
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 271
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 284
    .end local v1           #keyCodeInt:I
    :pswitch_e
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: This event not supported -> event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 288
    :pswitch_f
    const/16 v1, 0x18

    .line 289
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 290
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 294
    .end local v1           #keyCodeInt:I
    :pswitch_10
    const/16 v1, 0x19

    .line 295
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 296
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 301
    .end local v1           #keyCodeInt:I
    :pswitch_11
    const/16 v1, 0x5b

    .line 302
    .restart local v1       #keyCodeInt:I
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 303
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 310
    .end local v1           #keyCodeInt:I
    :pswitch_12
    const/16 v1, 0x55

    .line 311
    .restart local v1       #keyCodeInt:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/MhlRcpObserver;->IsMediakey:Z

    .line 312
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 313
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 318
    .end local v1           #keyCodeInt:I
    :pswitch_13
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.music.musicservicecommand"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, i:Landroid/content/Intent;
    const-string v5, "command"

    const-string/jumbo v6, "pause"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v5, "MHL_MEDIA_KEY"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    const-string v5, "from"

    const-string v6, "MHL"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    iget-object v5, p0, Lcom/android/server/MhlRcpObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 325
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 331
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_14
    const/16 v1, 0x56

    .line 332
    .restart local v1       #keyCodeInt:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/MhlRcpObserver;->IsMediakey:Z

    .line 333
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 334
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 338
    .end local v1           #keyCodeInt:I
    :pswitch_15
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: This event not supported -> event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 342
    :pswitch_16
    const/16 v1, 0x59

    .line 343
    .restart local v1       #keyCodeInt:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/MhlRcpObserver;->IsMediakey:Z

    .line 344
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 345
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 349
    .end local v1           #keyCodeInt:I
    :pswitch_17
    const/16 v1, 0x5a

    .line 350
    .restart local v1       #keyCodeInt:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/MhlRcpObserver;->IsMediakey:Z

    .line 351
    invoke-direct {p0, v1}, Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V

    .line 352
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: Recive MHL_RCP event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Send key event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 371
    .end local v1           #keyCodeInt:I
    :pswitch_18
    const-string v5, "MhlRcpObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE: This event not supported -> event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_12
        :pswitch_18
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
    .end packed-switch
.end method
