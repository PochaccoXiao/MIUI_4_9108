.class public Landroid/deviceencryption/DeviceEncryptionManager;
.super Ljava/lang/Object;
.source "DeviceEncryptionManager.java"


# static fields
.field public static final CRYPT_ACTIVITY_POPUP_TYPE_AFTER_FORMAT:I = 0x20

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_AFTER_REBOOT:I = 0x40

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_AFTER_REINSERT:I = 0x60

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_ENABLE_POLICY:I = 0x2

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_ERROR:I = 0x10

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_FIRST_STORAGE:I = 0x0

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_SECOND_STORAGE:I = 0x1

.field public static final DECRYPT:I = 0x0

.field public static final ECRYPT_ACTIVITY_POPUP_INTENT_NAME:Ljava/lang/String; = "encyprt_activity_popuptype"

.field public static final ECRYPT_ACTIVITY_POPUP_TYPE_NOTI_ERR_BATCH:I = 0x40

.field public static final ECRYPT_ACTIVITY_POPUP_TYPE_NOTI_ERR_MAPPING:I = 0x50

.field public static final ECRYPT_ACTIVITY_POPUP_TYPE_SHARED_BIT:I = 0x8

.field public static final ENCRYPT:I = 0x1

.field public static final ENCRYPT_ACTION:Ljava/lang/String; = "com.sec.android.app.encrypt.action.ENCRYPT"

.field public static final EXTERNAL:Ljava/lang/String; = "external"

.field public static final EXTERNAL_STORAGE:I = 0x0

.field public static final EXT_POLICY_STATUS_BIT_ENC:I = 0x4

.field public static final EXT_STATUS_BIT_COMP:I = 0x1

.field public static final EXT_STATUS_BIT_DECB:I = 0x2

.field public static final EXT_STATUS_BIT_ENCB:I = 0x3

.field public static final EXT_STATUS_BIT_NULL:I = 0x0

.field public static final INTERNAL:Ljava/lang/String; = "internal"

.field public static final INTERNAL_EXTERNAL:Ljava/lang/String; = "internal:external"

.field public static final INTERNAL_STORAGE:I = 0x1

.field private static final LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object; = null

.field private static final NORMAL_PASSWORD:I = 0x0

.field public static final POLICY_APPLIED:Ljava/lang/String; = "com.sec.android.app.encrypt.action.POLICY_APPLIED"

.field private static final RECOVERY_PASSWORD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceEncryption"

.field public static final WHOLE_STORAGE:I = 0x2

.field private static final debug:Z

.field public static final enabled:Ljava/lang/String;

.field private static isFirstboot:Z

.field public static m_InstEncSvc:Landroid/os/storage/IEncryptService;

