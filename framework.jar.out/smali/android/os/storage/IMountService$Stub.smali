.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_createSecureContainerWithPath:I = 0x51

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_destroySecureContainerWithPath:I = 0x52

.field static final TRANSACTION_enableShared:I = 0x6c

.field static final TRANSACTION_encryptBatchVolume:I = 0x68

.field static final TRANSACTION_encryptFormatVolume:I = 0x6a

.field static final TRANSACTION_encryptMountVolume:I = 0x69

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finalizeSecureContainerWithPath:I = 0x53

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getAsecVolumeState:I = 0x5c

.field static final TRANSACTION_getDeviceDriverPath:I = 0x5d

.field static final TRANSACTION_getEncryptedStatus:I = 0x6b

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPlayNotificationSounds:I = 0x60

.field static final TRANSACTION_getSecureContainerInstalledPath:I = 0x5b

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerListAll:I = 0x5a

.field static final TRANSACTION_getSecureContainerListWithPath:I = 0x59

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getSecureContainerPathWithPath:I = 0x58

.field static final TRANSACTION_getShowSafeUnmountNotification:I = 0x62

.field static final TRANSACTION_getStorageCidNumber:I = 0x65

.field static final TRANSACTION_getStorageSerialNumber:I = 0x64

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0x6d

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_isEncryptionEnabled:I = 0x66

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isSecureContainerMountedWithPath:I = 0x56

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountSecureContainerWithPath:I = 0x54

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_registerCallBackListener:I = 0x5e

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_renameSecureContainerWithPath:I = 0x57

.field static final TRANSACTION_setEncryptionEnabled:I = 0x67

.field static final TRANSACTION_setPlayNotificationSounds:I = 0x61

