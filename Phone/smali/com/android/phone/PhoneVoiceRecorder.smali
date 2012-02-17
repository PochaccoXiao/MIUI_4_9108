.class public Lcom/android/phone/PhoneVoiceRecorder;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;
    }
.end annotation


# static fields
.field public static FILE_EXTENTION:Ljava/lang/String;

.field public static FILE_PREFIX:Ljava/lang/String;

.field public static PHONE_PATH:Ljava/lang/String;

.field public static SD_PATH:Ljava/lang/String;

.field private static app:Lcom/android/phone/PhoneApp;

.field public static mStartRecordTime:J


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final RECORD_START:I

.field private final RECORD_STOP:I

.field private callAddress:Ljava/lang/String;

.field public isRecording:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallCard:Lcom/android/phone/CallCard;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

.field private mRecordingTimeInMiliSecond:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sounds/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/external_sd/Sounds/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneVoiceRecorder;->SD_PATH:Ljava/lang/String;

    .line 78
    const-string v0, "VoiceCall"

    sput-object v0, Lcom/android/phone/PhoneVoiceRecorder;->FILE_PREFIX:Ljava/lang/String;

    .line 80
    const-string v0, ".amr"

    sput-object v0, Lcom/android/phone/PhoneVoiceRecorder;->FILE_EXTENTION:Ljava/lang/String;

    .line 85
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/phone/CallCard;)V
    .locals 3
    .parameter "context"
    .parameter "callCard"

    .prologue
    const-string v2, "PhoneVoiceRecorder"

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "PhoneVoiceRecorder"

    iput-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->LOG_TAG:Ljava/lang/String;

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordingTimeInMiliSecond:J

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    .line 111
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->RECORD_START:I

    .line 112
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->RECORD_STOP:I

    .line 114
    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneVoiceRecorder$1;-><init>(Lcom/android/phone/PhoneVoiceRecorder;)V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    .line 92
    const-string v0, "PhoneVoiceRecorder"

    const-string v0, "PhoneVoiceRecorder Create : "

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    .line 96
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneVoiceRecorder;->app:Lcom/android/phone/PhoneApp;

    .line 97
    sget-object v0, Lcom/android/phone/PhoneVoiceRecorder;->app:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 99
    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->init()V

    .line 100
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneVoiceRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/phone/PhoneVoiceRecorder;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordingTimeInMiliSecond:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/CallCard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/phone/PhoneApp;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/phone/PhoneVoiceRecorder;->app:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private checkAvailableStorage()Z
    .locals 6

    .prologue
    .line 214
    const-wide/32 v2, 0xa00000

    .line 215
    .local v2, LOW_STORAGE_THRESHOLD:J
    const-wide/32 v0, 0x10000000

    .line 217
    .local v0, HIGH_STORAGE_THRESHOLD:J
    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->getAvailableStorage()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    .line 218
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getAvailableStorage()J
    .locals 6

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, storageDirectory:Ljava/lang/String;
    const-string v2, "PhoneVoiceRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableStorage. storageDirectory : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    .line 106
    iput-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->callAddress:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    .line 108
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    .line 109
    return-void
.end method


# virtual methods
.method public checkMediaScannerRunning(Landroid/content/ContentResolver;)Z
    .locals 11
    .parameter "cr"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 182
    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "checkMediaScannerRunning()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v8, 0x0

    .line 184
    .local v8, result:Z
    if-nez p1, :cond_0

    move v0, v8

    .line 202
    :goto_0
    return v0

    .line 187
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "volume"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 190
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_1

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 193
    const-string v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 196
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v8

    .line 202
    goto :goto_0

    .line 198
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    move v0, v9

    .line 199
    goto :goto_0
.end method

.method public checkSDCardMount()Z
    .locals 3

    .prologue
    .line 206
    const-string v1, "PhoneVoiceRecorder"

    const-string v2, "checkMediaScannerRunning()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, result:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 210
    return v0
.end method

.method public isVoiceRecording()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    return v0
.end method

.method public startRecord()V
    .locals 3

    .prologue
    const-string v2, "PhoneVoiceRecorder"

    .line 135
    const-string v0, "PhoneVoiceRecorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecord : callAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->callAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    if-nez v0, :cond_3

    .line 138
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneVoiceRecorder;->checkMediaScannerRunning(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "PhoneVoiceRecorder"

    const-string v0, "checkMediaScannerRunning"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const v0, 0x7f0d0387

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startToast(I)V

    .line 160
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder;->checkSDCardMount()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    const-string v0, "PhoneVoiceRecorder"

    const-string v0, "checkSDCardMount"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const v0, 0x7f0d0389

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startToast(I)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->checkAvailableStorage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    const-string v0, "PhoneVoiceRecorder"

    const-string v0, "checkAvailableStorage"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const v0, 0x7f0d0384

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startToast(I)V

    goto :goto_0

    .line 155
    :cond_2
    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/PhoneVoiceRecorder;Lcom/android/phone/PhoneVoiceRecorder$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    .line 156
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->start()V

    goto :goto_0

    .line 158
    :cond_3
    const-string v0, "PhoneVoiceRecorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecord fail : callindex == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder;->callAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "stopRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stopRecording()V

    .line 166
    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->init()V

    .line 168
    :cond_0
    return-void
.end method