.field public static final supportFileLevelEncryption:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, "false"

    .line 22
    const-string/jumbo v0, "ro.secdevenc"

    const-string v1, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "ro.file_level_encryption"

    const-string v1, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->supportFileLevelEncryption:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/deviceencryption/DeviceEncryptionManager$1;

    invoke-direct {v0}, Landroid/deviceencryption/DeviceEncryptionManager$1;-><init>()V

    sput-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Landroid/deviceencryption/DeviceEncryptionManager;->isFirstboot:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/deviceencryption/DeviceEncryptionManager;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method public static checkPassword(Ljava/lang/String;)Z
    .locals 6
    .parameter "password"

    .prologue
    const/4 v4, 0x0

    const-string v5, "DeviceEncryption"

    .line 268
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 301
    :goto_0
    return v2

    .line 270
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    :cond_1
    move v2, v4

    .line 271
    goto :goto_0

    .line 274
    :cond_2
    const/4 v1, 0x0

    .line 275
    .local v1, ret:Z
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v2

    .line 276
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3}, Landroid/deviceencryption/DeviceEncryptionManager;->verifyPassword(Ljava/lang/String;I)Z

    move-result v1

    .line 277
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    if-eqz v1, :cond_4

    .line 285
    :try_start_1
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-nez v2, :cond_3

    .line 286
    const-string v2, "encrypt"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;

    move-result-object v2

    sput-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    .line 289
    :cond_3
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-eqz v2, :cond_5

    .line 290
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    invoke-interface {v2, p0}, Landroid/os/storage/IEncryptService;->setPassword(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    move v2, v1

    .line 301
    goto :goto_0

    .line 277
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 292
    :cond_5
    :try_start_3
    const-string v2, "DeviceEncryption"

    const-string v3, "checkPassword : IEncryptService instance is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 294
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 296
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DeviceEncryption"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checkPassword : exception =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static native getBatchStatus(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getCryptBatchStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "label"

    .prologue
    .line 404
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 415
    :goto_0
    return-object v1

    .line 410
    :cond_0
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->getBatchStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, propertyBuffer:Ljava/lang/String;
    monitor-exit v1

    move-object v1, v0

    .line 415
    goto :goto_0

    .line 412
    .end local v0           #propertyBuffer:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getExternalStorageStatus()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 227
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 238
    :goto_0
    return v1

    .line 229
    :cond_0
    const-string/jumbo v1, "policy"

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, appliedPolicy:Ljava/lang/String;
    if-nez v0, :cond_1

    move v1, v3

    .line 232
    goto :goto_0

    .line 235
    :cond_1
    const-string v1, "external"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v4

    .line 236
    goto :goto_0

    :cond_2
    move v1, v3

    .line 238
    goto :goto_0
.end method

.method public static getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "label"

    .prologue
    .line 420
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 431
    :goto_0
    return-object v1

    .line 426
    :cond_0
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    :try_start_0
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, propertyBuffer:Ljava/lang/String;
    monitor-exit v1

    move-object v1, v0

    .line 431
    goto :goto_0

    .line 428
    .end local v0           #propertyBuffer:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static native getFileProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native getFipsMode()Z
.end method

.method public static getInternalStorageStatus()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 216
    :goto_0
    return v1

    .line 207
    :cond_0
    const-string/jumbo v1, "policy"

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, appliedPolicy:Ljava/lang/String;
    if-nez v0, :cond_1

    move v1, v3

    .line 210
    goto :goto_0

    .line 213
    :cond_1
    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v4

    .line 214
    goto :goto_0

    :cond_2
    move v1, v3

    .line 216
    goto :goto_0
.end method

.method public static getSaltFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getSaltPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getSaltPath()Ljava/lang/String;
.end method

.method public static inFipsMode()Z
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getFipsMode()Z

    move-result v0

    return v0
.end method

.method public static isDeviceEncryptionEnabled()Z
    .locals 2

    .prologue
    .line 251
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static native isEncryptTarget(Ljava/lang/String;)I
.end method

.method public static isFileEncryptionEnabled()Z
    .locals 2

    .prologue
    .line 264
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->supportFileLevelEncryption:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLockPasswordEnabled()Z
    .locals 3

    .prologue
    .line 372
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 382
    :goto_0
    return v1

    .line 373
    :cond_0
    const/4 v0, 0x0

    .line 376
    .local v0, ret:Z
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isPasswordEnabled()Z

    move-result v0

    .line 378
    monitor-exit v1

    move v1, v0

    .line 382
    goto :goto_0

    .line 378
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static isOKtoRemoveKEY()Z
    .locals 3

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 464
    .local v0, ret:I
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isOktoRemoveEDKP()I

    move-result v0

    .line 466
    monitor-exit v1

    .line 468
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 469
    :goto_0
    return v1

    .line 466
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 469
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static native isOktoRemoveEDKP()I
.end method

.method private static native isPasswordEnabled()Z
.end method

.method public static isPasswordRequired()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 365
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 367
    :goto_0
    return v0

    .line 366
    :cond_0
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isLockPasswordEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 367
    goto :goto_0
.end method

.method public static isTargetToEncrypt(Ljava/lang/String;)Z
    .locals 3
    .parameter "label"

    .prologue
    .line 474
    const/4 v0, 0x0

    .line 478
    .local v0, ret:I
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 479
    :try_start_0
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->isEncryptTarget(Ljava/lang/String;)I

    move-result v0

    .line 480
    monitor-exit v1

    .line 484
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 485
    :goto_0
    return v1

    .line 480
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 485
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static native recoverPassword(Ljava/lang/String;)Z
.end method

.method private static native removeEDKP()V
.end method

.method public static removeKeyByForce()V
    .locals 2

    .prologue
    .line 453
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    :goto_0
    return-void

    .line 455
    :cond_0
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_0
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->removeEDKP()V

    .line 457
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static resetPassword(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .parameter "password"
    .parameter "obj"

    .prologue
    .line 386
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 399
    :goto_0
    return v1

    .line 387
    :cond_0
    const/4 v0, 0x0

    .line 390
    .local v0, ret:Z
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 391
    :try_start_0
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->recoverPassword(Ljava/lang/String;)Z

    move-result v0

    .line 392
    monitor-exit v1

    .line 394
    if-eqz p1, :cond_1

    :cond_1
    move v1, v0

    .line 399
    goto :goto_0

    .line 392
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static saveLockPassword(Ljava/lang/String;)Z
    .locals 6
    .parameter "password"

    .prologue
    const-string v2, "DeviceEncryption"

    .line 307
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 331
    :goto_0
    return v2

    .line 311
    :cond_0
    const/4 v1, 0x1

    .line 314
    .local v1, result:Z
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v2

    .line 316
    :try_start_0
    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-nez v3, :cond_1

    .line 317
    const-string v3, "encrypt"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;

    move-result-object v3

    sput-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    .line 319
    :cond_1
    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-eqz v3, :cond_2

    .line 320
    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    invoke-interface {v3, p0}, Landroid/os/storage/IEncryptService;->setPassword(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .line 331
    goto :goto_0

    .line 323
    :cond_2
    :try_start_2
    const-string v3, "DeviceEncryption"

    const-string v4, "checkPassword : IEncryptService instance is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 324
    const/4 v1, 0x0

    goto :goto_1

    .line 326
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 327
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "DeviceEncryption"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " checkPassword : exception =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v1, 0x0

    goto :goto_1

    .line 330
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method private static native savePassword(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public static saveRecoveryPassword(Ljava/lang/String;)Z
    .locals 6
    .parameter "newPassword"

    .prologue
    const-string v2, "DeviceEncryption"

    .line 335
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 360
    :goto_0
    return v2

    .line 340
    :cond_0
    const/4 v1, 0x1

    .line 343
    .local v1, result:Z
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v2

    .line 345
    :try_start_0
    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-nez v3, :cond_1

    .line 346
    const-string v3, "encrypt"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;

    move-result-object v3

    sput-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    .line 348
    :cond_1
    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-eqz v3, :cond_2

    .line 349
    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    invoke-interface {v3, p0}, Landroid/os/storage/IEncryptService;->setRecoveryPassword(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .line 360
    goto :goto_0

    .line 352
    :cond_2
    :try_start_2
    const-string v3, "DeviceEncryption"

    const-string v4, "checkPassword : IEncryptService instance is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 353
    const/4 v1, 0x0

    goto :goto_1

    .line 355
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 356
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "DeviceEncryption"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " checkPassword : exception =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v1, 0x0

    goto :goto_1

    .line 359
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method private setEncryptPolicyInternal(IIZ)V
    .locals 6
    .parameter "internal"
    .parameter "external"
    .parameter "force"

    .prologue
    const/4 v5, 0x1

    .line 163
    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v1, ""

    .line 167
    .local v1, cmd:Ljava/lang/String;
    if-ne p1, v5, :cond_4

    if-ne p2, v5, :cond_4

    .line 168
    const-string v1, "internal:external"

    .line 175
    :cond_2
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.app.encrypt.action.ENCRYPT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v3, "cmd"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v3, "force"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    const-string v3, "com.sec.android.app.encrypt"

    const-string v4, "com.sec.android.app.encrypt.DeviceEncryptionActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v3, p0, Landroid/deviceencryption/DeviceEncryptionManager;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 184
    .local v0, DPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_3

    .line 185
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->setEncryptionPolicyWithEncryptApp(Landroid/content/Intent;)Z

    move-result v3

    if-eq v3, v5, :cond_0

    .line 192
    :cond_3
    const-string v3, "DeviceEncryption"

    const-string/jumbo v4, "setEncryptPolicyInternal for system application"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v3, p0, Landroid/deviceencryption/DeviceEncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 169
    .end local v0           #DPM:Landroid/app/admin/DevicePolicyManager;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    if-ne p1, v5, :cond_5

    .line 170
    const-string v1, "internal"

    goto :goto_1

    .line 171
    :cond_5
    if-ne p2, v5, :cond_2

    .line 172
    const-string v1, "external"

    goto :goto_1
.end method

.method public static setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "label"
    .parameter "value"

    .prologue
    .line 435
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 445
    :goto_0
    return v1

    .line 436
    :cond_0
    const/4 v0, 0x0

    .line 441
    .local v0, ret:I
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_0
    invoke-static {p0, p1}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 443
    monitor-exit v1

    move v1, v0

    .line 445
    goto :goto_0

    .line 443
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static native setFileProperty(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native verifyPassword(Ljava/lang/String;I)Z
.end method


# virtual methods
.method public setEncryptPolicy(II)V
    .locals 5
    .parameter "which"
    .parameter "policy"

    .prologue
    const/4 v4, 0x1

    .line 107
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v1, 0x0

    .local v1, internal:I
    const/4 v0, 0x0

    .line 111
    .local v0, external:I
    if-eq p2, v4, :cond_2

    if-nez p2, :cond_0

    .line 113
    :cond_2
    if-nez p1, :cond_5

    .line 114
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 115
    const/4 v1, 0x1

    .line 117
    :cond_3
    move v0, p2

    .line 128
    :cond_4
    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicyInternal(IIZ)V

    goto :goto_0

    .line 118
    :cond_5
    if-ne p1, v4, :cond_7

    .line 119
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v2

    if-ne v2, v4, :cond_6

    .line 120
    const/4 v0, 0x1

    .line 122
    :cond_6
    move v1, p2

    goto :goto_1

    .line 123
    :cond_7
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 124
    move v1, p2

    .line 125
    move v0, p2

    goto :goto_1
.end method

.method public setEncryptionPolicy(II)V
    .locals 1
    .parameter "internal"
    .parameter "external"

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicyInternal(IIZ)V

    .line 141
    return-void
.end method

.method public setEncryptionPolicy(IIZ)V
    .locals 0
    .parameter "internal"
    .parameter "external"
    .parameter "force"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicyInternal(IIZ)V

    .line 160
    return-void
.end method
