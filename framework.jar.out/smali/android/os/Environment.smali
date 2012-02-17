.class public Landroid/os/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# static fields
.field private static final DATA_DIRECTORY:Ljava/io/File; = null

.field public static DIRECTORY_ALARMS:Ljava/lang/String; = null

.field public static DIRECTORY_DCIM:Ljava/lang/String; = null

.field public static DIRECTORY_DOWNLOADS:Ljava/lang/String; = null

.field public static DIRECTORY_MOVIES:Ljava/lang/String; = null

.field public static DIRECTORY_MUSIC:Ljava/lang/String; = null

.field public static DIRECTORY_NOTIFICATIONS:Ljava/lang/String; = null

.field public static DIRECTORY_PICTURES:Ljava/lang/String; = null

.field public static DIRECTORY_PODCASTS:Ljava/lang/String; = null

.field public static DIRECTORY_RINGTONES:Ljava/lang/String; = null

.field private static final DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_SDCARD_ANDROID_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_SDCARD_ANDROID_MEDIA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_SDCARD_DIRECTORY:Ljava/io/File; = null

.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final MEDIA_PENDING:Ljava/lang/String; = "pending"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field private static final ROOT_DIRECTORY:Ljava/io/File; = null

.field private static final SECURE_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final STORAGE_INSTALLED_PACKAGE_DIRECTORYS:[Ljava/io/File; = null

.field private static final SYSTEM_PROPERTY_EFS_ENABLED:Ljava/lang/String; = "persist.security.efs.enabled"

.field private static final TAG:Ljava/lang/String; = "Environment"

.field private static final USBHOST_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

.field private static final USBHOST_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

.field private static final USBHOST_STORAGE_DIRECTORY:Ljava/io/File;

.field private static mMntSvc:Landroid/os/storage/IMountService;

.field private static mUsbSvc:Landroid/os/storage/IUsbStorageService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const-string v8, "EXTERNAL_STORAGE"

    const-string v7, "/mnt/sdcard/usbStorage"

    const-string v6, "/mnt/sdcard/external_sd"

    const-string v5, "/mnt/sdcard"

    const-string v4, "Android"

    .line 37
    const-string v0, "ANDROID_ROOT"

    const-string v1, "/system"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->ROOT_DIRECTORY:Ljava/io/File;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    .line 92
    const-string v0, "ANDROID_DATA"

    const-string v1, "/data"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    .line 98
    const-string v0, "ANDROID_SECURE_DATA"

    const-string v1, "/data/secure"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 102
    const-string v0, "EXTERNAL_STORAGE"

    const-string v0, "/mnt/sdcard"

    invoke-static {v8, v5}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 105
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE"

    const-string v2, "/mnt/sdcard"

    invoke-static {v8, v5}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    .line 108
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE"

    const-string v2, "/mnt/sdcard"

    invoke-static {v8, v5}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    .line 113
    const-string v0, "EXTERNAL_STORAGE2"

    const-string v1, "/mnt/sdcard/external_sd"

    invoke-static {v0, v6}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_DIRECTORY:Ljava/io/File;

    .line 116
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE2"

    const-string v3, "/mnt/sdcard/external_sd"

    invoke-static {v2, v6}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    .line 120
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE2"

    const-string v3, "/mnt/sdcard/external_sd"

    invoke-static {v2, v6}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    .line 125
    const-string v0, "USBHOST_STORAGE"

    const-string v1, "/mnt/sdcard/usbStorage"

    invoke-static {v0, v7}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->USBHOST_STORAGE_DIRECTORY:Ljava/io/File;

    .line 128
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "USBHOST_STORAGE"

    const-string v3, "/mnt/sdcard/usbStorage"

    invoke-static {v2, v7}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->USBHOST_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    .line 131
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "USBHOST_STORAGE"

    const-string v3, "/mnt/sdcard/usbStorage"

    invoke-static {v2, v7}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->USBHOST_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    .line 135
    const-string v0, "DOWNLOAD_CACHE"

    const-string v1, "/cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    .line 210
    const-string v0, "Music"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 222
    const-string v0, "Podcasts"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    .line 234
    const-string v0, "Ringtones"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .line 246
    const-string v0, "Alarms"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    .line 258
    const-string v0, "Notifications"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    .line 266
    const-string v0, "Pictures"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 274
    const-string v0, "Movies"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 284
    const-string v0, "Download"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 291
    const-string v0, "DCIM"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 554
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_DIRECTORY:Ljava/io/File;

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/Environment;->STORAGE_INSTALLED_PACKAGE_DIRECTORYS:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "variableName"
    .parameter "defaultPath"

    .prologue
    .line 611
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDownloadCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalMemoryStatus()Z
    .locals 3

    .prologue
    .line 633
    const/4 v0, 0x0

    .line 634
    .local v0, mounted:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, statusExternal:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    const/4 v0, 0x1

    .line 644
    :goto_0
    return v0

    .line 640
    :cond_0
    const-string/jumbo v1, "unmounted"

    goto :goto_0
.end method

.method public static getExternalStorageAndroidDataDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 326
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 358
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 334
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 350
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 342
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStorageDirectorySd()Ljava/io/File;
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_DIRECTORY:Ljava/io/File;

    .line 191
    :goto_0
    return-object v0

    .line 190
    :cond_0
    const-string v0, "Environment"

    const-string v1, "getExternalStorageDirectorySd :: invalid call "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_SDCARD_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getExternalStorageDirectoryUsbHost()Ljava/io/File;
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Landroid/os/Environment;->isUsbHostStorageInsalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Landroid/os/Environment;->USBHOST_STORAGE_DIRECTORY:Ljava/io/File;

    .line 199
    :goto_0
    return-object v0

    .line 198
    :cond_0
    const-string v0, "Environment"

    const-string v1, "getExternalStorageDirectoryUsbHost :: invalid call "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Landroid/os/Environment;->USBHOST_STORAGE_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getExternalStorageListUsbHost()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 494
    invoke-static {}, Landroid/os/Environment;->isUsbHostStorageInsalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    new-array v1, v2, [Ljava/lang/String;

    .line 504
    :goto_0
    return-object v1

    .line 498
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    if-nez v1, :cond_1

    .line 499
    const-string/jumbo v1, "usbstorage"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IUsbStorageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IUsbStorageService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    .line 502
    :cond_1
    sget-object v1, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    invoke-interface {v1}, Landroid/os/storage/IUsbStorageService;->getVolumeList()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 503
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 504
    .local v0, rex:Ljava/lang/Exception;
    new-array v1, v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "type"

    .prologue
    .line 318
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 431
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 432
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 435
    :cond_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 437
    :goto_0
    return-object v1

    .line 436
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 437
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    goto :goto_0
.end method

.method public static getExternalStorageStateSd()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v3, "removed"

    .line 442
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    const-string v1, "Environment"

    const-string v2, "getExternalStorageStateSd :: invalid call "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string/jumbo v1, "removed"

    move-object v1, v3

    .line 454
    :goto_0
    return-object v1

    .line 448
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_1

    .line 449
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 452
    :cond_1
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 453
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 454
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    move-object v1, v3

    goto :goto_0
.end method

.method public static getExternalStorageStateUsbHost()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v3, "removed"

    .line 460
    invoke-static {}, Landroid/os/Environment;->isUsbHostStorageInsalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    const-string v1, "Environment"

    const-string v2, "getExternalStorageStateUsbHost :: invalid call "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string/jumbo v1, "removed"

    move-object v1, v3

    .line 472
    :goto_0
    return-object v1

    .line 466
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_1

    .line 467
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 470
    :cond_1
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 471
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 472
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    move-object v1, v3

    goto :goto_0
.end method

.method public static getExternalStorageStateUsbHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    const-string/jumbo v3, "removed"

    .line 477
    invoke-static {}, Landroid/os/Environment;->isUsbHostStorageInsalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    const-string v1, "Environment"

    const-string v2, "getExternalStorageStateUsbHost :: invalid call "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string/jumbo v1, "removed"

    move-object v1, v3

    .line 489
    :goto_0
    return-object v1

    .line 483
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    if-nez v1, :cond_1

    .line 484
    const-string/jumbo v1, "usbstorage"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IUsbStorageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IUsbStorageService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    .line 487
    :cond_1
    sget-object v1, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    invoke-interface {v1, p0}, Landroid/os/storage/IUsbStorageService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 488
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 489
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    move-object v1, v3

    goto :goto_0
.end method

.method public static getExternalStoragesList()[Ljava/lang/String;
    .locals 6

    .prologue
    const-string v4, "Environment"

    .line 526
    :try_start_0
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 527
    .local v2, mountService:Landroid/os/storage/IMountService;
    const-string v4, "Environment"

    const-string v5, "getExternalStorageList"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getVolumeList()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 535
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    .local v1, list:[Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 536
    .local v3, rdata:Ljava/util/ArrayList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageListUsbHost()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 537
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 529
    .end local v1           #list:[Ljava/lang/String;
    .end local v3           #rdata:Ljava/util/ArrayList;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 530
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Environment"

    const-string v5, "couldn\'t talk to MountService"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1       #list:[Ljava/lang/String;
    goto :goto_0

    .line 532
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #list:[Ljava/lang/String;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method public static getExternalVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 542
    :try_start_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 543
    .local v1, mMntSvc:Landroid/os/storage/IMountService;
    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 548
    .end local v1           #mMntSvc:Landroid/os/storage/IMountService;
    :goto_0
    return-object v3

    .line 544
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 546
    .local v2, rex:Ljava/lang/Exception;
    :try_start_1
    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageStateUsbHost(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 547
    :catch_1
    move-exception v0

    .line 548
    .local v0, e:Ljava/lang/Exception;
    const-string/jumbo v3, "removed"

    goto :goto_0
.end method

.method public static getInstalledStorageDirectory()[Ljava/io/File;
    .locals 1

    .prologue
    .line 556
    sget-object v0, Landroid/os/Environment;->STORAGE_INSTALLED_PACKAGE_DIRECTORYS:[Ljava/io/File;

    return-object v0
.end method

.method public static getInstalledStorageState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "Directory"

    .prologue
    .line 561
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 562
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 565
    :cond_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->getAsecVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 567
    :goto_0
    return-object v1

    .line 566
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 567
    .local v0, rex:Ljava/lang/Exception;
    const-string/jumbo v1, "removed"

    goto :goto_0
.end method

.method public static getInternalMemoryStatus()Z
    .locals 3

    .prologue
    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, mounted:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, statusInternal:Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    const/4 v0, 0x1

    .line 628
    :goto_0
    return v0

    .line 624
    :cond_0
    const-string/jumbo v1, "unmounted"

    goto :goto_0
.end method

.method public static getRootDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/os/Environment;->ROOT_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getSecureDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 78
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getSystemSecureDirectory()Ljava/io/File;
    .locals 4

    .prologue
    const-string/jumbo v3, "system"

    .line 60
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isEncryptedFilesystemEnabled()Z
    .locals 2

    .prologue
    .line 89
    const-string/jumbo v0, "persist.security.efs.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageFirstInsalled()Z
    .locals 2

    .prologue
    .line 596
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageRemovable()Z
    .locals 2

    .prologue
    .line 579
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageRemovableSd()Z
    .locals 2

    .prologue
    .line 584
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageRemovableUsbHost()Z
    .locals 2

    .prologue
    .line 589
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageSecondInsalled()Z
    .locals 2

    .prologue
    .line 601
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isUsbHostStorageInsalled()Z
    .locals 2

    .prologue
    .line 606
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isUsbStorageConnected()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 509
    invoke-static {}, Landroid/os/Environment;->isUsbHostStorageInsalled()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 519
    :goto_0
    return v1

    .line 513
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    if-nez v1, :cond_1

    .line 514
    const-string/jumbo v1, "usbstorage"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IUsbStorageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IUsbStorageService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    .line 517
    :cond_1
    sget-object v1, Landroid/os/Environment;->mUsbSvc:Landroid/os/storage/IUsbStorageService;

    invoke-interface {v1}, Landroid/os/storage/IUsbStorageService;->isUsbStorageConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 518
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, rex:Ljava/lang/Exception;
    move v1, v2

    .line 519
    goto :goto_0
.end method
