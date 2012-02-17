.class Lcom/android/server/location/GpsLocationProvider$SensorAiding;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorAiding"
.end annotation


# static fields
.field private static final ACCURACY_INDEX:I = 0x2

.field private static final ALTITUDE_INDEX:I = 0x2

.field private static final BEARING_INDEX:I = 0x0

.field private static final LATITUDE_INDEX:I = 0x0

.field private static final LONGITUDE_INDEX:I = 0x1

.field private static final SENSORAIDING_DR_ENABLE:Z = false

.field private static final SENSORAIDING_FORCECALL_CHECK_AHEAD_TIME:J = 0xc8L

.field private static final SENSORAIDING_FORCECALL_ENTRY_INTERVAL:J = 0x5dcL

.field private static final SENSORAIDING_FORCECALL_KEEP_INTERVAL:J = 0x3e8L

.field private static final SENSORAIDING_LOGGING:Ljava/lang/String; = "GpsLogging"

.field private static final SENSORAIDING_LOGGING_TEMP:Ljava/lang/String; = "DynamicAccuracyValue"

.field private static final SENSORAIDING_LPP_CHANGED_FULLPOWER:I = 0x3

.field private static final SENSORAIDING_LPP_CHANGED_LOWPOWER:I = 0x1

.field private static final SENSORAIDING_LPP_INVALID:I = -0x1

.field private static final SENSORAIDING_LPP_OPERATION_MODE_MAX:I = 0x4

.field private static final SENSORAIDING_LPP_RETAINED_FULLPOWER:I = 0x2

.field private static final SENSORAIDING_LPP_RETAINED_LOWPOWER:I = 0x0

.field private static final SENSORAIDING_OPMODE_MAX:I = 0x2

.field private static final SENSORAIDING_OPMODE_PEDESTRIAN:I = 0x0

.field private static final SENSORAIDING_OPMODE_UNKNOWN:I = -0x1

.field private static final SENSORAIDING_OPMODE_VEHICLE:I = 0x1

.field private static final SENSOR_PACKET_ARRAY_SIZE:I = 0x8

.field private static final SENSOR_PACKET_MEMBER_SIZE:I = 0x4

.field private static final SENSOR_SAMPLING_RATE:I = 0xea60

.field private static final SENSOR_SAMPLING_TIME:I = 0x3c

.field private static final SPEED_INDEX:I = 0x1


# instance fields
.field private mAccAccuracy:I

