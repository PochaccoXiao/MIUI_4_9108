.class public Lcom/android/settings/SatelliteView;
.super Landroid/app/Activity;
.source "SatelliteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SatelliteView$setHandler;,
        Lcom/android/settings/SatelliteView$SatelliteViewView;,
        Lcom/android/settings/SatelliteView$UserGpsSatellite;,
        Lcom/android/settings/SatelliteView$SatComp;
    }
.end annotation


# static fields
.field private static a:[D

.field static ani_count:I

.field static ani_gap_x:D

.field static ani_gap_y:D

.field private static azimuth:[F

.field private static b:[D

.field private static circlePaint:Landroid/graphics/Paint;

.field private static elevation:[F

.field private static mAltitude:D

.field private static mBearing:F

.field private static mLatitude:D

.field private static mLongitude:D

.field static mNoOfSat:I

.field public static mStartMode:I

.field static mSvInformation:Ljava/lang/String;

.field private static px:[I

.field private static py:[I

.field private static snr:[F


# instance fields
.field private btn_cal:Landroid/widget/Button;

.field private btn_log:Landroid/widget/Button;

.field calendarDate:Ljava/lang/String;

.field private drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;

.field private draw_layout:Landroid/widget/LinearLayout;

.field private mAccuracy:F

.field mGpsStatusListener:Landroid/location/GpsStatus$Listener;

.field mHandler:Lcom/android/settings/SatelliteView$setHandler;

.field mLm:Landroid/location/LocationManager;

.field mLoc:Landroid/location/Location;

.field mLocationListener:Landroid/location/LocationListener;

.field mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private mSpeed:D

.field private mTime:J

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field sv_list:[Landroid/location/GpsSatellite;

.field sv_list_mask:I

.field private text:Landroid/widget/TextView;

.field private ttff:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/16 v1, 0xc

    .line 100
    sput-wide v2, Lcom/android/settings/SatelliteView;->mAltitude:D

    .line 102
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/SatelliteView;->mBearing:F

    .line 104
    sput-wide v2, Lcom/android/settings/SatelliteView;->mLongitude:D

    .line 105
    sput-wide v2, Lcom/android/settings/SatelliteView;->mLatitude:D

    .line 124
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/SatelliteView;->mNoOfSat:I

    .line 125
    const-string v0, " "

    sput-object v0, Lcom/android/settings/SatelliteView;->mSvInformation:Ljava/lang/String;

    .line 127
    new-array v0, v1, [F

    sput-object v0, Lcom/android/settings/SatelliteView;->azimuth:[F

    .line 128
    new-array v0, v1, [F

    sput-object v0, Lcom/android/settings/SatelliteView;->elevation:[F

    .line 129
    new-array v0, v1, [F

    sput-object v0, Lcom/android/settings/SatelliteView;->snr:[F

    .line 130
    new-array v0, v1, [I

    sput-object v0, Lcom/android/settings/SatelliteView;->px:[I

    .line 131
    new-array v0, v1, [I

    sput-object v0, Lcom/android/settings/SatelliteView;->py:[I

    .line 132
    new-array v0, v1, [D

    sput-object v0, Lcom/android/settings/SatelliteView;->a:[D

    .line 133
    new-array v0, v1, [D

    sput-object v0, Lcom/android/settings/SatelliteView;->b:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/SatelliteView;->mTime:J

    .line 106
    iput v2, p0, Lcom/android/settings/SatelliteView;->ttff:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SatelliteView;->mAccuracy:F

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->calendarDate:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mLoc:Landroid/location/Location;

    .line 115
    iput v2, p0, Lcom/android/settings/SatelliteView;->sv_list_mask:I

    .line 116
    const/16 v0, 0x20

    new-array v0, v0, [Landroid/location/GpsSatellite;

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    .line 453
    new-instance v0, Lcom/android/settings/SatelliteView$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SatelliteView$2;-><init>(Lcom/android/settings/SatelliteView;)V

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 500
    new-instance v0, Lcom/android/settings/SatelliteView$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SatelliteView$3;-><init>(Lcom/android/settings/SatelliteView;)V

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 507
    new-instance v0, Lcom/android/settings/SatelliteView$4;

    invoke-direct {v0, p0}, Lcom/android/settings/SatelliteView$4;-><init>(Lcom/android/settings/SatelliteView;)V

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    .line 764
    return-void
.end method

.method static synthetic access$1000()[F
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/settings/SatelliteView;->snr:[F

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/SatelliteView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/settings/SatelliteView;->ttff:I

    return p1
.end method

.method static synthetic access$1100()[I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/settings/SatelliteView;->px:[I

    return-object v0
.end method

.method static synthetic access$1200()[I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/settings/SatelliteView;->py:[I

    return-object v0
.end method

.method static synthetic access$1300()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/settings/SatelliteView;->circlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/SatelliteView;)Lcom/android/settings/SatelliteView$SatelliteViewView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/SatelliteView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/SatelliteView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/SatelliteView;->diplayCompleted()V

    return-void
.end method

.method static synthetic access$200()D
    .locals 2

    .prologue
    .line 64
    sget-wide v0, Lcom/android/settings/SatelliteView;->mLongitude:D

    return-wide v0
.end method

.method static synthetic access$202(D)D
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput-wide p0, Lcom/android/settings/SatelliteView;->mLongitude:D

    return-wide p0
.end method

.method static synthetic access$300()D
    .locals 2

    .prologue
    .line 64
    sget-wide v0, Lcom/android/settings/SatelliteView;->mLatitude:D

    return-wide v0
.end method

.method static synthetic access$302(D)D
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput-wide p0, Lcom/android/settings/SatelliteView;->mLatitude:D

    return-wide p0
.end method

.method static synthetic access$400()D
    .locals 2

    .prologue
    .line 64
    sget-wide v0, Lcom/android/settings/SatelliteView;->mAltitude:D

    return-wide v0
.end method

.method static synthetic access$402(D)D
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput-wide p0, Lcom/android/settings/SatelliteView;->mAltitude:D

    return-wide p0
.end method

.method static synthetic access$500()F
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/settings/SatelliteView;->mBearing:F

    return v0
.end method

.method static synthetic access$502(F)F
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput p0, Lcom/android/settings/SatelliteView;->mBearing:F

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/SatelliteView;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/settings/SatelliteView;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    return-wide p1
.end method

.method static synthetic access$702(Lcom/android/settings/SatelliteView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/settings/SatelliteView;->mAccuracy:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/SatelliteView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/settings/SatelliteView;->mTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/settings/SatelliteView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings/SatelliteView;->mTime:J

    return-wide p1
.end method

.method private diplayCompleted()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 633
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 638
    return-void
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 159
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/SatelliteView;->startGPS()V

    .line 176
    sput-wide v2, Lcom/android/settings/SatelliteView;->mLatitude:D

    .line 177
    sput-wide v2, Lcom/android/settings/SatelliteView;->mLongitude:D

    .line 178
    iput-wide v2, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/SatelliteView;->mTime:J

    .line 180
    sput v5, Lcom/android/settings/SatelliteView;->mBearing:F

    .line 181
    sput-wide v2, Lcom/android/settings/SatelliteView;->mAltitude:D

    .line 184
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/16 v0, 0xc

    if-ge v7, v0, :cond_0

    .line 186
    sget-object v0, Lcom/android/settings/SatelliteView;->azimuth:[F

    aput v5, v0, v7

    .line 187
    sget-object v0, Lcom/android/settings/SatelliteView;->elevation:[F

    aput v5, v0, v7

    .line 188
    sget-object v0, Lcom/android/settings/SatelliteView;->snr:[F

    aput v5, v0, v7

    .line 190
    sget-object v0, Lcom/android/settings/SatelliteView;->a:[D

    aput-wide v2, v0, v7

    .line 191
    sget-object v0, Lcom/android/settings/SatelliteView;->b:[D

    aput-wide v2, v0, v7

    .line 192
    sget-object v0, Lcom/android/settings/SatelliteView;->px:[I

    aput v4, v0, v7

    .line 193
    sget-object v0, Lcom/android/settings/SatelliteView;->py:[I

    aput v4, v0, v7

    .line 184
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 196
    :cond_0
    new-instance v6, Ljava/util/Date;

    iget-wide v0, p0, Lcom/android/settings/SatelliteView;->mTime:J

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 197
    .local v6, date:Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->calendarDate:Ljava/lang/String;

    .line 200
    const v0, 0x7f0b0134

    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->btn_cal:Landroid/widget/Button;

    .line 202
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 206
    const v0, 0x7f0b0135

    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    .line 207
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    const v0, 0x7f0b0132

    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->text:Landroid/widget/TextView;

    .line 213
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/settings/SatelliteView;->circlePaint:Landroid/graphics/Paint;

    .line 222
    const v0, 0x7f0807c5

    new-array v1, v10, [Ljava/lang/Object;

    sget-wide v2, Lcom/android/settings/SatelliteView;->mAltitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x2

    sget v3, Lcom/android/settings/SatelliteView;->mBearing:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/settings/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 223
    .local v8, sSatelliteResult:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    new-instance v0, Lcom/android/settings/SatelliteView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SatelliteView$1;-><init>(Lcom/android/settings/SatelliteView;)V

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mTimerTask:Ljava/util/TimerTask;

    .line 236
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/settings/SatelliteView;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 238
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 569
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 589
    :goto_0
    return-void

    .line 571
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SatelliteView;->showSVStatus()V

    .line 575
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 578
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 579
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 580
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->mHandler:Lcom/android/settings/SatelliteView$setHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/SatelliteView$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 583
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 584
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SatelliteViewLog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 585
    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 569
    :pswitch_data_0
    .packed-switch 0x7f0b0134
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    new-instance v0, Lcom/android/settings/SatelliteView$setHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SatelliteView$setHandler;-><init>(Lcom/android/settings/SatelliteView;Lcom/android/settings/SatelliteView$1;)V

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mHandler:Lcom/android/settings/SatelliteView$setHandler;

    .line 145
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mTimer:Ljava/util/Timer;

    .line 147
    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->setContentView(I)V

    .line 148
    new-instance v0, Lcom/android/settings/SatelliteView$SatelliteViewView;

    invoke-direct {v0, p0}, Lcom/android/settings/SatelliteView$SatelliteViewView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;

    .line 149
    const v0, 0x7f0b0133

    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->draw_layout:Landroid/widget/LinearLayout;

    .line 150
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->draw_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/SatelliteView;->mStartMode:I

    .line 153
    invoke-direct {p0}, Lcom/android/settings/SatelliteView;->init()V

    .line 154
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 617
    sput v0, Lcom/android/settings/SatelliteView;->mNoOfSat:I

    .line 618
    invoke-virtual {p0}, Lcom/android/settings/SatelliteView;->stopGPS()V

    .line 619
    iput-object v1, p0, Lcom/android/settings/SatelliteView;->mLoc:Landroid/location/Location;

    .line 620
    iput-object v1, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 621
    sput v0, Lcom/android/settings/SatelliteView;->mStartMode:I

    .line 622
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 623
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;

    invoke-virtual {v0}, Lcom/android/settings/SatelliteView$SatelliteViewView;->destroyDrawingCache()V

    .line 624
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 625
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mHandler:Lcom/android/settings/SatelliteView$setHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SatelliteView$setHandler;->removeMessages(I)V

    .line 610
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mHandler:Lcom/android/settings/SatelliteView$setHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/SatelliteView$setHandler;->removeMessages(I)V

    .line 612
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 613
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 592
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 595
    const v1, 0x7f0807c5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    sget-wide v3, Lcom/android/settings/SatelliteView;->mAltitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    sget v4, Lcom/android/settings/SatelliteView;->mBearing:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/settings/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, sSatelliteResult:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;

    #calls: Lcom/android/settings/SatelliteView$SatelliteViewView;->updateState(I)V
    invoke-static {v1, v6}, Lcom/android/settings/SatelliteView$SatelliteViewView;->access$900(Lcom/android/settings/SatelliteView$SatelliteViewView;I)V

    .line 603
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 604
    return-void
.end method

.method showSVStatus()V
    .locals 15

    .prologue
    .line 386
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v2, mSatList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/SatelliteView$UserGpsSatellite;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 388
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    const/16 v8, 0x20

    if-ge v0, v8, :cond_1

    .line 390
    iget v8, p0, Lcom/android/settings/SatelliteView;->sv_list_mask:I

    const/4 v9, 0x1

    shl-int/2addr v9, v0

    and-int/2addr v8, v9

    if-nez v8, :cond_0

    .line 388
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_0
    iget-object v8, p0, Lcom/android/settings/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    aget-object v3, v8, v0

    .line 395
    .local v3, sat:Landroid/location/GpsSatellite;
    new-instance v8, Lcom/android/settings/SatelliteView$UserGpsSatellite;

    invoke-direct {v8, v3, v1}, Lcom/android/settings/SatelliteView$UserGpsSatellite;-><init>(Landroid/location/GpsSatellite;I)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 399
    .end local v3           #sat:Landroid/location/GpsSatellite;
    :cond_1
    new-array v6, v1, [Lcom/android/settings/SatelliteView$UserGpsSatellite;

    .line 400
    .local v6, sorted_list:[Lcom/android/settings/SatelliteView$UserGpsSatellite;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 401
    new-instance v4, Lcom/android/settings/SatelliteView$SatComp;

    invoke-direct {v4}, Lcom/android/settings/SatelliteView$SatComp;-><init>()V

    .line 402
    .local v4, satComp:Lcom/android/settings/SatelliteView$SatComp;
    invoke-static {v6, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 403
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 405
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .local v7, x:I
    :goto_2
    const/16 v8, 0xc

    if-ge v7, v8, :cond_2

    .line 407
    sget-object v8, Lcom/android/settings/SatelliteView;->azimuth:[F

    const/4 v9, 0x0

    aput v9, v8, v7

    .line 408
    sget-object v8, Lcom/android/settings/SatelliteView;->elevation:[F

    const/4 v9, 0x0

    aput v9, v8, v7

    .line 409
    sget-object v8, Lcom/android/settings/SatelliteView;->snr:[F

    const/4 v9, 0x0

    aput v9, v8, v7

    .line 411
    sget-object v8, Lcom/android/settings/SatelliteView;->a:[D

    const-wide/16 v9, 0x0

    aput-wide v9, v8, v7

    .line 412
    sget-object v8, Lcom/android/settings/SatelliteView;->b:[D

    const-wide/16 v9, 0x0

    aput-wide v9, v8, v7

    .line 413
    sget-object v8, Lcom/android/settings/SatelliteView;->px:[I

    const/4 v9, 0x0

    aput v9, v8, v7

    .line 414
    sget-object v8, Lcom/android/settings/SatelliteView;->py:[I

    const/4 v9, 0x0

    aput v9, v8, v7

    .line 405
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 417
    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_4

    .line 419
    aget-object v8, v6, v0

    invoke-virtual {v8}, Lcom/android/settings/SatelliteView$UserGpsSatellite;->getSat()Landroid/location/GpsSatellite;

    move-result-object v3

    .line 422
    .restart local v3       #sat:Landroid/location/GpsSatellite;
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v8

    const/high16 v9, 0x42c8

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 424
    sget-object v8, Lcom/android/settings/SatelliteView;->azimuth:[F

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v9

    aput v9, v8, v0

    .line 425
    sget-object v8, Lcom/android/settings/SatelliteView;->elevation:[F

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v9

    aput v9, v8, v0

    .line 426
    sget-object v8, Lcom/android/settings/SatelliteView;->snr:[F

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v9

    aput v9, v8, v0

    .line 428
    sget-object v8, Lcom/android/settings/SatelliteView;->a:[D

    sget-object v9, Lcom/android/settings/SatelliteView;->elevation:[F

    aget v9, v9, v0

    float-to-double v9, v9

    const-wide v11, 0x3f91df3300de4c51L

    mul-double/2addr v9, v11

    aput-wide v9, v8, v0

    .line 429
    sget-object v8, Lcom/android/settings/SatelliteView;->b:[D

    sget-object v9, Lcom/android/settings/SatelliteView;->azimuth:[F

    aget v9, v9, v0

    const/high16 v10, 0x42b4

    sub-float/2addr v9, v10

    float-to-double v9, v9

    const-wide v11, 0x3f91df3300de4c51L

    mul-double/2addr v9, v11

    aput-wide v9, v8, v0

    .line 431
    sget-object v8, Lcom/android/settings/SatelliteView;->px:[I

    const-wide/high16 v9, 0x406e

    const-wide/high16 v11, 0x4069

    sget-object v13, Lcom/android/settings/SatelliteView;->a:[D

    aget-wide v13, v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sget-object v13, Lcom/android/settings/SatelliteView;->b:[D

    aget-wide v13, v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    double-to-int v9, v9

    aput v9, v8, v0

    .line 432
    sget-object v8, Lcom/android/settings/SatelliteView;->py:[I

    const-wide v9, 0x4077200000000000L

    const-wide/high16 v11, 0x4069

    sget-object v13, Lcom/android/settings/SatelliteView;->a:[D

    aget-wide v13, v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sget-object v13, Lcom/android/settings/SatelliteView;->b:[D

    aget-wide v13, v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    double-to-int v9, v9

    aput v9, v8, v0

    .line 434
    sget-object v8, Lcom/android/settings/SatelliteView;->px:[I

    aget v8, v8, v0

    const/16 v9, 0xf0

    sub-int/2addr v8, v9

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sget-object v10, Lcom/android/settings/SatelliteView;->py:[I

    aget v10, v10, v0

    const/16 v11, 0x172

    sub-int/2addr v10, v11

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4069

    cmpl-double v8, v8, v10

    if-lez v8, :cond_3

    .line 436
    sget-object v8, Lcom/android/settings/SatelliteView;->px:[I

    const/16 v9, 0xf0

    aput v9, v8, v0

    .line 437
    sget-object v8, Lcom/android/settings/SatelliteView;->py:[I

    const/16 v9, 0x172

    aput v9, v8, v0

    .line 417
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 442
    .end local v3           #sat:Landroid/location/GpsSatellite;
    :cond_4
    sput v1, Lcom/android/settings/SatelliteView;->mNoOfSat:I

    .line 450
    return-void
.end method

.method startGPS()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const-string v1, "gps"

    .line 242
    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 243
    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mLoc:Landroid/location/Location;

    .line 245
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 248
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/settings/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 249
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/settings/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    .line 251
    sput-wide v8, Lcom/android/settings/SatelliteView;->mLongitude:D

    .line 252
    sput-wide v8, Lcom/android/settings/SatelliteView;->mLatitude:D

    .line 253
    sput-wide v8, Lcom/android/settings/SatelliteView;->mAltitude:D

    .line 254
    sput v4, Lcom/android/settings/SatelliteView;->mBearing:F

    .line 255
    iput-wide v8, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SatelliteView;->ttff:I

    .line 257
    sget v0, Lcom/android/settings/SatelliteView;->mStartMode:I

    if-nez v0, :cond_0

    .line 260
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v6, extra:Landroid/os/Bundle;
    const-string v0, "ephemeris"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    const-string v0, "position"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    const-string v0, "time"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    const-string v0, "iono"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    const-string v0, "utc"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    const-string v0, "health"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    const-string v0, "svdir"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    const-string v0, "svsteer"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    const-string v0, "sadata"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 270
    const-string v0, "rti"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 271
    const-string v0, "celldb-info"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-string v2, "delete_aiding_data"

    invoke-virtual {v0, v1, v2, v6}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 305
    .end local v6           #extra:Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-wide/16 v2, 0x3e8

    iget-object v5, p0, Lcom/android/settings/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 306
    sput v7, Lcom/android/settings/SatelliteView;->mStartMode:I

    .line 307
    return-void
.end method

.method stopGPS()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    .line 315
    sput-wide v3, Lcom/android/settings/SatelliteView;->mLongitude:D

    .line 316
    sput-wide v3, Lcom/android/settings/SatelliteView;->mLatitude:D

    .line 317
    sput-wide v3, Lcom/android/settings/SatelliteView;->mAltitude:D

    .line 318
    sput v6, Lcom/android/settings/SatelliteView;->mBearing:F

    .line 319
    iput-wide v3, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    .line 320
    iput v5, p0, Lcom/android/settings/SatelliteView;->ttff:I

    .line 322
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/settings/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 323
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/settings/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 324
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/settings/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    .line 326
    sput v5, Lcom/android/settings/SatelliteView;->mStartMode:I

    .line 327
    iput-object v7, p0, Lcom/android/settings/SatelliteView;->mLoc:Landroid/location/Location;

    .line 328
    iput-object v7, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 329
    sput v5, Lcom/android/settings/SatelliteView;->mNoOfSat:I

    .line 331
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 333
    sget-object v1, Lcom/android/settings/SatelliteView;->azimuth:[F

    aput v6, v1, v0

    .line 334
    sget-object v1, Lcom/android/settings/SatelliteView;->elevation:[F

    aput v6, v1, v0

    .line 335
    sget-object v1, Lcom/android/settings/SatelliteView;->snr:[F

    aput v6, v1, v0

    .line 337
    sget-object v1, Lcom/android/settings/SatelliteView;->a:[D

    aput-wide v3, v1, v0

    .line 338
    sget-object v1, Lcom/android/settings/SatelliteView;->b:[D

    aput-wide v3, v1, v0

    .line 339
    sget-object v1, Lcom/android/settings/SatelliteView;->px:[I

    aput v5, v1, v0

    .line 340
    sget-object v1, Lcom/android/settings/SatelliteView;->py:[I

    aput v5, v1, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return-void
.end method
