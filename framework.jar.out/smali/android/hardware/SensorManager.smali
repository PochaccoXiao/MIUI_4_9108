.class public Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$LmsFilter;,
        Landroid/hardware/SensorManager$LegacyListener;,
        Landroid/hardware/SensorManager$ListenerDelegate;,
        Landroid/hardware/SensorManager$SensorThread;
    }
.end annotation


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.001f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field private static final SENSOR_DISABLE:I = -0x1

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field private static final TAG:Ljava/lang/String; = "SensorManager"

.field private static final mTempMatrix:[F

.field private static sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SensorManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static sQueue:I

.field private static sRotation:I

.field private static sSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSensorModuleInitialized:Z

.field private static sSensorThread:Landroid/hardware/SensorManager$SensorThread;

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private mLegacyListenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorListener;",
            "Landroid/hardware/SensorManager$LegacyListener;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 373
    sput-boolean v1, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 375
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    .line 377
    sput v1, Landroid/hardware/SensorManager;->sRotation:I

    .line 384
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 7
    .parameter "mainLooper"

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 699
    iput-object p1, p0, Landroid/hardware/SensorManager;->mMainLooper:Landroid/os/Looper;

    .line 702
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 703
    :try_start_0
    sget-boolean v4, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    if-nez v4, :cond_3

    .line 704
    const/4 v4, 0x1

    sput-boolean v4, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    .line 706
    invoke-static {}, Landroid/hardware/SensorManager;->nativeClassInit()V

    .line 708
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    sput-object v4, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;

    .line 710
    sget-object v4, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 714
    :try_start_1
    sget-object v4, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v5, Landroid/hardware/SensorManager$1;

    invoke-direct {v5, p0}, Landroid/hardware/SensorManager$1;-><init>(Landroid/hardware/SensorManager;)V

    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v4

    sput v4, Landroid/hardware/SensorManager;->sRotation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 726
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_module_init()I

    .line 727
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 728
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 730
    .local v1, i:I
    :cond_1
    new-instance v2, Landroid/hardware/Sensor;

    invoke-direct {v2}, Landroid/hardware/Sensor;-><init>()V

    .line 731
    .local v2, sensor:Landroid/hardware/Sensor;
    invoke-static {v2, v1}, Landroid/hardware/SensorManager;->sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I

    move-result v1

    .line 732
    const-string v4, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====>>>>>Num Sensor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    if-ltz v1, :cond_2

    .line 736
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/hardware/SensorManager;->getLegacySensorType(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/hardware/Sensor;->setLegacyType(I)V

    .line 737
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    sget-object v4, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 740
    :cond_2
    if-gtz v1, :cond_1

    .line 742
    new-instance v4, Landroid/hardware/SensorManager$SensorThread;

    invoke-direct {v4}, Landroid/hardware/SensorManager$SensorThread;-><init>()V

    sput-object v4, Landroid/hardware/SensorManager;->sSensorThread:Landroid/hardware/SensorManager$SensorThread;

    .line 744
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1           #i:I
    .end local v2           #sensor:Landroid/hardware/Sensor;
    :cond_3
    monitor-exit v3

    .line 745
    return-void

    .line 744
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 721
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 93
    sget v0, Landroid/hardware/SensorManager;->sQueue:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    sput p0, Landroid/hardware/SensorManager;->sQueue:I

    return p0
.end method

.method private disableSensorLocked(Landroid/hardware/Sensor;)Z
    .locals 6
    .parameter "sensor"

    .prologue
    .line 1106
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1107
    .local v1, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1109
    const/4 v4, 0x1

    .line 1114
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    :goto_0
    return v4

    .line 1112
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1113
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1114
    .local v0, handle:I
    sget v4, Landroid/hardware/SensorManager;->sQueue:I

    const/4 v5, -0x1

    invoke-static {v4, v3, v0, v5}, Landroid/hardware/SensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    goto :goto_0
.end method

.method private enableSensorLocked(Landroid/hardware/Sensor;I)Z
    .locals 6
    .parameter "sensor"
    .parameter "delay"

    .prologue
    .line 1093
    const/4 v4, 0x0

    .line 1094
    .local v4, result:Z
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1095
    .local v1, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1096
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1097
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1098
    .local v0, handle:I
    sget v5, Landroid/hardware/SensorManager;->sQueue:I

    invoke-static {v5, v3, v0, p2}, Landroid/hardware/SensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    .line 1102
    .end local v0           #handle:I
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public static getAltitude(FF)F
    .locals 7
    .parameter "p0"
    .parameter "p"

    .prologue
    .line 1747
    const v0, 0x3e42dcae

    .line 1748
    .local v0, coef:F
    const v1, 0x472d2a00

    const/high16 v2, 0x3f80

    div-float v3, p1, p0

    float-to-double v3, v3

    const-wide v5, 0x3fc85b95c0000000L

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    return v1
.end method

.method public static getAngleChange([F[F[F)V
    .locals 25
    .parameter "angleChange"
    .parameter "R"
    .parameter "prevR"

    .prologue
    .line 2065
    const/4 v4, 0x0

    .local v4, rd1:F
    const/4 v4, 0x0

    .local v4, rd4:F
    const/4 v4, 0x0

    .local v4, rd6:F
    const/4 v4, 0x0

    .local v4, rd7:F
    const/4 v4, 0x0

    .line 2066
    .local v4, rd8:F
    const/4 v13, 0x0

    .local v13, ri0:F
    const/4 v14, 0x0

    .local v14, ri1:F
    const/4 v15, 0x0

    .local v15, ri2:F
    const/16 v16, 0x0

    .local v16, ri3:F
    const/16 v17, 0x0

    .local v17, ri4:F
    const/16 v18, 0x0

    .local v18, ri5:F
    const/16 v19, 0x0

    .local v19, ri6:F
    const/16 v20, 0x0

    .local v20, ri7:F
    const/16 v21, 0x0

    .line 2067
    .local v21, ri8:F
    const/4 v4, 0x0

    .local v4, pri0:F
    const/4 v5, 0x0

    .local v5, pri1:F
    const/4 v6, 0x0

    .local v6, pri2:F
    const/4 v7, 0x0

    .local v7, pri3:F
    const/4 v8, 0x0

    .local v8, pri4:F
    const/4 v9, 0x0

    .local v9, pri5:F
    const/4 v10, 0x0

    .local v10, pri6:F
    const/4 v11, 0x0

    .local v11, pri7:F
    const/4 v12, 0x0

    .line 2070
    .local v12, pri8:F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 2071
    const/4 v13, 0x0

    aget v13, p1, v13

    .line 2072
    const/4 v14, 0x1

    aget v14, p1, v14

    .line 2073
    const/4 v15, 0x2

    aget v15, p1, v15

    .line 2074
    const/16 v16, 0x3

    aget v16, p1, v16

    .line 2075
    const/16 v17, 0x4

    aget v17, p1, v17

    .line 2076
    const/16 v18, 0x5

    aget v18, p1, v18

    .line 2077
    const/16 v19, 0x6

    aget v19, p1, v19

    .line 2078
    const/16 v20, 0x7

    aget v20, p1, v20

    .line 2079
    const/16 v21, 0x8

    aget p1, p1, v21

    .end local v21           #ri8:F
    .local p1, ri8:F
    move/from16 v21, p1

    .line 2092
    .end local p1           #ri8:F
    .restart local v21       #ri8:F
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p1, v0

    const/16 v22, 0x9

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 2093
    const/16 p1, 0x0

    aget p1, p2, p1

    .line 2094
    .end local v4           #pri0:F
    .local p1, pri0:F
    const/4 v4, 0x1

    aget v4, p2, v4

    .line 2095
    .end local v5           #pri1:F
    .local v4, pri1:F
    const/4 v5, 0x2

    aget v5, p2, v5

    .line 2096
    .end local v6           #pri2:F
    .local v5, pri2:F
    const/4 v6, 0x3

    aget v6, p2, v6

    .line 2097
    .end local v7           #pri3:F
    .local v6, pri3:F
    const/4 v7, 0x4

    aget v7, p2, v7

    .line 2098
    .end local v8           #pri4:F
    .local v7, pri4:F
    const/4 v8, 0x5

    aget v8, p2, v8

    .line 2099
    .end local v9           #pri5:F
    .local v8, pri5:F
    const/4 v9, 0x6

    aget v9, p2, v9

    .line 2100
    .end local v10           #pri6:F
    .local v9, pri6:F
    const/4 v10, 0x7

    aget v10, p2, v10

    .line 2101
    .end local v11           #pri7:F
    .local v10, pri7:F
    const/16 v11, 0x8

    aget p2, p2, v11

    .end local v12           #pri8:F
    .local p2, pri8:F
    move/from16 v24, p2

    .end local p2           #pri8:F
    .local v24, pri8:F
    move/from16 p2, v4

    .end local v4           #pri1:F
    .local p2, pri1:F
    move v4, v5

    .end local v5           #pri2:F
    .local v4, pri2:F
    move v5, v6

    .end local v6           #pri3:F
    .local v5, pri3:F
    move v6, v7

    .end local v7           #pri4:F
    .local v6, pri4:F
    move v7, v8

    .end local v8           #pri5:F
    .local v7, pri5:F
    move v8, v9

    .end local v9           #pri6:F
    .local v8, pri6:F
    move v9, v10

    .end local v10           #pri7:F
    .local v9, pri7:F
    move/from16 v10, v24

    .line 2117
    .end local v24           #pri8:F
    .local v10, pri8:F
    :goto_1
    mul-float p1, p1, v14

    mul-float v5, v5, v17

    add-float p1, p1, v5

    mul-float v5, v8, v20

    add-float p1, p1, v5

    .line 2118
    .local p1, rd1:F
    mul-float p2, p2, v14

    mul-float v5, v6, v17

    add-float p2, p2, v5

    mul-float v5, v9, v20

    add-float p2, p2, v5

    .line 2119
    .local p2, rd4:F
    mul-float v5, v4, v13

    mul-float v6, v7, v16

    add-float/2addr v5, v6

    mul-float v6, v10, v19

    add-float/2addr v5, v6

    .line 2120
    .local v5, rd6:F
    mul-float v6, v4, v14

    mul-float v8, v7, v17

    add-float/2addr v6, v8

    mul-float v8, v10, v20

    add-float/2addr v6, v8

    .line 2121
    .local v6, rd7:F
    mul-float/2addr v4, v15

    mul-float v7, v7, v18

    add-float/2addr v4, v7

    mul-float v7, v10, v21

    add-float/2addr v4, v7

    .line 2123
    .local v4, rd8:F
    const/4 v7, 0x0

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide v8, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 p1, v0

    move-wide v0, v8

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .end local v7           #pri5:F
    .end local v8           #pri6:F
    .end local p1           #rd1:F
    move-result-wide p1

    move-wide/from16 v0, p1

    double-to-float v0, v0

    move/from16 p1, v0

    aput p1, p0, v7

    .line 2124
    const/16 p1, 0x1

    move v0, v6

    neg-float v0, v0

    move/from16 p2, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    .end local v6           #rd7:F
    .end local p2           #rd4:F
    move-result-wide v6

    move-wide v0, v6

    double-to-float v0, v0

    move/from16 p2, v0

    aput p2, p0, p1

    .line 2125
    const/16 p1, 0x2

    move v0, v5

    neg-float v0, v0

    move/from16 p2, v0

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide v5, v0

    float-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .end local v5           #rd6:F
    move-result-wide v4

    .end local v4           #rd8:F
    move-wide v0, v4

    double-to-float v0, v0

    move/from16 p2, v0

    aput p2, p0, p1

    .line 2127
    return-void

    .line 2080
    .local v4, pri0:F
    .local v5, pri1:F
    .local v6, pri2:F
    .local v7, pri3:F
    .local v8, pri4:F
    .local v9, pri5:F
    .local v10, pri6:F
    .restart local v11       #pri7:F
    .restart local v12       #pri8:F
    .local p1, R:[F
    .local p2, prevR:[F
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 2081
    const/4 v13, 0x0

    aget v13, p1, v13

    .line 2082
    const/4 v14, 0x1

    aget v14, p1, v14

    .line 2083
    const/4 v15, 0x2

    aget v15, p1, v15

    .line 2084
    const/16 v16, 0x4

    aget v16, p1, v16

    .line 2085
    const/16 v17, 0x5

    aget v17, p1, v17

    .line 2086
    const/16 v18, 0x6

    aget v18, p1, v18

    .line 2087
    const/16 v19, 0x8

    aget v19, p1, v19

    .line 2088
    const/16 v20, 0x9

    aget v20, p1, v20

    .line 2089
    const/16 v21, 0xa

    aget p1, p1, v21

    .end local v21           #ri8:F
    .local p1, ri8:F
    move/from16 v21, p1

    .end local p1           #ri8:F
    .restart local v21       #ri8:F
    goto/16 :goto_0

    .line 2102
    :cond_2
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p1, v0

    const/16 v22, 0x10

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 2103
    const/16 p1, 0x0

    aget p1, p2, p1

    .line 2104
    .end local v4           #pri0:F
    .local p1, pri0:F
    const/4 v4, 0x1

    aget v4, p2, v4

    .line 2105
    .end local v5           #pri1:F
    .local v4, pri1:F
    const/4 v5, 0x2

    aget v5, p2, v5

    .line 2106
    .end local v6           #pri2:F
    .local v5, pri2:F
    const/4 v6, 0x4

    aget v6, p2, v6

    .line 2107
    .end local v7           #pri3:F
    .local v6, pri3:F
    const/4 v7, 0x5

    aget v7, p2, v7

    .line 2108
    .end local v8           #pri4:F
    .local v7, pri4:F
    const/4 v8, 0x6

    aget v8, p2, v8

    .line 2109
    .end local v9           #pri5:F
    .local v8, pri5:F
    const/16 v9, 0x8

    aget v9, p2, v9

    .line 2110
    .end local v10           #pri6:F
    .local v9, pri6:F
    const/16 v10, 0x9

    aget v10, p2, v10

    .line 2111
    .end local v11           #pri7:F
    .local v10, pri7:F
    const/16 v11, 0xa

    aget p2, p2, v11

    .end local v12           #pri8:F
    .local p2, pri8:F
    move/from16 v24, p2

    .end local p2           #pri8:F
    .restart local v24       #pri8:F
    move/from16 p2, v4

    .end local v4           #pri1:F
    .local p2, pri1:F
    move v4, v5

    .end local v5           #pri2:F
    .local v4, pri2:F
    move v5, v6

    .end local v6           #pri3:F
    .local v5, pri3:F
    move v6, v7

    .end local v7           #pri4:F
    .local v6, pri4:F
    move v7, v8

    .end local v8           #pri5:F
    .local v7, pri5:F
    move v8, v9

    .end local v9           #pri6:F
    .local v8, pri6:F
    move v9, v10

    .end local v10           #pri7:F
    .local v9, pri7:F
    move/from16 v10, v24

    .end local v24           #pri8:F
    .local v10, pri8:F
    goto/16 :goto_1

    .end local p1           #pri0:F
    .local v4, pri0:F
    .local v5, pri1:F
    .local v6, pri2:F
    .local v7, pri3:F
    .local v8, pri4:F
    .local v9, pri5:F
    .local v10, pri6:F
    .restart local v11       #pri7:F
    .restart local v12       #pri8:F
    .local p2, prevR:[F
    :cond_3
    move/from16 p2, v5

    .end local v5           #pri1:F
    .local p2, pri1:F
    move/from16 p1, v4

    .end local v4           #pri0:F
    .restart local p1       #pri0:F
    move v5, v7

    .end local v7           #pri3:F
    .local v5, pri3:F
    move v4, v6

    .end local v6           #pri2:F
    .local v4, pri2:F
    move v6, v8

    .end local v8           #pri4:F
    .local v6, pri4:F
    move v7, v9

    .end local v9           #pri5:F
    .local v7, pri5:F
    move v8, v10

    .end local v10           #pri6:F
    .local v8, pri6:F
    move v9, v11

    .end local v11           #pri7:F
    .local v9, pri7:F
    move v10, v12

    .end local v12           #pri8:F
    .local v10, pri8:F
    goto/16 :goto_1
.end method

.method public static getInclination([F)F
    .locals 4
    .parameter "I"

    .prologue
    const/4 v2, 0x5

    .line 1492
    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1493
    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1495
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private getLegacySensorType(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 748
    packed-switch p1, :pswitch_data_0

    .line 758
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 750
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 752
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 754
    :pswitch_3
    const/16 v0, 0x80

    goto :goto_0

    .line 756
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getOrientation([F[F)[F
    .locals 9
    .parameter "R"
    .parameter "values"

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1705
    array-length v0, p0

    if-ne v0, v8, :cond_0

    .line 1706
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1707
    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1708
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 1714
    :goto_0
    return-object p1

    .line 1710
    :cond_0
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x5

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1711
    aget v0, p0, v8

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1712
    aget v0, p0, v7

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0xa

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    goto :goto_0
.end method

.method public static getQuaternionFromVector([F[F)V
    .locals 8
    .parameter "Q"
    .parameter "rv"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2212
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2213
    aget v0, p1, v7

    aput v0, p0, v3

    .line 2218
    :goto_0
    aget v0, p1, v3

    aput v0, p0, v4

    .line 2219
    aget v0, p1, v4

    aput v0, p0, v5

    .line 2220
    aget v0, p1, v5

    aput v0, p0, v7

    .line 2221
    return-void

    .line 2215
    :cond_0
    const/high16 v0, 0x3f80

    aget v1, p1, v3

    aget v2, p1, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aget v1, p1, v4

    aget v2, p1, v4

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aget v1, p1, v5

    aget v2, p1, v5

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p0, v3

    .line 2216
    aget v0, p0, v3

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    aget v0, p0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_1
    aput v0, p0, v3

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method static getRotation()I
    .locals 2

    .prologue
    .line 1762
    sget-object v0, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1763
    :try_start_0
    sget v1, Landroid/hardware/SensorManager;->sRotation:I

    monitor-exit v0

    return v1

    .line 1764
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .locals 15
    .parameter "R"
    .parameter "I"
    .parameter "gravity"
    .parameter "geomagnetic"

    .prologue
    .line 1417
    const/4 v2, 0x0

    aget v2, p2, v2

    .line 1418
    .local v2, Ax:F
    const/4 v3, 0x1

    aget v3, p2, v3

    .line 1419
    .local v3, Ay:F
    const/4 v4, 0x2

    aget v4, p2, v4

    .line 1420
    .local v4, Az:F
    const/16 p2, 0x0

    aget v5, p3, p2

    .line 1421
    .end local p2
    .local v5, Ex:F
    const/16 p2, 0x1

    aget v6, p3, p2

    .line 1422
    .local v6, Ey:F
    const/16 p2, 0x2

    aget v7, p3, p2

    .line 1423
    .local v7, Ez:F
    mul-float p2, v6, v4

    mul-float p3, v7, v3

    sub-float p2, p2, p3

    .line 1424
    .local p2, Hx:F
    mul-float p3, v7, v2

    mul-float v8, v5, v4

    sub-float p3, p3, v8

    .line 1425
    .local p3, Hy:F
    mul-float v8, v5, v3

    mul-float v9, v6, v2

    sub-float v10, v8, v9

    .line 1426
    .local v10, Hz:F
    mul-float v8, p2, p2

    mul-float v9, p3, p3

    add-float/2addr v8, v9

    mul-float v9, v10, v10

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 1427
    .local v8, normH:F
    const v9, 0x3dcccccd

    cmpg-float v9, v8, v9

    if-gez v9, :cond_0

    .line 1430
    const/4 p0, 0x0

    move/from16 p1, v3

    .end local v3           #Ay:F
    .local p1, Ay:F
    move v3, v10

    .end local v10           #Hz:F
    .local v3, Hz:F
    move/from16 v14, p2

    .end local p2           #Hx:F
    .local v14, Hx:F
    move/from16 p2, v4

    .end local v4           #Az:F
    .local p2, Az:F
    move v4, p0

    move p0, v2

    .end local v2           #Ax:F
    .local p0, Ax:F
    move/from16 v2, p3

    .end local p3           #Hy:F
    .local v2, Hy:F
    move/from16 p3, v14

    .line 1474
    .end local v5           #Ex:F
    .end local v6           #Ey:F
    .end local v7           #Ez:F
    .end local v8           #normH:F
    .end local v14           #Hx:F
    .local p3, Hx:F
    :goto_0
    return v4

    .line 1432
    .local v2, Ax:F
    .local v3, Ay:F
    .restart local v4       #Az:F
    .restart local v5       #Ex:F
    .restart local v6       #Ey:F
    .restart local v7       #Ez:F
    .restart local v8       #normH:F
    .restart local v10       #Hz:F
    .local p0, R:[F
    .local p1, I:[F
    .local p2, Hx:F
    .local p3, Hy:F
    :cond_0
    const/high16 v9, 0x3f80

    div-float v11, v9, v8

    .line 1433
    .local v11, invH:F
    mul-float v8, p2, v11

    .line 1434
    .end local p2           #Hx:F
    .local v8, Hx:F
    mul-float v9, p3, v11

    .line 1435
    .end local p3           #Hy:F
    .local v9, Hy:F
    mul-float/2addr v10, v11

    .line 1436
    const/high16 p2, 0x3f80

    mul-float p3, v2, v2

    mul-float v11, v3, v3

    add-float p3, p3, v11

    mul-float v11, v4, v4

    add-float p3, p3, v11

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .end local v11           #invH:F
    move-result-wide v11

    move-wide v0, v11

    double-to-float v0, v0

    move/from16 p3, v0

    div-float v11, p2, p3

    .line 1437
    .local v11, invA:F
    mul-float p2, v2, v11

    .line 1438
    .end local v2           #Ax:F
    .local p2, Ax:F
    mul-float p3, v3, v11

    .line 1439
    .end local v3           #Ay:F
    .local p3, Ay:F
    mul-float v2, v4, v11

    .line 1440
    .end local v4           #Az:F
    .local v2, Az:F
    mul-float v3, p3, v10

    mul-float v4, v2, v9

    sub-float/2addr v3, v4

    .line 1441
    .local v3, Mx:F
    mul-float v4, v2, v8

    mul-float v11, p2, v10

    sub-float/2addr v4, v11

    .line 1442
    .local v4, My:F
    mul-float v11, p2, v9

    mul-float v12, p3, v8

    sub-float/2addr v11, v12

    .line 1443
    .local v11, Mz:F
    if-eqz p0, :cond_1

    .line 1444
    array-length v12, p0

    const/16 v13, 0x9

    if-ne v12, v13, :cond_3

    .line 1445
    const/4 v12, 0x0

    aput v8, p0, v12

    const/4 v12, 0x1

    aput v9, p0, v12

    const/4 v12, 0x2

    aput v10, p0, v12

    .line 1446
    const/4 v12, 0x3

    aput v3, p0, v12

    const/4 v12, 0x4

    aput v4, p0, v12

    const/4 v12, 0x5

    aput v11, p0, v12

    .line 1447
    const/4 v12, 0x6

    aput p2, p0, v12

    const/4 v12, 0x7

    aput p3, p0, v12

    const/16 v12, 0x8

    aput v2, p0, v12

    .line 1455
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 1459
    const/high16 p0, 0x3f80

    mul-float v12, v5, v5

    mul-float v13, v6, v6

    add-float/2addr v12, v13

    mul-float v13, v7, v7

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .end local p0           #R:[F
    move-result-wide v12

    double-to-float v12, v12

    div-float v12, p0, v12

    .line 1460
    .local v12, invE:F
    mul-float p0, v5, v3

    mul-float v3, v6, v4

    add-float/2addr p0, v3

    mul-float v3, v7, v11

    add-float/2addr p0, v3

    mul-float/2addr p0, v12

    .line 1461
    .local p0, c:F
    mul-float v3, v5, p2

    mul-float v4, v6, p3

    add-float/2addr v3, v4

    mul-float v4, v7, v2

    add-float/2addr v3, v4

    mul-float/2addr v3, v12

    .line 1462
    .local v3, s:F
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    .end local v4           #My:F
    const/16 v5, 0x9

    if-ne v4, v5, :cond_4

    .line 1463
    .end local v5           #Ex:F
    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    aput v5, p1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, p1, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, p1, v4

    .line 1464
    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, p1, v4

    const/4 v4, 0x4

    aput p0, p1, v4

    const/4 v4, 0x5

    aput v3, p1, v4

    .line 1465
    const/4 v4, 0x6

    const/4 v5, 0x0

    aput v5, p1, v4

    const/4 v4, 0x7

    neg-float v3, v3

    aput v3, p1, v4

    .end local v3           #s:F
    const/16 v3, 0x8

    aput p0, p1, v3

    .line 1474
    .end local v6           #Ey:F
    .end local v7           #Ez:F
    .end local v11           #Mz:F
    .end local v12           #invE:F
    .end local p0           #c:F
    :cond_2
    :goto_2
    const/4 p0, 0x1

    move v3, v10

    .end local v10           #Hz:F
    .local v3, Hz:F
    move/from16 p1, p3

    .end local p3           #Ay:F
    .local p1, Ay:F
    move v4, p0

    move/from16 p0, p2

    .end local p2           #Ax:F
    .local p0, Ax:F
    move/from16 p3, v8

    .end local v8           #Hx:F
    .local p3, Hx:F
    move/from16 p2, v2

    .end local v2           #Az:F
    .local p2, Az:F
    move v2, v9

    .end local v9           #Hy:F
    .local v2, Hy:F
    goto/16 :goto_0

    .line 1448
    .local v2, Az:F
    .local v3, Mx:F
    .restart local v4       #My:F
    .restart local v5       #Ex:F
    .restart local v6       #Ey:F
    .restart local v7       #Ez:F
    .restart local v8       #Hx:F
    .restart local v9       #Hy:F
    .restart local v10       #Hz:F
    .restart local v11       #Mz:F
    .local p0, R:[F
    .local p1, I:[F
    .local p2, Ax:F
    .local p3, Ay:F
    :cond_3
    array-length v12, p0

    const/16 v13, 0x10

    if-ne v12, v13, :cond_1

    .line 1449
    const/4 v12, 0x0

    aput v8, p0, v12

    const/4 v12, 0x1

    aput v9, p0, v12

    const/4 v12, 0x2

    aput v10, p0, v12

    const/4 v12, 0x3

    const/4 v13, 0x0

    aput v13, p0, v12

    .line 1450
    const/4 v12, 0x4

    aput v3, p0, v12

    const/4 v12, 0x5

    aput v4, p0, v12

    const/4 v12, 0x6

    aput v11, p0, v12

    const/4 v12, 0x7

    const/4 v13, 0x0

    aput v13, p0, v12

    .line 1451
    const/16 v12, 0x8

    aput p2, p0, v12

    const/16 v12, 0x9

    aput p3, p0, v12

    const/16 v12, 0xa

    aput v2, p0, v12

    const/16 v12, 0xb

    const/4 v13, 0x0

    aput v13, p0, v12

    .line 1452
    const/16 v12, 0xc

    const/4 v13, 0x0

    aput v13, p0, v12

    const/16 v12, 0xd

    const/4 v13, 0x0

    aput v13, p0, v12

    const/16 v12, 0xe

    const/4 v13, 0x0

    aput v13, p0, v12

    const/16 v12, 0xf

    const/high16 v13, 0x3f80

    aput v13, p0, v12

    goto/16 :goto_1

    .line 1466
    .end local v4           #My:F
    .end local v5           #Ex:F
    .local v3, s:F
    .restart local v12       #invE:F
    .local p0, c:F
    :cond_4
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    .line 1467
    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    aput v5, p1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, p1, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, p1, v4

    .line 1468
    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v5, p1, v4

    const/4 v4, 0x5

    aput p0, p1, v4

    const/4 v4, 0x6

    aput v3, p1, v4

    .line 1469
    const/16 v4, 0x8

    const/4 v5, 0x0

    aput v5, p1, v4

    const/16 v4, 0x9

    neg-float v3, v3

    aput v3, p1, v4

    .end local v3           #s:F
    const/16 v3, 0xa

    aput p0, p1, v3

    .line 1470
    const/4 p0, 0x3

    const/4 v3, 0x7

    const/16 v4, 0xb

    const/16 v5, 0xc

    const/16 v6, 0xd

    const/16 v7, 0xe

    const/4 v11, 0x0

    aput v11, p1, v7

    .end local v6           #Ey:F
    .end local v7           #Ez:F
    .end local v11           #Mz:F
    .end local p0           #c:F
    aput v11, p1, v6

    aput v11, p1, v5

    aput v11, p1, v4

    aput v11, p1, v3

    aput v11, p1, p0

    .line 1471
    const/16 p0, 0xf

    const/high16 v3, 0x3f80

    aput v3, p1, p0

    goto/16 :goto_2
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .locals 11
    .parameter "R"
    .parameter "rotationVector"

    .prologue
    .line 2151
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 2152
    .local v0, q1:F
    const/4 v1, 0x1

    aget v3, p1, v1

    .line 2153
    .local v3, q2:F
    const/4 v1, 0x2

    aget v5, p1, v1

    .line 2155
    .local v5, q3:F
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2156
    const/4 v1, 0x3

    aget p1, p1, v1

    .line 2162
    .local p1, q0:F
    :goto_0
    const/high16 v1, 0x4000

    mul-float/2addr v1, v0

    mul-float v7, v1, v0

    .line 2163
    .local v7, sq_q1:F
    const/high16 v1, 0x4000

    mul-float/2addr v1, v3

    mul-float v8, v1, v3

    .line 2164
    .local v8, sq_q2:F
    const/high16 v1, 0x4000

    mul-float/2addr v1, v5

    mul-float v9, v1, v5

    .line 2165
    .local v9, sq_q3:F
    const/high16 v1, 0x4000

    mul-float/2addr v1, v0

    mul-float/2addr v1, v3

    .line 2166
    .local v1, q1_q2:F
    const/high16 v2, 0x4000

    mul-float/2addr v2, v5

    mul-float v6, v2, p1

    .line 2167
    .local v6, q3_q0:F
    const/high16 v2, 0x4000

    mul-float/2addr v2, v0

    mul-float/2addr v2, v5

    .line 2168
    .local v2, q1_q3:F
    const/high16 v4, 0x4000

    mul-float/2addr v4, v3

    mul-float/2addr v4, p1

    .line 2169
    .local v4, q2_q0:F
    const/high16 v10, 0x4000

    mul-float/2addr v3, v10

    mul-float/2addr v3, v5

    .line 2170
    .local v3, q2_q3:F
    const/high16 v5, 0x4000

    mul-float/2addr v0, v5

    mul-float/2addr p1, v0

    .line 2172
    .local p1, q1_q0:F
    array-length v0, p0

    .end local v0           #q1:F
    .end local v5           #q3:F
    const/16 v5, 0x9

    if-ne v0, v5, :cond_3

    .line 2173
    const/4 v0, 0x0

    const/high16 v5, 0x3f80

    sub-float/2addr v5, v8

    sub-float/2addr v5, v9

    aput v5, p0, v0

    .line 2174
    const/4 v0, 0x1

    sub-float v5, v1, v6

    aput v5, p0, v0

    .line 2175
    const/4 v0, 0x2

    add-float v5, v2, v4

    aput v5, p0, v0

    .line 2177
    const/4 v0, 0x3

    add-float/2addr v1, v6

    aput v1, p0, v0

    .line 2178
    .end local v1           #q1_q2:F
    const/4 v0, 0x4

    const/high16 v1, 0x3f80

    sub-float/2addr v1, v7

    sub-float/2addr v1, v9

    aput v1, p0, v0

    .line 2179
    const/4 v0, 0x5

    sub-float v1, v3, p1

    aput v1, p0, v0

    .line 2181
    const/4 v0, 0x6

    sub-float v1, v2, v4

    aput v1, p0, v0

    .line 2182
    const/4 v0, 0x7

    add-float/2addr p1, v3

    aput p1, p0, v0

    .line 2183
    .end local p1           #q1_q0:F
    const/16 p1, 0x8

    const/high16 v0, 0x3f80

    sub-float/2addr v0, v7

    sub-float/2addr v0, v8

    aput v0, p0, p1

    .line 2203
    .end local v2           #q1_q3:F
    :cond_0
    :goto_1
    return-void

    .line 2158
    .end local v4           #q2_q0:F
    .end local v6           #q3_q0:F
    .end local v7           #sq_q1:F
    .end local v8           #sq_q2:F
    .end local v9           #sq_q3:F
    .restart local v0       #q1:F
    .local v3, q2:F
    .restart local v5       #q3:F
    .local p1, rotationVector:[F
    :cond_1
    const/high16 p1, 0x3f80

    mul-float v1, v0, v0

    sub-float/2addr p1, v1

    mul-float v1, v3, v3

    sub-float/2addr p1, v1

    mul-float v1, v5, v5

    sub-float/2addr p1, v1

    .line 2159
    .local p1, q0:F
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    :goto_2
    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    .line 2184
    .end local v0           #q1:F
    .end local v5           #q3:F
    .restart local v1       #q1_q2:F
    .restart local v2       #q1_q3:F
    .local v3, q2_q3:F
    .restart local v4       #q2_q0:F
    .restart local v6       #q3_q0:F
    .restart local v7       #sq_q1:F
    .restart local v8       #sq_q2:F
    .restart local v9       #sq_q3:F
    .local p1, q1_q0:F
    :cond_3
    array-length v0, p0

    const/16 v5, 0x10

    if-ne v0, v5, :cond_0

    .line 2185
    const/4 v0, 0x0

    const/high16 v5, 0x3f80

    sub-float/2addr v5, v8

    sub-float/2addr v5, v9

    aput v5, p0, v0

    .line 2186
    const/4 v0, 0x1

    sub-float v5, v1, v6

    aput v5, p0, v0

    .line 2187
    const/4 v0, 0x2

    add-float v5, v2, v4

    aput v5, p0, v0

    .line 2188
    const/4 v0, 0x3

    const/4 v5, 0x0

    aput v5, p0, v0

    .line 2190
    const/4 v0, 0x4

    add-float/2addr v1, v6

    aput v1, p0, v0

    .line 2191
    .end local v1           #q1_q2:F
    const/4 v0, 0x5

    const/high16 v1, 0x3f80

    sub-float/2addr v1, v7

    sub-float/2addr v1, v9

    aput v1, p0, v0

    .line 2192
    const/4 v0, 0x6

    sub-float v1, v3, p1

    aput v1, p0, v0

    .line 2193
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 2195
    const/16 v0, 0x8

    sub-float v1, v2, v4

    aput v1, p0, v0

    .line 2196
    const/16 v0, 0x9

    add-float/2addr p1, v3

    aput p1, p0, v0

    .line 2197
    .end local p1           #q1_q0:F
    const/16 p1, 0xa

    const/high16 v0, 0x3f80

    sub-float/2addr v0, v7

    sub-float/2addr v0, v8

    aput v0, p0, p1

    .line 2198
    const/16 p1, 0xb

    const/4 v0, 0x0

    aput v0, p0, p1

    .line 2200
    const/16 p1, 0xc

    const/16 v0, 0xd

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput v2, p0, v1

    .end local v2           #q1_q3:F
    aput v2, p0, v0

    aput v2, p0, p1

    .line 2201
    const/16 p1, 0xf

    const/high16 v0, 0x3f80

    aput v0, p0, p1

    goto :goto_1
.end method

.method private static native nativeClassInit()V
.end method

.method private registerLegacyListener(IILandroid/hardware/SensorListener;II)Z
    .locals 7
    .parameter "legacyType"
    .parameter "type"
    .parameter "listener"
    .parameter "sensors"
    .parameter "rate"

    .prologue
    .line 911
    if-nez p3, :cond_0

    .line 912
    const/4 v5, 0x0

    .line 939
    :goto_0
    return v5

    .line 914
    :cond_0
    const/4 v3, 0x0

    .line 916
    .local v3, result:Z
    and-int v5, p4, p1

    if-eqz v5, :cond_2

    .line 918
    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 919
    .local v4, sensor:Landroid/hardware/Sensor;
    if-eqz v4, :cond_2

    .line 923
    const/4 v1, 0x0

    .line 924
    .local v1, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 925
    :try_start_0
    iget-object v5, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/SensorManager$LegacyListener;

    move-object v1, v0

    .line 926
    if-nez v1, :cond_1

    .line 929
    new-instance v2, Landroid/hardware/SensorManager$LegacyListener;

    invoke-direct {v2, p0, p3}, Landroid/hardware/SensorManager$LegacyListener;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .local v2, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :try_start_1
    iget-object v5, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v5, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 932
    .end local v2           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :cond_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 934
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$LegacyListener;->registerSensor(I)V

    .line 936
    invoke-virtual {p0, v1, v4, p5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .end local v4           #sensor:Landroid/hardware/Sensor;
    :cond_2
    move v5, v3

    .line 939
    goto :goto_0

    .line 932
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v4       #sensor:Landroid/hardware/Sensor;
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v2       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    goto :goto_1
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .locals 4
    .parameter "inR"
    .parameter "X"
    .parameter "Y"
    .parameter "outR"

    .prologue
    .line 1577
    if-ne p0, p3, :cond_2

    .line 1578
    sget-object v2, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 1579
    .local v2, temp:[F
    monitor-enter v2

    .line 1581
    :try_start_0
    invoke-static {p0, p1, p2, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1582
    array-length v1, p3

    .line 1583
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1584
    aget v3, v2, v0

    aput v3, p3, v0

    .line 1583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1585
    :cond_0
    const/4 v3, 0x1

    monitor-exit v2

    .line 1589
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #temp:[F
    :goto_1
    return v3

    .line 1587
    .restart local v2       #temp:[F
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1589
    .end local v2           #temp:[F
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    goto :goto_1

    .line 1587
    .restart local v2       #temp:[F
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .locals 11
    .parameter "inR"
    .parameter "X"
    .parameter "Y"
    .parameter "outR"

    .prologue
    .line 1606
    array-length v3, p3

    .line 1607
    .local v3, length:I
    array-length v0, p0

    if-eq v0, v3, :cond_0

    .line 1608
    const/4 p0, 0x0

    .line 1650
    .end local v3           #length:I
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return p0

    .line 1609
    .restart local v3       #length:I
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    and-int/lit8 v0, p1, 0x7c

    if-nez v0, :cond_1

    and-int/lit8 v0, p2, 0x7c

    if-eqz v0, :cond_2

    .line 1610
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 1611
    :cond_2
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_3

    and-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_4

    .line 1612
    :cond_3
    const/4 p0, 0x0

    goto :goto_0

    .line 1613
    :cond_4
    and-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p2, 0x3

    if-ne v0, v1, :cond_5

    .line 1614
    const/4 p0, 0x0

    goto :goto_0

    .line 1619
    :cond_5
    xor-int v0, p1, p2

    .line 1622
    .local v0, Z:I
    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x1

    sub-int v6, v1, v2

    .line 1623
    .local v6, x:I
    and-int/lit8 v1, p2, 0x3

    const/4 v2, 0x1

    sub-int v7, v1, v2

    .line 1624
    .local v7, y:I
    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    sub-int v8, v1, v2

    .line 1627
    .local v8, z:I
    add-int/lit8 v1, v8, 0x1

    rem-int/lit8 v1, v1, 0x3

    .line 1628
    .local v1, axis_y:I
    add-int/lit8 v2, v8, 0x2

    rem-int/lit8 v2, v2, 0x3

    .line 1629
    .local v2, axis_z:I
    xor-int/2addr v1, v6

    xor-int/2addr v2, v7

    or-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 1630
    .end local v1           #axis_y:I
    .end local v2           #axis_z:I
    xor-int/lit16 v0, v0, 0x80

    .line 1632
    :cond_6
    const/16 v1, 0x80

    if-lt p1, v1, :cond_a

    const/4 p1, 0x1

    move v2, p1

    .line 1633
    .end local p1
    .local v2, sx:Z
    :goto_1
    const/16 p1, 0x80

    if-lt p2, p1, :cond_b

    const/4 p1, 0x1

    move v4, p1

    .line 1634
    .local v4, sy:Z
    :goto_2
    const/16 p1, 0x80

    if-lt v0, p1, :cond_c

    const/4 p1, 0x1

    move v5, p1

    .line 1637
    .local v5, sz:Z
    :goto_3
    const/16 p1, 0x10

    if-ne v3, p1, :cond_d

    const/4 p1, 0x4

    move v1, p1

    .line 1638
    .local v1, rowLength:I
    :goto_4
    const/4 p1, 0x0

    .local p1, j:I
    move p2, p1

    .end local v0           #Z:I
    .end local p1           #j:I
    .local p2, j:I
    :goto_5
    const/4 p1, 0x3

    if-ge p2, p1, :cond_12

    .line 1639
    mul-int v0, p2, v1

    .line 1640
    .local v0, offset:I
    const/4 p1, 0x0

    .local p1, i:I
    :goto_6
    const/4 v9, 0x3

    if-ge p1, v9, :cond_11

    .line 1641
    if-ne v6, p1, :cond_7

    add-int v9, v0, p1

    if-eqz v2, :cond_e

    add-int/lit8 v10, v0, 0x0

    aget v10, p0, v10

    neg-float v10, v10

    :goto_7
    aput v10, p3, v9

    .line 1642
    :cond_7
    if-ne v7, p1, :cond_8

    add-int v9, v0, p1

    if-eqz v4, :cond_f

    add-int/lit8 v10, v0, 0x1

    aget v10, p0, v10

    neg-float v10, v10

    :goto_8
    aput v10, p3, v9

    .line 1643
    :cond_8
    if-ne v8, p1, :cond_9

    add-int v9, v0, p1

    if-eqz v5, :cond_10

    add-int/lit8 v10, v0, 0x2

    aget v10, p0, v10

    neg-float v10, v10

    :goto_9
    aput v10, p3, v9

    .line 1640
    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 1632
    .end local v1           #rowLength:I
    .end local v2           #sx:Z
    .end local v4           #sy:Z
    .end local v5           #sz:Z
    .local v0, Z:I
    .local p1, X:I
    .local p2, Y:I
    :cond_a
    const/4 p1, 0x0

    move v2, p1

    goto :goto_1

    .line 1633
    .end local p1           #X:I
    .restart local v2       #sx:Z
    :cond_b
    const/4 p1, 0x0

    move v4, p1

    goto :goto_2

    .line 1634
    .restart local v4       #sy:Z
    :cond_c
    const/4 p1, 0x0

    move v5, p1

    goto :goto_3

    .line 1637
    .restart local v5       #sz:Z
    :cond_d
    const/4 p1, 0x3

    move v1, p1

    goto :goto_4

    .line 1641
    .local v0, offset:I
    .restart local v1       #rowLength:I
    .local p1, i:I
    .local p2, j:I
    :cond_e
    add-int/lit8 v10, v0, 0x0

    aget v10, p0, v10

    goto :goto_7

    .line 1642
    :cond_f
    add-int/lit8 v10, v0, 0x1

    aget v10, p0, v10

    goto :goto_8

    .line 1643
    :cond_10
    add-int/lit8 v10, v0, 0x2

    aget v10, p0, v10

    goto :goto_9

    .line 1638
    :cond_11
    add-int/lit8 p1, p2, 0x1

    .end local p2           #j:I
    .local p1, j:I
    move p2, p1

    .end local p1           #j:I
    .restart local p2       #j:I
    goto :goto_5

    .line 1646
    .end local v0           #offset:I
    :cond_12
    const/16 p0, 0x10

    if-ne v3, p0, :cond_13

    .line 1647
    .end local p0
    const/4 p0, 0x3

    const/4 p1, 0x7

    const/16 p2, 0xb

    const/16 v0, 0xc

    const/16 v1, 0xd

    const/16 v2, 0xe

    const/4 v3, 0x0

    aput v3, p3, v2

    .end local v1           #rowLength:I
    .end local v2           #sx:Z
    .end local v3           #length:I
    .end local p2           #j:I
    aput v3, p3, v1

    aput v3, p3, v0

    aput v3, p3, p2

    aput v3, p3, p1

    aput v3, p3, p0

    .line 1648
    const/16 p0, 0xf

    const/high16 p1, 0x3f80

    aput p1, p3, p0

    .line 1650
    :cond_13
    const/4 p0, 0x1

    goto/16 :goto_0
.end method

.method static native sensors_calibrate(I)I
.end method

.method static native sensors_calibration_available()I
.end method

.method static native sensors_calibration_get_gyro(DDDI)[F
.end method

.method static native sensors_create_queue()I
.end method

.method static native sensors_data_poll(I[F[I[J)I
.end method

.method static native sensors_destroy_queue(I)V
.end method

.method static native sensors_enable_sensor(ILjava/lang/String;II)Z
.end method

.method static native sensors_factory_test([I[I)I
.end method

.method static native sensors_factory_test_yamaha(I[I)I
.end method

.method static native sensors_gyro_calibrate([I[S[F)I
.end method

.method private static native sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I
.end method

.method private static native sensors_module_init()I
.end method

.method static native sensors_set_delay(II)I
.end method

.method private unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V
    .locals 9
    .parameter "legacyType"
    .parameter "type"
    .parameter "listener"
    .parameter "sensors"

    .prologue
    .line 973
    if-nez p3, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    const/4 v4, 0x0

    .line 978
    .local v4, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    iget-object v7, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 979
    :try_start_0
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/hardware/SensorManager$LegacyListener;

    move-object v4, v0

    .line 980
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 981
    if-eqz v4, :cond_0

    .line 983
    and-int v6, p4, p1

    if-eqz v6, :cond_0

    .line 985
    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 986
    .local v5, sensor:Landroid/hardware/Sensor;
    if-eqz v5, :cond_0

    .line 989
    invoke-virtual {v4, p1}, Landroid/hardware/SensorManager$LegacyListener;->unregisterSensor(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 991
    invoke-virtual {p0, v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 994
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 995
    const/4 v1, 0x0

    .line 996
    .local v1, found:Z
    :try_start_1
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 997
    .local v2, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_2

    .line 998
    const/4 v1, 0x1

    .line 1002
    .end local v2           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_3
    if-nez v1, :cond_4

    .line 1003
    iget-object v7, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1004
    :try_start_2
    iget-object v8, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v8, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1007
    :cond_4
    :try_start_3
    monitor-exit v6

    goto :goto_0

    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 980
    .end local v1           #found:Z
    .end local v5           #sensor:Landroid/hardware/Sensor;
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 1005
    .restart local v1       #found:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #sensor:Landroid/hardware/Sensor;
    :catchall_2
    move-exception v8

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private unregisterListener(Ljava/lang/Object;)V
    .locals 8
    .parameter "listener"

    .prologue
    .line 1257
    if-nez p1, :cond_0

    .line 1279
    :goto_0
    return-void

    .line 1260
    :cond_0
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unregisterListener:: disable all sensors for this listener,  listener = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1263
    :try_start_0
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1264
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 1265
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1266
    .local v2, l:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_2

    .line 1267
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1269
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 1270
    .local v3, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    const v7, 0x186a0

    if-ge v6, v7, :cond_1

    .line 1271
    const v6, 0x7fffffff

    invoke-virtual {v2, v3, v6}, Landroid/hardware/SensorManager$ListenerDelegate;->setDelay(Landroid/hardware/Sensor;I)V

    .line 1273
    :cond_1
    invoke-direct {p0, v3}, Landroid/hardware/SensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    goto :goto_2

    .line 1278
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #sensor:Landroid/hardware/Sensor;
    .end local v4           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1264
    .restart local v0       #i:I
    .restart local v2       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #size:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1278
    .end local v2           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private unregisterListener(Ljava/lang/Object;Landroid/hardware/Sensor;)V
    .locals 6
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 1230
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1254
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    const-string v3, "SensorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterListener:: handle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Listener= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1236
    :try_start_0
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1237
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 1238
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1239
    .local v1, l:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_4

    .line 1240
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    const v5, 0x186a0

    if-ge v4, v5, :cond_2

    .line 1241
    const v4, 0x7fffffff

    invoke-virtual {v1, p2, v4}, Landroid/hardware/SensorManager$ListenerDelegate;->setDelay(Landroid/hardware/Sensor;I)V

    .line 1244
    :cond_2
    invoke-virtual {v1, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I

    move-result v4

    if-nez v4, :cond_3

    .line 1247
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1252
    .end local v1           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_3
    invoke-direct {p0, p2}, Landroid/hardware/SensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    .line 1253
    monitor-exit v3

    goto :goto_0

    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1237
    .restart local v0       #i:I
    .restart local v1       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v2       #size:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public FactoryTest_yamaha(I[I)I
    .locals 2
    .parameter "testNO"
    .parameter "result"

    .prologue
    .line 1831
    const-string v0, "SensorManager"

    const-string v1, "FactoryTest_yamaha"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    invoke-static {p1, p2}, Landroid/hardware/SensorManager;->sensors_factory_test_yamaha(I[I)I

    move-result v0

    return v0
.end method

.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 2
    .parameter "type"

    .prologue
    .line 840
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 841
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/Sensor;

    move-object v1, p0

    goto :goto_0
.end method

.method public getSensorList(I)Ljava/util/List;
    .locals 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 805
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    monitor-enter v0

    .line 806
    :try_start_0
    sget-object v4, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 807
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v3, :cond_1

    .line 808
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 809
    move-object v3, v0

    .line 817
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 818
    sget-object v4, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 820
    :cond_1
    monitor-exit v0

    .line 821
    return-object v3

    .line 811
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 813
    .local v1, i:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 814
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 820
    .end local v1           #i:Landroid/hardware/Sensor;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getSensors()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 768
    const/4 v3, 0x0

    .line 769
    .local v3, result:I
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 770
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 771
    .local v1, i:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 773
    :pswitch_0
    or-int/lit8 v3, v3, 0x2

    .line 774
    goto :goto_0

    .line 776
    :pswitch_1
    or-int/lit8 v3, v3, 0x8

    .line 777
    goto :goto_0

    .line 779
    :pswitch_2
    or-int/lit16 v3, v3, 0x81

    goto :goto_0

    .line 784
    .end local v1           #i:Landroid/hardware/Sensor;
    :cond_0
    return v3

    .line 771
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRotationChanged(I)V
    .locals 2
    .parameter "rotation"

    .prologue
    .line 1756
    sget-object v0, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1757
    :try_start_0
    sput p1, Landroid/hardware/SensorManager;->sRotation:I

    .line 1758
    monitor-exit v0

    .line 1759
    return-void

    .line 1758
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"

    .prologue
    .line 1089
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 6
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"
    .parameter "handler"

    .prologue
    .line 1151
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;I)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;I)Z
    .locals 10
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"
    .parameter "handler"
    .parameter "gyroCalibrationLevel"

    .prologue
    .line 1156
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1157
    :cond_0
    const/4 v6, 0x0

    .line 1226
    :goto_0
    return v6

    .line 1159
    :cond_1
    const/4 v5, 0x1

    .line 1160
    .local v5, result:Z
    const/4 v0, -0x1

    .line 1161
    .local v0, delay:I
    packed-switch p3, :pswitch_data_0

    .line 1175
    move v0, p3

    .line 1179
    :goto_1
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1181
    const/4 v3, 0x0

    .line 1182
    .local v3, l:Landroid/hardware/SensorManager$ListenerDelegate;
    :try_start_0
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1183
    .local v1, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-ne v7, p1, :cond_2

    .line 1184
    move-object v3, v1

    move-object v4, v3

    .line 1189
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .local v4, l:Landroid/hardware/SensorManager$ListenerDelegate;
    :goto_2
    :try_start_1
    const-string v7, "SensorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "registerListener :: handle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  name= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " delay= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Listener= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    if-nez v4, :cond_7

    .line 1192
    new-instance v3, Landroid/hardware/SensorManager$ListenerDelegate;

    invoke-direct {v3, p0, p1, p2, p4}, Landroid/hardware/SensorManager$ListenerDelegate;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1193
    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :try_start_2
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1196
    sget-object v7, Landroid/hardware/SensorManager;->sSensorThread:Landroid/hardware/SensorManager$SensorThread;

    invoke-virtual {v7}, Landroid/hardware/SensorManager$SensorThread;->startLocked()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1197
    invoke-direct {p0, p2, v0}, Landroid/hardware/SensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1199
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1200
    const/4 v5, 0x0

    .line 1219
    :cond_3
    :goto_3
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v7

    const v8, 0x186a0

    if-ge v7, v8, :cond_4

    .line 1221
    invoke-virtual {v3, p2, v0}, Landroid/hardware/SensorManager$ListenerDelegate;->setDelay(Landroid/hardware/Sensor;I)V

    .line 1222
    invoke-virtual {v3, p5}, Landroid/hardware/SensorManager$ListenerDelegate;->setGyroCalibrationLevel(I)V

    .line 1224
    :cond_4
    monitor-exit v6

    move v6, v5

    .line 1226
    goto/16 :goto_0

    .line 1163
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :pswitch_0
    const/16 v0, 0x2710

    .line 1164
    goto/16 :goto_1

    .line 1166
    :pswitch_1
    const/16 v0, 0x4e20

    .line 1167
    goto/16 :goto_1

    .line 1169
    :pswitch_2
    const v0, 0xea60

    .line 1170
    goto/16 :goto_1

    .line 1172
    :pswitch_3
    const v0, 0x30d40

    .line 1173
    goto/16 :goto_1

    .line 1204
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_5
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1205
    const/4 v5, 0x0

    goto :goto_3

    .line 1209
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 1212
    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_7
    :try_start_3
    invoke-virtual {v4, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 1213
    invoke-direct {p0, p2, v0}, Landroid/hardware/SensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1215
    invoke-virtual {v4, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1216
    const/4 v5, 0x0

    move-object v3, v4

    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_3

    .line 1224
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    :goto_4
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_4

    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_8
    move-object v3, v4

    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_3

    :cond_9
    move-object v4, v3

    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto/16 :goto_2

    .line 1161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .locals 1
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 862
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 12
    .parameter "listener"
    .parameter "sensors"
    .parameter "rate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v2, 0x1

    .line 890
    if-nez p1, :cond_0

    move v0, v10

    .line 904
    :goto_0
    return v0

    .line 893
    :cond_0
    const/4 v9, 0x0

    .local v9, result:Z
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 894
    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v9, :cond_6

    :cond_1
    move v9, v2

    .line 896
    :goto_1
    const/16 v4, 0x8

    move-object v3, p0

    move v5, v1

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v9, :cond_7

    :cond_2
    move v9, v2

    .line 898
    :goto_2
    const/16 v4, 0x80

    move-object v3, p0

    move v5, v11

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v9, :cond_8

    :cond_3
    move v9, v2

    :goto_3
    move-object v1, p0

    move v3, v11

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 900
    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v9, :cond_9

    :cond_4
    move v9, v2

    .line 902
    :goto_4
    const/4 v4, 0x4

    const/4 v5, 0x7

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v9, :cond_a

    :cond_5
    move v9, v2

    :goto_5
    move v0, v9

    .line 904
    goto :goto_0

    :cond_6
    move v9, v10

    .line 894
    goto :goto_1

    :cond_7
    move v9, v10

    .line 896
    goto :goto_2

    :cond_8
    move v9, v10

    .line 898
    goto :goto_3

    :cond_9
    move v9, v10

    .line 900
    goto :goto_4

    :cond_a
    move v9, v10

    .line 902
    goto :goto_5
.end method

.method public runAccCalibration(I)I
    .locals 8
    .parameter "sensors"

    .prologue
    const/4 v7, -0x1

    const-string v6, "SensorManager"

    .line 1780
    const-string v4, "SensorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runAccCalibration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const/4 v2, 0x0

    .line 1785
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/sec/gsensorcal/calibration"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1791
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    if-nez v3, :cond_0

    .line 1792
    :try_start_1
    const-string v4, "SensorManager"

    const-string v5, "Output file is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    move v4, v7

    .line 1809
    :goto_0
    return v4

    .line 1786
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1787
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "SensorManager"

    const-string v5, "File not found!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v4, v7

    .line 1789
    goto :goto_0

    .line 1795
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_0
    const/16 v4, 0x31

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 1796
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1797
    const-string v4, "SensorManager"

    const-string/jumbo v5, "runAccCalibration Complete!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1798
    const/4 v4, 0x0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_0

    .line 1799
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 1800
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1801
    if-eqz v2, :cond_1

    .line 1803
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1808
    :cond_1
    :goto_2
    const-string v4, "SensorManager"

    const-string v4, "File write fail!!"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 1809
    goto :goto_0

    .line 1804
    :catch_2
    move-exception v1

    .line 1805
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1799
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public runCalibration(I)I
    .locals 4
    .parameter "sensors"

    .prologue
    .line 1773
    const-string v1, "SensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runCalibration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    invoke-static {p1}, Landroid/hardware/SensorManager;->sensors_calibrate(I)I

    move-result v0

    .line 1775
    .local v0, res:I
    return v0
.end method

.method public runFactoryTest([I[I)V
    .locals 2
    .parameter "result1"
    .parameter "result2"

    .prologue
    .line 1825
    const-string v0, "SensorManager"

    const-string v1, "AK8975C mag sensor runFactoryTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    invoke-static {p1, p2}, Landroid/hardware/SensorManager;->sensors_factory_test([I[I)I

    .line 1827
    return-void
.end method

.method public runGyroCalibrate([I[S[F)I
    .locals 2
    .parameter "result1"
    .parameter "result2"
    .parameter "result3"

    .prologue
    const-string v1, "GT-I9108"

    .line 1815
    const-string v0, "GT-I9108"

    const-string v0, "GT-I9103"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I9108"

    const-string v0, "GT-I9100G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I9108"

    const-string v0, "GT-I6200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I9108"

    const-string v0, "GT-I9220"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I9108"

    const-string v0, "SGH-I927"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I9108"

    const-string v0, "GT-I9188"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I9108"

    const-string v0, "GT-I9108"

    invoke-virtual {v1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1817
    :cond_0
    const-string v0, "SensorManager"

    const-string v1, "MPU3050 Gyro sensor runFactoryTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    invoke-static {p1, p2, p3}, Landroid/hardware/SensorManager;->sensors_gyro_calibrate([I[S[F)I

    move-result v0

    .line 1820
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1057
    invoke-direct {p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Ljava/lang/Object;)V

    .line 1058
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 0
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 1043
    invoke-direct {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Ljava/lang/Object;Landroid/hardware/Sensor;)V

    .line 1044
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1026
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 1027
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 4
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 957
    invoke-direct {p0, v2, v1, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 959
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 961
    const/16 v0, 0x80

    invoke-direct {p0, v0, v3, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 963
    invoke-direct {p0, v1, v3, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 965
    const/4 v0, 0x4

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 967
    return-void
.end method