.field private mAccPacket:[[F

.field private mAccRecent:[F

.field private mDeliverLocation:[D

.field private mDeliverLocationExt:[F

.field private mGyrAccuracy:I

.field private mGyrPacket:[[F

.field private mGyrRecent:[F

.field private mGyroSupported:Z

.field private mLPPCurrentMode:I

.field private mLPPIsInStop:Z

.field private mLPPPreviousMode:I

.field private mLPPTest_PositionMode:I

.field private mLogMode:I

.field private mMagAccuracy:I

.field private mMagPacket:[[F

.field private mMagRecent:[F

.field private mNmeaAlti:D

.field private mNmeaAltiDiff:D

.field private mNmeaDate:J

.field private mNmeaEW:C

.field private mNmeaHeading:F

.field private mNmeaLat:D

.field private mNmeaLon:D

.field private mNmeaNS:C

.field private mNmeaOrgGGA:Ljava/lang/String;

.field private mNmeaOrgGLL:Ljava/lang/String;

.field private mNmeaOrgRMC:Ljava/lang/String;

.field private mNmeaOrgVTG:Ljava/lang/String;

.field private mNmeaSpeed:F

.field private mNmeaUTC:J

.field private mNmeaValid:C

.field private mNmeaVirGGA:Ljava/lang/String;

.field private mNmeaVirGLL:Ljava/lang/String;

.field private mNmeaVirLOG:Ljava/lang/String;

.field private mNmeaVirRMC:Ljava/lang/String;

.field private mNmeaVirVTG:Ljava/lang/String;

.field private mOriAccuracy:I

.field private mOriPacket:[[F

.field private mOriRecent:[F

.field private mReportNmeaCallFlag:I

.field private mRequestLocation:[D

.field private mRequestLocationExt:[F

.field private mRequestValid:[I

.field private mSensorAidingFlags:I

.field private mSensorAidingIsPedestrian:Z

.field private mSensorAidingIsValid:Z

.field private mSensorAidingIsVehicle:Z

.field private mSensorAidingLogging:I

.field private mSensorAidingOpMode:I

.field private mSensorAidingSetting:I

.field private mSensorPacketIndex:I

.field private mSensorPreviousSampledTime:J

.field private mSensorSamplingIntervalTime:[J

.field private mSensorSystemTime:[J

.field private mSnrs_SensorAiding:[F

.field private mSvAzimuths_SensorAiding:[F

.field private mSvCountSatInUse:I

.field private mSvCountUsed_SensorAiding:I

.field private mSvCountView_SensorAiding:I

.field private mSvElevations_SensorAiding:[F

.field private mSvMasks_SensorAiding:[I

.field private mSvs_SensorAiding:[I

.field private mTimeIntervalForceCall:J

.field private mTimeStampLastReportedLocation:J

.field private mTimeStampLastReportedNmea:J

.field private mTimeUTCLastReportedLocation:J

.field private final sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

.field private final sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

.field private final sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final sensorOrientationListener:Landroid/hardware/SensorEventListener;

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1760
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1627
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    .line 1628
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    .line 1636
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F

    .line 1637
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagRecent:[F

    .line 1638
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriRecent:[F

    .line 1639
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F

    .line 1643
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    .line 1644
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    .line 1645
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    .line 1646
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    .line 1649
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLogMode:I

    .line 1652
    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccPacket:[[F

    .line 1653
    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagPacket:[[F

    .line 1654
    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriPacket:[[F

    .line 1655
    filled-new-array {v6, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrPacket:[[F

    .line 1657
    new-array v0, v6, [J

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    .line 1658
    new-array v0, v6, [J

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    .line 1659
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    .line 1661
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    .line 1664
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    .line 1674
    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    .line 1675
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    .line 1676
    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    .line 1677
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    .line 1678
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    .line 1681
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    .line 1682
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedNmea:J

    .line 1683
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    .line 1684
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    .line 1695
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    .line 1699
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvs_SensorAiding:[I

    .line 1700
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSnrs_SensorAiding:[F

    .line 1701
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvElevations_SensorAiding:[F

    .line 1702
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvAzimuths_SensorAiding:[F

    .line 1703
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    .line 1704
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountView_SensorAiding:I

    .line 1705
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    .line 1706
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    .line 1716
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    .line 1717
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    .line 1719
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 1721
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 1722
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    .line 1730
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    .line 1731
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsVehicle:Z

    .line 1732
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    .line 1734
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    .line 1737
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    .line 1738
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    .line 1739
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    .line 1740
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    .line 1741
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    .line 1742
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    .line 1743
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    .line 1744
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    .line 1745
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    .line 1747
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 1748
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    .line 1749
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    .line 1750
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    .line 1751
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    .line 1752
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAlti:D

    .line 1753
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    .line 1754
    iput-char v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    .line 1755
    iput-char v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    .line 1756
    iput-char v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaValid:C

    .line 1757
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    .line 1758
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaHeading:F

    .line 2321
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    .line 2353
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$2;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

    .line 2381
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$3;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorOrientationListener:Landroid/hardware/SensorEventListener;

    .line 2406
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;-><init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 1761
    return-void
.end method

.method private SensorAidingActivateAllSensor(Z)V
    .locals 5
    .parameter "IsAllSensor"

    .prologue
    const/4 v3, 0x1

    const v4, 0xea60

    .line 1843
    if-eq p1, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    .line 1845
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1848
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1849
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorOrientationListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1853
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    if-nez v0, :cond_2

    .line 1855
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    .line 1856
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingActivateAllSensor : Gyroscope sensor is NOT supported"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_2
    return-void
.end method

.method private SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "Nmea"

    .prologue
    .line 2467
    const/4 v0, 0x0

    .line 2469
    .local v0, checkSumVal:C
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 2470
    .local v2, szTemp:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 2471
    aget-char v3, v2, v1

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_1

    .line 2478
    :cond_0
    const-string v3, "%02X\r\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2473
    :cond_1
    aget-char v3, v2, v1

    const/16 v4, 0x24

    if-eq v3, v4, :cond_2

    .line 2474
    aget-char v3, v2, v1

    xor-int/2addr v3, v0

    int-to-char v0, v3

    .line 2470
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private SensorAidingDeactivateAllSensor(Z)V
    .locals 3
    .parameter "IsAllSensor"

    .prologue
    const/4 v2, 0x1

    .line 1861
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 1862
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingDeactivateAllSensor : No registered sensorManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :cond_0
    :goto_0
    return-void

    .line 1866
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    if-ne v0, v2, :cond_2

    .line 1867
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1869
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorOrientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1870
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorMagneticFieldListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1872
    if-ne p1, v2, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1874
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->sensorManager:Landroid/hardware/SensorManager;

    goto :goto_0
.end method

.method private SensorAidingDeliverSensorPacket()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "GpsLocationProvider"

    .line 2203
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccPacket:[[F

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagPacket:[[F

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriPacket:[[F

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_sensors_data([[F[[F[[F[J[J)I
    invoke-static/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->access$3900(Lcom/android/server/location/GpsLocationProvider;[[F[[F[[F[J[J)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    .line 2210
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    if-eq v0, v1, :cond_0

    .line 2211
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 2261
    const-string v0, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorAiding LPP : Not Supported Mode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    :goto_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    .line 2267
    :cond_0
    return-void

    .line 2213
    :pswitch_0
    const-string v0, "GpsLocationProvider"

    const-string v0, "SensorAiding LPP : Not Ready"

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2217
    :pswitch_1
    const-string v0, "GpsLocationProvider"

    const-string v0, "SensorAiding LPP : Keep GPS OFF"

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2221
    :pswitch_2
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 2222
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4000(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-ne v0, v8, :cond_1

    .line 2224
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeactivateAllSensor(Z)V

    .line 2226
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v0, v7}, Lcom/android/server/location/GpsLocationProvider;->access$4002(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 2227
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_stop()Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4100(Lcom/android/server/location/GpsLocationProvider;)Z

    .line 2228
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvCount:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    #calls: Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V
    invoke-static {v0, v8, v1}, Lcom/android/server/location/GpsLocationProvider;->access$4300(Lcom/android/server/location/GpsLocationProvider;II)V

    .line 2229
    const-string v0, "GpsLocationProvider"

    const-string v0, "SensorAiding LPP : Turn GPS OFF"

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2231
    :cond_1
    const-string v0, "GpsLocationProvider"

    const-string v0, "SensorAiding LPP : Already GPS Turned OFF"

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2236
    :pswitch_3
    const-string v0, "GpsLocationProvider"

    const-string v0, "SensorAiding LPP : Keep GPS ON"

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2240
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4000(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2241
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 2242
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v0, v8}, Lcom/android/server/location/GpsLocationProvider;->access$4002(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 2243
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mTTFF:I
    invoke-static {v0, v7}, Lcom/android/server/location/GpsLocationProvider;->access$2702(Lcom/android/server/location/GpsLocationProvider;I)I

    .line 2244
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$4402(Lcom/android/server/location/GpsLocationProvider;J)J

    .line 2245
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$4502(Lcom/android/server/location/GpsLocationProvider;J)J

    .line 2246
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_start()Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4600(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2247
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 2248
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v0, v7}, Lcom/android/server/location/GpsLocationProvider;->access$4002(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 2249
    const-string v0, "GpsLocationProvider"

    const-string v0, "SensorAiding LPP : native_start failed"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2252
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingActivateAllSensor(Z)V

    .line 2253
    const-string v0, "GpsLocationProvider"

    const-string v0, "SensorAiding LPP : Turn GPS ON"

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2256
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v0, "SensorAiding LPP : Already GPS Turned ON"

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2211
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private SensorAidingDeliverSvStatus()V
    .locals 1

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_sv_status()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$3800(Lcom/android/server/location/GpsLocationProvider;)V

    .line 2200
    return-void
.end method

.method private SensorAidingDeregister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1825
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeactivateAllSensor(Z)V

    .line 1827
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_finalize()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)V

    .line 1832
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 1833
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    .line 1836
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 1837
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    .line 1839
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingDeregister : Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    return-void
.end method

.method private SensorAidingGetAccuracy()F
    .locals 2

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingGetAltitde()D
    .locals 2

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private SensorAidingGetBearing()F
    .locals 2

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingGetFlags()I
    .locals 1

    .prologue
    .line 2168
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    return v0
.end method

.method private SensorAidingGetLatitude()D
    .locals 2

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private SensorAidingGetLongitude()D
    .locals 2

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private SensorAidingGetOpMode()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2156
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsVehicle:Z

    if-nez v0, :cond_0

    .line 2157
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    .line 2164
    :goto_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    return v0

    .line 2158
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsVehicle:Z

    if-ne v0, v1, :cond_1

    .line 2159
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    goto :goto_0

    .line 2161
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingOpMode:I

    goto :goto_0
.end method

.method private SensorAidingGetSpeed()F
    .locals 2

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingGetValid()I
    .locals 2

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private SensorAidingIncreaseUTC()V
    .locals 26

    .prologue
    .line 2435
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    move-wide/from16 v22, v0

    .line 2436
    .local v22, nUTCTimeAll:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    move-wide/from16 v20, v0

    .line 2439
    .local v20, nUTCDateAll:J
    const-wide/16 v4, 0x2710

    div-long v12, v22, v4

    .line 2440
    .local v12, nHour:J
    const-wide/16 v4, 0x2710

    rem-long v4, v22, v4

    const-wide/16 v6, 0x64

    div-long v14, v4, v6

    .line 2441
    .local v14, nMinute:J
    const-wide/16 v4, 0x64

    rem-long v18, v22, v4

    .line 2443
    .local v18, nSecond:J
    const-wide/16 v4, 0x2710

    div-long v10, v20, v4

    .line 2444
    .local v10, nDate:J
    const-wide/16 v4, 0x2710

    rem-long v4, v20, v4

    const-wide/16 v6, 0x64

    div-long v16, v4, v6

    .line 2445
    .local v16, nMonth:J
    const-wide/16 v4, 0x64

    rem-long v24, v20, v4

    .line 2448
    .local v24, nYear:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2449
    .local v3, utcDate:Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 2450
    const-wide/16 v4, 0x7d0

    add-long v4, v4, v24

    long-to-int v4, v4

    const-wide/16 v5, 0x1

    sub-long v5, v16, v5

    long-to-int v5, v5

    long-to-int v6, v10

    long-to-int v7, v12

    long-to-int v8, v14

    const-wide/16 v9, 0x1

    add-long v9, v9, v18

    long-to-int v9, v9

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2453
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 2454
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 2455
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v10, v4

    .line 2456
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v12, v4

    .line 2457
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v14, v4

    .line 2458
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 2460
    const-wide/16 v4, 0x2710

    mul-long/2addr v4, v12

    const-wide/16 v6, 0x64

    mul-long/2addr v6, v14

    add-long/2addr v4, v6

    add-long v4, v4, v18

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    .line 2461
    const-wide/16 v4, 0x2710

    mul-long/2addr v4, v10

    const-wide/16 v6, 0x64

    mul-long v6, v6, v16

    add-long/2addr v4, v6

    add-long v4, v4, v24

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    .line 2462
    return-void
.end method

.method private SensorAidingKeepOriginalNmea(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "NmeaOrg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v5, "[,*]"

    .line 2682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedNmea:J

    .line 2686
    const-string v1, "$GPGGA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 2687
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    .line 2690
    const-string v1, "[,*]"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2691
    .local v0, splitNmea:[Ljava/lang/String;
    const/4 v1, 0x6

    aget-object v1, v0, v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2692
    const/16 v1, 0xb

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    :cond_0
    move-object v1, v4

    .line 2721
    .end local v0           #splitNmea:[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2697
    :cond_1
    const-string v1, "$GPRMC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 2698
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    .line 2701
    const-string v1, "[,*]"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2702
    .restart local v0       #splitNmea:[Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, v0, v1

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 2703
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    .line 2704
    const/16 v1, 0x9

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    :cond_2
    move-object v1, v4

    .line 2708
    goto :goto_0

    .line 2709
    .end local v0           #splitNmea:[Ljava/lang/String;
    :cond_3
    const-string v1, "$GPVTG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 2710
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    move-object v1, v4

    .line 2713
    goto :goto_0

    .line 2714
    :cond_4
    const-string v1, "$GPGLL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 2715
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    move-object v1, v4

    .line 2718
    goto :goto_0

    :cond_5
    move-object v1, p1

    .line 2721
    goto :goto_0
.end method

.method private SensorAidingLocationChanged(IDDDFFFJ)V
    .locals 14
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"

    .prologue
    .line 2072
    const/4 v3, 0x6

    new-array v6, v3, [I

    .line 2074
    .local v6, utcTime:[I
    const-string v3, "RawGPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    float-to-double v0, v0

    move-wide v7, v0

    const-wide v9, 0x400ccccccccccccdL

    mul-double/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    const/4 v4, 0x0

    aput-wide p2, v3, v4

    .line 2077
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    const/4 v4, 0x1

    aput-wide p4, v3, v4

    .line 2078
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    const/4 v4, 0x2

    aput-wide p6, v3, v4

    .line 2079
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    const/4 v4, 0x0

    aput p9, v3, v4

    .line 2080
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    const/4 v4, 0x1

    const v5, 0x40666666

    mul-float v5, v5, p8

    aput v5, v3, v4

    .line 2081
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    const/4 v4, 0x2

    aput p10, v3, v4

    .line 2083
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 2084
    .local v13, utcDate:Ljava/util/Calendar;
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 2085
    .local v11, tempTimeInMillis:J
    move-object v0, v13

    move-wide/from16 v1, p11

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2086
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aput v4, v6, v3

    .line 2087
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v6, v3

    .line 2088
    const/4 v3, 0x2

    const/4 v4, 0x5

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aput v4, v6, v3

    .line 2089
    const/4 v3, 0x3

    const/16 v4, 0xb

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aput v4, v6, v3

    .line 2090
    const/4 v3, 0x4

    const/16 v4, 0xc

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aput v4, v6, v3

    .line 2091
    const/4 v3, 0x5

    const/16 v4, 0xd

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aput v4, v6, v3

    .line 2097
    iget v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    if-eqz v3, :cond_0

    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2098
    const/4 v9, 0x1

    .line 2103
    .local v9, isValid:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocation:[D

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mDeliverLocationExt:[F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_gps_data([D[F[IJII)V
    invoke-static/range {v3 .. v10}, Lcom/android/server/location/GpsLocationProvider;->access$3400(Lcom/android/server/location/GpsLocationProvider;[D[F[IJII)V

    .line 2107
    return-void

    .line 2100
    .end local v9           #isValid:I
    :cond_0
    const/4 v9, 0x0

    .restart local v9       #isValid:I
    goto :goto_0
.end method

.method private SensorAidingMakeCompensatedNmea()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    .line 2726
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2727
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    .line 2728
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    .line 2729
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2730
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2732
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2733
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    .line 2734
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    .line 2735
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2736
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2738
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2739
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    .line 2740
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    .line 2741
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2742
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2744
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2745
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    .line 2746
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    .line 2747
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2748
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2750
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2751
    return-void
.end method

.method private SensorAidingMakeSensorPacket()V
    .locals 14

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    const-string v4, ", "

    .line 2270
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    if-ne v0, v1, :cond_2

    .line 2271
    :cond_0
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorAidingMakeSensorPacket : Not Ready ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    :cond_1
    :goto_0
    return-void

    .line 2276
    :cond_2
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 2277
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    .line 2280
    :cond_3
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    const/4 v0, 0x4

    if-ge v13, v0, :cond_4

    .line 2281
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccPacket:[[F

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F

    aget v1, v1, v13

    aput v1, v0, v13

    .line 2282
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagPacket:[[F

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagRecent:[F

    aget v1, v1, v13

    aput v1, v0, v13

    .line 2283
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriPacket:[[F

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriRecent:[F

    aget v1, v1, v13

    aput v1, v0, v13

    .line 2284
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrPacket:[[F

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F

    aget v1, v1, v13

    aput v1, v0, v13

    .line 2280
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2287
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 2288
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    cmp-long v0, v0, v9

    if-nez v0, :cond_6

    .line 2289
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aput-wide v9, v0, v1

    .line 2293
    :goto_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    .line 2295
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    .line 2296
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 2298
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeliverSensorPacket()V

    .line 2303
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0xc8

    sub-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_7

    .line 2306
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedNmea:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 2307
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SensorAidingMakeSensorPacket : Call reportLocation() forcefully : SystemTime = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (Last : Systemtime = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", UTC = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v1, 0x0

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    add-long v11, v4, v6

    move-wide v4, v2

    move-wide v6, v2

    move v9, v8

    move v10, v8

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportLocation(IDDDFFFJ)V
    invoke-static/range {v0 .. v12}, Lcom/android/server/location/GpsLocationProvider;->access$4700(Lcom/android/server/location/GpsLocationProvider;IDDDFFFJ)V

    .line 2309
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    goto/16 :goto_0

    .line 2291
    :cond_6
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSamplingIntervalTime:[J

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorSystemTime:[J

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    aget-wide v4, v4, v5

    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    sub-long/2addr v4, v6

    aput-wide v4, v0, v1

    goto/16 :goto_2

    .line 2311
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2315
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_1

    .line 2316
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    goto/16 :goto_0
.end method

.method private SensorAidingMakeVirtualNmea()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    .line 2755
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingIncreaseUTC()V

    .line 2757
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2779
    :goto_0
    return-void

    .line 2762
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2763
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2764
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2766
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2767
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2768
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2770
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2771
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2772
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2774
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2775
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2776
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2778
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    goto :goto_0
.end method

.method private SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "sTitle"
    .parameter "sLog"

    .prologue
    const/4 v5, 0x0

    const-string v3, ","

    .line 2783
    if-nez p2, :cond_1

    .line 2802
    :cond_0
    :goto_0
    return-void

    .line 2787
    :cond_1
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorAiding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    if-eqz v0, :cond_0

    .line 2793
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_2

    .line 2795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    .line 2799
    :goto_1
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    .line 2800
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    #calls: Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;J)V

    .line 2801
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    goto :goto_0

    .line 2797
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@SENAD,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    goto :goto_1
.end method

.method private SensorAidingRegister()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v5, "GpsLocationProvider"

    .line 1765
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    .line 1766
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    .line 1767
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    .line 1768
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    .line 1769
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPreviousSampledTime:J

    .line 1770
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorPacketIndex:I

    .line 1771
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    .line 1772
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    .line 1773
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    .line 1774
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 1775
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountView_SensorAiding:I

    .line 1776
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    .line 1777
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    .line 1778
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    .line 1779
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPCurrentMode:I

    .line 1781
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 1782
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 1783
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    .line 1785
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingActivateAllSensor(Z)V

    .line 1789
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "GpsLogging"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    .line 1798
    const-string v0, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorAidingRegister : Logging is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    if-nez v1, :cond_0

    const-string v1, "OFF"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1803
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLogMode:I

    .line 1810
    :goto_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingLogging:I

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLogMode:I

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_initialize(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;II)V

    .line 1816
    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingSupportInversePortraitMode(I)V

    .line 1817
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    .line 1818
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRotationChanged()V

    .line 1820
    const-string v0, "GpsLocationProvider"

    const-string v0, "SensorAidingRegister : Exit"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    return-void

    .line 1798
    :cond_0
    const-string v1, "ON"

    goto :goto_0

    .line 1807
    :cond_1
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLogMode:I

    goto :goto_1
.end method

.method private SensorAidingReportLocation(IDDDFFFJ)V
    .locals 9
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"

    .prologue
    .line 1900
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_pdr_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1901
    .local v3, CurrentSetting:I
    iget v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-eq v3, v5, :cond_0

    .line 1902
    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 1903
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRegister()V

    .line 1907
    :goto_0
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    .line 1908
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SensorAidingReportLocation : SensorAiding setting has been changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_0
    iget v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-nez v5, :cond_2

    .line 1913
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1979
    :goto_1
    return-void

    .line 1905
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeregister()V

    goto :goto_0

    .line 1917
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    .line 1918
    move-wide/from16 v0, p11

    move-object v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeUTCLastReportedLocation:J

    .line 1920
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    .line 1921
    and-int/lit8 v5, p1, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1922
    const-wide/16 v5, 0x5dc

    iput-wide v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeIntervalForceCall:J

    .line 1925
    :cond_3
    invoke-direct/range {p0 .. p12}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingLocationChanged(IDDDFFFJ)V

    .line 1926
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRequestLocation()V

    .line 1929
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 1930
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAccuracy()F

    move-result v4

    .line 1933
    .local v4, SensorAidingAccuracy:F
    float-to-double v5, v4

    const-wide v7, 0x4072c00000000000L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_6

    .line 1934
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    .line 1935
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 1937
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SensorAidingReportLocation : LOCATION_INVALID SensorAiding\'s accuracy is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    .end local v4           #SensorAidingAccuracy:F
    :cond_4
    :goto_2
    if-nez p1, :cond_9

    .line 1964
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 1967
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingMakeVirtualNmea()V

    .line 1975
    :cond_5
    :goto_3
    const-string v5, "RawGGA"

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGGA:Ljava/lang/String;

    .line 1976
    const-string v5, "RawRMC"

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgRMC:Ljava/lang/String;

    .line 1977
    const-string v5, "RawVTG"

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgVTG:Ljava/lang/String;

    .line 1978
    const-string v5, "RawGLL"

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaOrgGLL:Ljava/lang/String;

    goto/16 :goto_1

    .line 1942
    .restart local v4       #SensorAidingAccuracy:F
    :cond_6
    if-nez p1, :cond_7

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mTTFF:I
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$2800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 1943
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v6, 0x1

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mTTFF:I
    invoke-static {v5, v6}, Lcom/android/server/location/GpsLocationProvider;->access$2702(Lcom/android/server/location/GpsLocationProvider;I)I

    .line 1945
    const-string v5, "GpsLocationProvider"

    const-string v6, "SensorAidingReportLocation : Set mTTFF = 1 to be sent an intent GPS_FIX_CHANGE_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :cond_7
    const/16 v5, 0x1f

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingFlags:I

    .line 1949
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 1952
    cmpl-float v5, v4, p10

    if-eqz v5, :cond_4

    .line 1953
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    const/4 v6, 0x2

    const/high16 v7, 0x41f0

    add-float/2addr v7, v4

    aput v7, v5, v6

    goto :goto_2

    .line 1958
    .end local v4           #SensorAidingAccuracy:F
    :cond_8
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    .line 1960
    const-string v5, "GpsLocationProvider"

    const-string v6, "SensorAidingReportLocation : Bypass raw GPS"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1970
    :cond_9
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingMakeCompensatedNmea()V

    goto :goto_3
.end method

.method private SensorAidingReportNmea(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "NmeaOrg"

    .prologue
    .line 2044
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-nez v0, :cond_0

    move-object v0, p1

    .line 2063
    :goto_0
    return-object v0

    .line 2048
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mReportNmeaCallFlag:I

    packed-switch v0, :pswitch_data_0

    .line 2062
    :pswitch_0
    const-string v0, "GpsLocationProvider"

    const-string v1, "SensorAidingReportNmea : Invalid "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 2063
    goto :goto_0

    .line 2050
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingKeepOriginalNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2052
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    goto :goto_0

    .line 2054
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    goto :goto_0

    .line 2056
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    goto :goto_0

    .line 2058
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    goto :goto_0

    .line 2060
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirLOG:Ljava/lang/String;

    goto :goto_0

    .line 2048
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private SensorAidingReportSvStatus(I)V
    .locals 8
    .parameter "svCount"

    .prologue
    const/4 v7, 0x1

    const/16 v4, 0x20

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1982
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    if-nez v2, :cond_1

    .line 2038
    :cond_0
    :goto_0
    return-void

    .line 1986
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeliverSvStatus()V

    .line 1988
    const/4 v1, 0x0

    .line 1989
    .local v1, svCountUse:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 1991
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    aget v2, v2, v6

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvs:[I
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$3000(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v3

    aget v3, v3, v0

    sub-int/2addr v3, v7

    shl-int v3, v7, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 1992
    add-int/lit8 v1, v1, 0x1

    .line 1989
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1997
    :cond_3
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountSatInUse:I

    .line 2000
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    aget v2, v2, v6

    if-eqz v2, :cond_4

    if-le v1, v6, :cond_5

    .line 2001
    :cond_4
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvs:[I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3000(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvs_SensorAiding:[I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2002
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3100(Lcom/android/server/location/GpsLocationProvider;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSnrs_SensorAiding:[F

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2003
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3200(Lcom/android/server/location/GpsLocationProvider;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvElevations_SensorAiding:[F

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2004
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvAzimuths_SensorAiding:[F

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2005
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    const/4 v4, 0x3

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2006
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountView_SensorAiding:I

    .line 2007
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    .line 2013
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    if-ne v2, v7, :cond_6

    .line 2016
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    aget v2, v2, v6

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)[I

    move-result-object v2

    aget v2, v2, v6

    if-nez v2, :cond_0

    goto :goto_0

    .line 2033
    :cond_6
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvMasks_SensorAiding:[I

    aput v5, v2, v6

    .line 2034
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSvCountUsed_SensorAiding:I

    goto/16 :goto_0
.end method

.method private SensorAidingRequestLocation()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, ","

    .line 2113
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_request_gps_data([D[F[I)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$3500(Lcom/android/server/location/GpsLocationProvider;[D[F[I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    .line 2116
    const-string v0, "AidGPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    aget-wide v2, v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    aget-wide v2, v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocation:[D

    aget-wide v2, v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestValid:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsPedestrian:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingPutLogNmea(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mRequestLocationExt:[F

    aget v1, v0, v6

    const v2, 0x3e8e38e4

    mul-float/2addr v1, v2

    aput v1, v0, v6

    .line 2120
    return-void
.end method

.method private SensorAidingRotationChanged()V
    .locals 4

    .prologue
    .line 2124
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 2126
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2127
    .local v0, nRotation:I
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SensorAidingRotationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_rotation_data(I)V
    invoke-static {v1, v0}, Lcom/android/server/location/GpsLocationProvider;->access$3600(Lcom/android/server/location/GpsLocationProvider;I)V

    .line 2134
    .end local v0           #nRotation:I
    :cond_0
    return-void
.end method

.method private SensorAidingStartNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1879
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    .line 1880
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    .line 1881
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2600(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPTest_PositionMode:I

    .line 1883
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_pdr_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    .line 1884
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingSetting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1885
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRegister()V

    .line 1887
    :cond_0
    return-void
.end method

.method private SensorAidingStopNavigating()Z
    .locals 2

    .prologue
    .line 1891
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mTimeStampLastReportedLocation:J

    .line 1892
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingDeregister()V

    .line 1893
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPPreviousMode:I

    .line 1895
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    return v0
.end method

.method private SensorAidingSupportInversePortraitMode(I)V
    .locals 3
    .parameter "isSupported"

    .prologue
    .line 2143
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorAidingSupportInversePortraitMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_support_inverse_portrait_mode(I)V
    invoke-static {v0, p1}, Lcom/android/server/location/GpsLocationProvider;->access$3700(Lcom/android/server/location/GpsLocationProvider;I)V

    .line 2149
    return-void
.end method

.method private SensorAidingUpdateNmea(Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .parameter "NmeaOrg"

    .prologue
    .line 2482
    const/4 v7, 0x0

    .line 2483
    .local v7, nTemp:I
    const-wide/16 v4, 0x0

    .line 2486
    .local v4, fTemp:D
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v19

    if-eqz v19, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetOpMode()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    :cond_0
    move-object/from16 v3, p1

    .line 2675
    .end local p1
    .local v3, NmeaOrg:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2491
    .end local v3           #NmeaOrg:Ljava/lang/String;
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mSensorAidingIsValid:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v3, p1

    .line 2492
    .end local p1
    .restart local v3       #NmeaOrg:Ljava/lang/String;
    goto :goto_0

    .line 2496
    .end local v3           #NmeaOrg:Ljava/lang/String;
    .restart local p1
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLatitude()D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move v7, v0

    .line 2497
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLatitude()D

    move-result-wide v19

    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v21, v0

    sub-double v4, v19, v21

    .line 2498
    mul-int/lit8 v19, v7, 0x64

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    .line 2499
    const-wide/high16 v19, 0x404e

    mul-double v4, v4, v19

    .line 2500
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v19, v0

    add-double v19, v19, v4

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    .line 2501
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmpg-double v19, v19, v21

    if-gez v19, :cond_6

    .line 2502
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    .line 2503
    const/16 v19, 0x53

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    .line 2509
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLongitude()D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move v7, v0

    .line 2510
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLongitude()D

    move-result-wide v19

    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v21, v0

    sub-double v4, v19, v21

    .line 2511
    mul-int/lit8 v19, v7, 0x64

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    .line 2512
    const-wide/high16 v19, 0x404e

    mul-double v4, v4, v19

    .line 2513
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v19, v0

    add-double v19, v19, v4

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    .line 2514
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmpg-double v19, v19, v21

    if-gez v19, :cond_7

    .line 2515
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    .line 2516
    const/16 v19, 0x57

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    .line 2521
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAltitde()D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    move-wide/from16 v21, v0

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAlti:D

    .line 2522
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetBearing()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaHeading:F

    .line 2523
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetSpeed()F

    move-result v19

    const v20, 0x40666666

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    .line 2526
    const-string v19, "%.6f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLat:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2527
    .local v14, strLat:Ljava/lang/String;
    const-string v19, "%.6f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaLon:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 2528
    .local v15, strLon:Ljava/lang/String;
    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAlti:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2529
    .local v9, strAlti:Ljava/lang/String;
    const-string v19, "%.2f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 2530
    .local v16, strSpeed_K:Ljava/lang/String;
    const-string v19, "%.2f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaSpeed:F

    move/from16 v22, v0

    const v23, 0x3fed0e56

    div-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 2531
    .local v17, strSpeed_N:Ljava/lang/String;
    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaHeading:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 2533
    .local v13, strHeading:Ljava/lang/String;
    if-nez p1, :cond_8

    .line 2535
    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAccuracy()F

    move-result v22

    const/high16 v23, 0x42c8

    div-float v22, v22, v23

    const/high16 v23, 0x4000

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2536
    .local v12, strHDOP:Ljava/lang/String;
    const-string v19, "%.1f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaAltiDiff:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 2537
    .local v10, strAltiDiff:Ljava/lang/String;
    const-string v19, "%06d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaUTC:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 2538
    .local v18, strUTC:Ljava/lang/String;
    const-string v19, "%06d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaDate:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2540
    .local v11, strDate:Ljava/lang/String;
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPGGA,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",1,00,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",M,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",M,,*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    .line 2541
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    .line 2543
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPRMC,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "A"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",,,A*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    .line 2544
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirRMC:Ljava/lang/String;

    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2548
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPVTG,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",T,,M,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",N,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",K*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    .line 2549
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirVTG:Ljava/lang/String;

    .line 2553
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 2554
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "$GPGLL,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",A*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    .line 2555
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGLL:Ljava/lang/String;

    .line 2559
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaVirGGA:Ljava/lang/String;

    move-object/from16 p1, v0

    .end local v10           #strAltiDiff:Ljava/lang/String;
    .end local v11           #strDate:Ljava/lang/String;
    .end local v12           #strHDOP:Ljava/lang/String;
    .end local v18           #strUTC:Ljava/lang/String;
    :cond_5
    :goto_3
    move-object/from16 v3, p1

    .line 2675
    .end local p1
    .restart local v3       #NmeaOrg:Ljava/lang/String;
    goto/16 :goto_0

    .line 2505
    .end local v3           #NmeaOrg:Ljava/lang/String;
    .end local v9           #strAlti:Ljava/lang/String;
    .end local v13           #strHeading:Ljava/lang/String;
    .end local v14           #strLat:Ljava/lang/String;
    .end local v15           #strLon:Ljava/lang/String;
    .end local v16           #strSpeed_K:Ljava/lang/String;
    .end local v17           #strSpeed_N:Ljava/lang/String;
    .restart local p1
    :cond_6
    const/16 v19, 0x4e

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    goto/16 :goto_1

    .line 2518
    :cond_7
    const/16 v19, 0x45

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    goto/16 :goto_2

    .line 2563
    .restart local v9       #strAlti:Ljava/lang/String;
    .restart local v13       #strHeading:Ljava/lang/String;
    .restart local v14       #strLat:Ljava/lang/String;
    .restart local v15       #strLon:Ljava/lang/String;
    .restart local v16       #strSpeed_K:Ljava/lang/String;
    .restart local v17       #strSpeed_N:Ljava/lang/String;
    :cond_8
    const-string v19, "[,*]"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2565
    .local v8, splitNmea:[Ljava/lang/String;
    const-string v19, "$GPGGA"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 2566
    const/16 v19, 0x0

    aget-object p1, v8, v19

    .line 2567
    const/4 v6, 0x1

    .local v6, i:I
    :goto_4
    move-object v0, v8

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    sub-int v19, v19, v20

    move v0, v6

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 2568
    packed-switch v6, :pswitch_data_0

    .line 2588
    :pswitch_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2567
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2570
    :pswitch_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2571
    goto :goto_5

    .line 2573
    :pswitch_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2574
    goto :goto_5

    .line 2576
    :pswitch_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2577
    goto :goto_5

    .line 2579
    :pswitch_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2580
    goto/16 :goto_5

    .line 2582
    :pswitch_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2583
    goto/16 :goto_5

    .line 2585
    :pswitch_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2586
    goto/16 :goto_5

    .line 2592
    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2593
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 2594
    .end local v6           #i:I
    :cond_a
    const-string v19, "$GPRMC"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 2595
    const/16 v19, 0x0

    aget-object p1, v8, v19

    .line 2596
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_6
    move-object v0, v8

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    sub-int v19, v19, v20

    move v0, v6

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 2597
    packed-switch v6, :pswitch_data_1

    .line 2620
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2596
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2599
    :pswitch_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",A"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2600
    goto :goto_7

    .line 2602
    :pswitch_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2603
    goto :goto_7

    .line 2605
    :pswitch_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2606
    goto :goto_7

    .line 2608
    :pswitch_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2609
    goto :goto_7

    .line 2611
    :pswitch_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2612
    goto/16 :goto_7

    .line 2614
    :pswitch_c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2615
    goto/16 :goto_7

    .line 2617
    :pswitch_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2618
    goto/16 :goto_7

    .line 2624
    :cond_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2625
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 2626
    .end local v6           #i:I
    :cond_c
    const-string v19, "$GPVTG"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    .line 2627
    const/16 v19, 0x0

    aget-object p1, v8, v19

    .line 2628
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_8
    move-object v0, v8

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    sub-int v19, v19, v20

    move v0, v6

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 2629
    sparse-switch v6, :sswitch_data_0

    .line 2640
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2628
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 2631
    :sswitch_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2632
    goto :goto_9

    .line 2634
    :sswitch_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2635
    goto :goto_9

    .line 2637
    :sswitch_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2638
    goto :goto_9

    .line 2644
    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2645
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 2646
    .end local v6           #i:I
    :cond_e
    const-string v19, "$GPGLL"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 2647
    const/16 v19, 0x0

    aget-object p1, v8, v19

    .line 2648
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_a
    move-object v0, v8

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    sub-int v19, v19, v20

    move v0, v6

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    .line 2649
    packed-switch v6, :pswitch_data_2

    .line 2666
    :pswitch_e
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v8, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2648
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 2651
    :pswitch_f
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2652
    goto :goto_b

    .line 2654
    :pswitch_10
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaNS:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2655
    goto :goto_b

    .line 2657
    :pswitch_11
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2658
    goto :goto_b

    .line 2660
    :pswitch_12
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mNmeaEW:C

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2661
    goto/16 :goto_b

    .line 2663
    :pswitch_13
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",A"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2664
    goto/16 :goto_b

    .line 2670
    :cond_f
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2671
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingCalculateNmeaChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 2568
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 2597
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 2629
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch

    .line 2649
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_e
        :pswitch_13
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingStartNavigating()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingStopNavigating()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/GpsLocationProvider$SensorAiding;IDDDFFFJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 1626
    invoke-direct/range {p0 .. p12}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingReportLocation(IDDDFFFJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetFlags()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAltitde()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetSpeed()F

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetBearing()F

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAccuracy()F

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1626
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingReportSvStatus(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/location/GpsLocationProvider$SensorAiding;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1626
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingReportNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRotationChanged()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    return v0
.end method

.method static synthetic access$4802(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1626
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I

    return p1
.end method

.method static synthetic access$4900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingMakeSensorPacket()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1626
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagAccuracy:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1626
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriAccuracy:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mMagRecent:[F

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mOriRecent:[F

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1626
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F

    return-object v0
.end method