.field static final TRANSACTION_setShowSafeUnmountNotification:I = 0x63

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountSecureContainerWithPath:I = 0x55

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterCallBackListener:I = 0x5f

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1250
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1251
    const-string v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1252
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 1239
    if-nez p0, :cond_0

    .line 1240
    const/4 v1, 0x0

    .line 1246
    :goto_0
    return-object v1

    .line 1242
    :cond_0
    const-string v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1243
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 1244
    check-cast v0, Landroid/os/storage/IMountService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 1246
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/storage/IMountService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1255
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 41
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1261
    sparse-switch p1, :sswitch_data_0

    .line 1842
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 1263
    :sswitch_0
    const-string v5, "IMountService"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1264
    const/4 v5, 0x1

    goto :goto_0

    .line 1267
    :sswitch_1
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v25

    .line 1270
    .local v25, listener:Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    const/4 v5, 0x1

    goto :goto_0

    .line 1275
    .end local v25           #listener:Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v25

    .line 1278
    .restart local v25       #listener:Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    const/4 v5, 0x1

    goto :goto_0

    .line 1283
    .end local v25           #listener:Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v34

    .line 1285
    .local v34, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    if-eqz v34, :cond_0

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1287
    const/4 v5, 0x1

    goto :goto_0

    .line 1286
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 1290
    .end local v34           #result:Z
    :sswitch_4
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 1293
    .local v20, enable:Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 1294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    const/4 v5, 0x1

    goto :goto_0

    .line 1292
    .end local v20           #enable:Z
    :cond_1
    const/4 v5, 0x0

    move/from16 v20, v5

    goto :goto_2

    .line 1298
    :sswitch_5
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1299
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v34

    .line 1300
    .restart local v34       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    if-eqz v34, :cond_2

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1301
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 1305
    .end local v34           #result:Z
    :sswitch_6
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1308
    .local v26, mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v35

    .line 1309
    .local v35, resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1310
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1314
    .end local v26           #mountPoint:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_7
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1318
    .restart local v26       #mountPoint:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1319
    .local v23, force:Z
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;Z)V

    .line 1320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1318
    .end local v23           #force:Z
    :cond_3
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_4

    .line 1324
    .end local v26           #mountPoint:Ljava/lang/String;
    :sswitch_8
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1327
    .restart local v26       #mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v34

    .line 1328
    .local v34, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1330
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1333
    .end local v26           #mountPoint:Ljava/lang/String;
    .end local v34           #result:I
    :sswitch_9
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1336
    .local v12, path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v33

    .line 1337
    .local v33, pids:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1339
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1342
    .end local v12           #path:Ljava/lang/String;
    .end local v33           #pids:[I
    :sswitch_a
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1345
    .restart local v26       #mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1346
    .local v38, state:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1348
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1351
    .end local v26           #mountPoint:Ljava/lang/String;
    .end local v38           #state:Ljava/lang/String;
    :sswitch_b
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1355
    .local v6, id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1357
    .local v7, sizeMb:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1359
    .local v8, fstype:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1361
    .local v9, key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, ownerUid:I
    move-object/from16 v5, p0

    .line 1362
    invoke-virtual/range {v5 .. v10}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1363
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1364
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1365
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1369
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #sizeMb:I
    .end local v8           #fstype:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #ownerUid:I
    .end local v35           #resultCode:I
    :sswitch_c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1373
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1375
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1377
    .restart local v7       #sizeMb:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1379
    .restart local v8       #fstype:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1381
    .restart local v9       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10       #ownerUid:I
    move-object/from16 v11, p0

    move-object v13, v6

    move v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    move/from16 v17, v10

    .line 1382
    invoke-virtual/range {v11 .. v17}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1383
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1384
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1385
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1389
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #sizeMb:I
    .end local v8           #fstype:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #ownerUid:I
    .end local v12           #path:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_d
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1392
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v35

    .line 1393
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1399
    .end local v6           #id:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_e
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1403
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1404
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1405
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1410
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_f
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1414
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1415
    .restart local v23       #force:Z
    :goto_5
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v35

    .line 1416
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1418
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1414
    .end local v23           #force:Z
    .end local v35           #resultCode:I
    :cond_4
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_5

    .line 1422
    .end local v6           #id:Ljava/lang/String;
    :sswitch_10
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1426
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1428
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1429
    .restart local v23       #force:Z
    :goto_6
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v35

    .line 1430
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1431
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1432
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1428
    .end local v23           #force:Z
    .end local v35           #resultCode:I
    :cond_5
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_6

    .line 1435
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    :sswitch_11
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1439
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1441
    .restart local v9       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1442
    .restart local v10       #ownerUid:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v9

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1443
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1445
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1449
    .end local v6           #id:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #ownerUid:I
    .end local v35           #resultCode:I
    :sswitch_12
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1453
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1455
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1457
    .restart local v9       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1458
    .restart local v10       #ownerUid:I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    move-object v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1459
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1461
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1464
    .end local v6           #id:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #ownerUid:I
    .end local v12           #path:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_13
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1468
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1469
    .restart local v23       #force:Z
    :goto_7
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v35

    .line 1470
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1472
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1468
    .end local v23           #force:Z
    .end local v35           #resultCode:I
    :cond_6
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_7

    .line 1475
    .end local v6           #id:Ljava/lang/String;
    :sswitch_14
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1479
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1481
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1482
    .restart local v23       #force:Z
    :goto_8
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v35

    .line 1483
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1481
    .end local v23           #force:Z
    .end local v35           #resultCode:I
    :cond_7
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_8

    .line 1488
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    :sswitch_15
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1491
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v39

    .line 1492
    .local v39, status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    if-eqz v39, :cond_8

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1493
    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    .line 1498
    .end local v6           #id:Ljava/lang/String;
    .end local v39           #status:Z
    :sswitch_16
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1502
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1503
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v39

    .line 1504
    .restart local v39       #status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1505
    if-eqz v39, :cond_9

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1506
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1505
    :cond_9
    const/4 v5, 0x0

    goto :goto_a

    .line 1509
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    .end local v39           #status:Z
    :sswitch_17
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1513
    .local v31, oldId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 1514
    .local v28, newId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1515
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1516
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1517
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1520
    .end local v28           #newId:Ljava/lang/String;
    .end local v31           #oldId:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_18
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1524
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1526
    .restart local v31       #oldId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 1527
    .restart local v28       #newId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v31

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1528
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1530
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1533
    .end local v12           #path:Ljava/lang/String;
    .end local v28           #newId:Ljava/lang/String;
    .end local v31           #oldId:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_19
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1536
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1537
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    move-object/from16 v0, p3

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1539
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1543
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    :sswitch_1a
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1547
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1548
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1549
    .local v36, ret:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1550
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1551
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1554
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    .end local v36           #ret:Ljava/lang/String;
    :sswitch_1b
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v24

    .line 1556
    .local v24, ids:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1558
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1561
    .end local v24           #ids:[Ljava/lang/String;
    :sswitch_1c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1564
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 1565
    .restart local v24       #ids:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1566
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1567
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1571
    .end local v12           #path:Ljava/lang/String;
    .end local v24           #ids:[Ljava/lang/String;
    :sswitch_1d
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerListAll()[Ljava/lang/String;

    move-result-object v24

    .line 1573
    .restart local v24       #ids:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1574
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1575
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1579
    .end local v24           #ids:[Ljava/lang/String;
    :sswitch_1e
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1582
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getSecureContainerInstalledPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1583
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1584
    move-object/from16 v0, p3

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1585
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1589
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    :sswitch_1f
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1592
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getAsecVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1593
    .restart local v38       #state:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1594
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1595
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1599
    .end local v12           #path:Ljava/lang/String;
    .end local v38           #state:Ljava/lang/String;
    :sswitch_20
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v30

    .line 1603
    .local v30, observer:Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 1604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1605
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1608
    .end local v30           #observer:Landroid/os/storage/IMountShutdownObserver;
    :sswitch_21
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1609
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 1610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1611
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1614
    :sswitch_22
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1618
    .local v22, filename:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1620
    .restart local v9       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v30

    .line 1622
    .local v30, observer:Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 1623
    .local v29, nonce:I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v2, v9

    move-object/from16 v3, v30

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1625
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1628
    .end local v9           #key:Ljava/lang/String;
    .end local v22           #filename:Ljava/lang/String;
    .end local v29           #nonce:I
    .end local v30           #observer:Landroid/os/storage/IObbActionListener;
    :sswitch_23
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1632
    .restart local v22       #filename:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1634
    .restart local v23       #force:Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v30

    .line 1636
    .restart local v30       #observer:Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 1637
    .restart local v29       #nonce:I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v30

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1632
    .end local v23           #force:Z
    .end local v29           #nonce:I
    .end local v30           #observer:Landroid/os/storage/IObbActionListener;
    :cond_a
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_b

    .line 1642
    .end local v22           #filename:Ljava/lang/String;
    :sswitch_24
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1645
    .restart local v22       #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v39

    .line 1646
    .restart local v39       #status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    if-eqz v39, :cond_b

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1648
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1647
    :cond_b
    const/4 v5, 0x0

    goto :goto_c

    .line 1651
    .end local v22           #filename:Ljava/lang/String;
    .end local v39           #status:Z
    :sswitch_25
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1654
    .restart local v22       #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1655
    .local v27, mountedPath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1657
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1661
    .end local v22           #filename:Ljava/lang/String;
    .end local v27           #mountedPath:Ljava/lang/String;
    :sswitch_26
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1664
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1665
    .local v19, dpath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1666
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1667
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1671
    .end local v12           #path:Ljava/lang/String;
    .end local v19           #dpath:Ljava/lang/String;
    :sswitch_27
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountCallBackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountCallBackListener;

    move-result-object v25

    .line 1674
    .local v25, listener:Landroid/os/storage/IMountCallBackListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerCallBackListener(Landroid/os/storage/IMountCallBackListener;)V

    .line 1675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1676
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1680
    .end local v25           #listener:Landroid/os/storage/IMountCallBackListener;
    :sswitch_28
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountCallBackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountCallBackListener;

    move-result-object v25

    .line 1683
    .restart local v25       #listener:Landroid/os/storage/IMountCallBackListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterCallBackListener(Landroid/os/storage/IMountCallBackListener;)V

    .line 1684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1685
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1689
    .end local v25           #listener:Landroid/os/storage/IMountCallBackListener;
    :sswitch_29
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPlayNotificationSounds()Z

    move-result v39

    .line 1691
    .restart local v39       #status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    if-eqz v39, :cond_c

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1693
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1692
    :cond_c
    const/4 v5, 0x0

    goto :goto_d

    .line 1697
    .end local v39           #status:Z
    :sswitch_2a
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    move/from16 v40, v5

    .line 1700
    .local v40, value:Z
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setPlayNotificationSounds(Z)V

    .line 1701
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1699
    .end local v40           #value:Z
    :cond_d
    const/4 v5, 0x0

    move/from16 v40, v5

    goto :goto_e

    .line 1706
    :sswitch_2b
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1709
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getShowSafeUnmountNotification(Ljava/lang/String;)Z

    move-result v36

    .line 1710
    .local v36, ret:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1711
    if-eqz v36, :cond_e

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1712
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1711
    :cond_e
    const/4 v5, 0x0

    goto :goto_f

    .line 1716
    .end local v12           #path:Ljava/lang/String;
    .end local v36           #ret:Z
    :sswitch_2c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1720
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    move/from16 v37, v5

    .line 1721
    .local v37, set:Z
    :goto_10
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setShowSafeUnmountNotification(Ljava/lang/String;Z)V

    .line 1722
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1723
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1720
    .end local v37           #set:Z
    :cond_f
    const/4 v5, 0x0

    move/from16 v37, v5

    goto :goto_10

    .line 1727
    .end local v12           #path:Ljava/lang/String;
    :sswitch_2d
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1730
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1731
    .restart local v19       #dpath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1732
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1733
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1737
    .end local v12           #path:Ljava/lang/String;
    .end local v19           #dpath:Ljava/lang/String;
    :sswitch_2e
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1740
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageCidNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1741
    .restart local v19       #dpath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1742
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1743
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1747
    .end local v12           #path:Ljava/lang/String;
    .end local v19           #dpath:Ljava/lang/String;
    :sswitch_2f
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1751
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    move/from16 v37, v5

    .line 1752
    .restart local v37       #set:Z
    :goto_11
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->isEncryptionEnabled(Ljava/lang/String;Z)Z

    move-result v36

    .line 1753
    .restart local v36       #ret:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1754
    if-eqz v36, :cond_11

    const/4 v5, 0x1

    :goto_12
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1755
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1751
    .end local v36           #ret:Z
    .end local v37           #set:Z
    :cond_10
    const/4 v5, 0x0

    move/from16 v37, v5

    goto :goto_11

    .line 1754
    .restart local v36       #ret:Z
    .restart local v37       #set:Z
    :cond_11
    const/4 v5, 0x0

    goto :goto_12

    .line 1759
    .end local v12           #path:Ljava/lang/String;
    .end local v36           #ret:Z
    .end local v37           #set:Z
    :sswitch_30
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1763
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    move/from16 v37, v5

    .line 1764
    .restart local v37       #set:Z
    :goto_13
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setEncryptionEnabled(Ljava/lang/String;Z)I

    move-result v35

    .line 1765
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1763
    .end local v35           #resultCode:I
    .end local v37           #set:Z
    :cond_12
    const/4 v5, 0x0

    move/from16 v37, v5

    goto :goto_13

    .line 1771
    .end local v12           #path:Ljava/lang/String;
    :sswitch_31
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1775
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1777
    .local v32, password:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1779
    .local v18, cid:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1780
    .local v21, encmode:I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v32

    move-object/from16 v3, v18

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->encryptBatchVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1781
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1782
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1783
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1787
    .end local v12           #path:Ljava/lang/String;
    .end local v18           #cid:Ljava/lang/String;
    .end local v21           #encmode:I
    .end local v32           #password:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_32
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1791
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1793
    .restart local v32       #password:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1794
    .restart local v18       #cid:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v32

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->encryptMountVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1795
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1796
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1797
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1802
    .end local v12           #path:Ljava/lang/String;
    .end local v18           #cid:Ljava/lang/String;
    .end local v32           #password:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_33
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1806
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1808
    .restart local v32       #password:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1809
    .restart local v18       #cid:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v32

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->encryptFormatVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1810
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1811
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1812
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1816
    .end local v12           #path:Ljava/lang/String;
    .end local v18           #cid:Ljava/lang/String;
    .end local v32           #password:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_34
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1819
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getEncryptedStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1820
    .local v36, ret:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1821
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1822
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1825
    .end local v12           #path:Ljava/lang/String;
    .end local v36           #ret:Ljava/lang/String;
    :sswitch_35
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 1828
    .restart local v20       #enable:Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->enableShared(Z)V

    .line 1829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1830
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1827
    .end local v20           #enable:Z
    :cond_13
    const/4 v5, 0x0

    move/from16 v20, v5

    goto :goto_14

    .line 1835
    :sswitch_36
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1836
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getVolumeList()[Ljava/lang/String;

    move-result-object v24

    .line 1837
    .restart local v24       #ids:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1838
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1839
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1261
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_d
        0xd -> :sswitch_f
        0xe -> :sswitch_11
        0xf -> :sswitch_13
        0x10 -> :sswitch_15
        0x11 -> :sswitch_17
        0x12 -> :sswitch_19
        0x13 -> :sswitch_1b
        0x14 -> :sswitch_20
        0x15 -> :sswitch_21
        0x16 -> :sswitch_22
        0x17 -> :sswitch_23
        0x18 -> :sswitch_24
        0x19 -> :sswitch_25
        0x51 -> :sswitch_c
        0x52 -> :sswitch_10
        0x53 -> :sswitch_e
        0x54 -> :sswitch_12
        0x55 -> :sswitch_14
        0x56 -> :sswitch_16
        0x57 -> :sswitch_18
        0x58 -> :sswitch_1a
        0x59 -> :sswitch_1c
        0x5a -> :sswitch_1d
        0x5b -> :sswitch_1e
        0x5c -> :sswitch_1f
        0x5d -> :sswitch_26
        0x5e -> :sswitch_27
        0x5f -> :sswitch_28
        0x60 -> :sswitch_29
        0x61 -> :sswitch_2a
        0x62 -> :sswitch_2b
        0x63 -> :sswitch_2c
        0x64 -> :sswitch_2d
        0x65 -> :sswitch_2e
        0x66 -> :sswitch_2f
        0x67 -> :sswitch_30
        0x68 -> :sswitch_31
        0x69 -> :sswitch_32
        0x6a -> :sswitch_33
        0x6b -> :sswitch_34
        0x6c -> :sswitch_35
        0x6d -> :sswitch_36
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
