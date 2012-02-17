.class public Lcom/android/settings/de/DeviceEncryption;
.super Ljava/lang/Object;
.source "DeviceEncryption.java"


# direct methods
.method public static isB2CDeviceEncryptionFeatured()Z
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDeviceEncrypted()Z
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isPhoneEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isSDcardEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPhoneEncrypted()Z
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v0

    return v0
.end method

.method private static isSDcardEncrypted()Z
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v0

    return v0
.end method
