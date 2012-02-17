.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$OnShapeGestureListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x2

.field static final SHAPE_LOG_ON:Z = false

.field private static final SHOW_PRESS:I = 0x1

.field private static final SWEEP_DOWN2UP:I = 0x3

.field private static final SWEEP_LEFT2RIGHT:I = 0x1

.field private static final SWEEP_RIGHT2LEFT:I = 0x0

.field private static final SWEEP_UP2DOWN:I = 0x2

.field static final TAG:Ljava/lang/String; = "GestureDetector"

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field InitFlag:I

.field InitX:F

.field InitY:F

.field private LiftTapStep1:Z

.field private LiftTapStep2:Z

.field private LiftTapStep3:Z

.field MaxSize:F

.field MaxSsumEccen:F

.field MinSize:F

.field Nd:[I

.field Sad:[[F

.field Sed:[[F

.field Sid:[[I

.field Spd:[[F

.field Ssd:[[F

.field StartTime:J

.field SvarX:[F

.field SvarY:[F

.field private SwTimeFlag:Z

.field private SweepDown:Z

.field private SweepStep1:Z

.field Sxd:[[F

.field Syd:[[F

.field TouchCnt:I

.field private bHandTouchCancel:Z

.field private bInitHandTouch:Z

.field private bLiftTapCancel:Z

.field cTime:[J

.field dispHeight:I

.field dispWidth:I

.field dist1:F

.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mBiggerTouchSlopSquare:I

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mHandTouched:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreMultitouch:Z

.field private mInLongPress:Z

.field mInitX:F

.field mInitY:F

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field mLastX:F

.field mLastY:F

.field private mLiftTapDown:Z

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPalmDown:Z

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

.field private mShapeSweepLRDown:Z

.field private mStillDown:Z

.field private mSweepLRDown:Z

.field private mTouchSlopSquare:I

.field private mTwistDown:Z

.field private mTwistTempDown:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field maxAngleT:F

.field maxSizeT:F

.field maxSwAngle:F

.field medFlag:Z

.field medSize:F

.field medX:F

.field medY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 245
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 246
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 444
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 459
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    .line 461
    return-void

    .line 459
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 7
    .parameter "context"
    .parameter "listener"
    .parameter "handler"
    .parameter "ignoreMultitouch"

    .prologue
    const/4 v6, 0x1

    const v5, -0x3b864000

    const/4 v4, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/16 v0, 0x190

    iput v0, p0, Landroid/view/GestureDetector;->mBiggerTouchSlopSquare:I

    .line 264
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mPalmDown:Z

    .line 265
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mTwistDown:Z

    .line 266
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mTwistTempDown:Z

    .line 267
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mSweepLRDown:Z

    .line 268
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    .line 269
    iput-boolean v2, p0, Landroid/view/GestureDetector;->SweepDown:Z

    .line 270
    iput-boolean v2, p0, Landroid/view/GestureDetector;->SweepStep1:Z

    .line 271
    iput-boolean v2, p0, Landroid/view/GestureDetector;->SwTimeFlag:Z

    .line 273
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 274
    iput-boolean v2, p0, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    .line 275
    iput-boolean v6, p0, Landroid/view/GestureDetector;->bInitHandTouch:Z

    .line 277
    iput-boolean v2, p0, Landroid/view/GestureDetector;->LiftTapStep1:Z

    .line 278
    iput-boolean v2, p0, Landroid/view/GestureDetector;->LiftTapStep2:Z

    .line 279
    iput-boolean v2, p0, Landroid/view/GestureDetector;->LiftTapStep3:Z

    .line 280
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mLiftTapDown:Z

    .line 281
    iput-boolean v2, p0, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    .line 283
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Sxd:[[F

    .line 284
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Syd:[[F

    .line 285
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Ssd:[[F

    .line 286
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Sed:[[F

    .line 287
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Sad:[[F

    .line 288
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Spd:[[F

    .line 289
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector;->Sid:[[I

    .line 290
    new-array v0, v3, [J

    iput-object v0, p0, Landroid/view/GestureDetector;->cTime:[J

    .line 291
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/view/GestureDetector;->Nd:[I

    .line 292
    new-array v0, v3, [F

    iput-object v0, p0, Landroid/view/GestureDetector;->SvarX:[F

    .line 293
    new-array v0, v3, [F

    iput-object v0, p0, Landroid/view/GestureDetector;->SvarY:[F

    .line 295
    iput v2, p0, Landroid/view/GestureDetector;->TouchCnt:I

    .line 296
    iput v2, p0, Landroid/view/GestureDetector;->InitFlag:I

    .line 297
    iput v2, p0, Landroid/view/GestureDetector;->dispWidth:I

    .line 298
    iput v2, p0, Landroid/view/GestureDetector;->dispHeight:I

    .line 301
    iput v5, p0, Landroid/view/GestureDetector;->MaxSize:F

    .line 302
    const v0, 0x4479c000

    iput v0, p0, Landroid/view/GestureDetector;->MinSize:F

    .line 303
    iput v5, p0, Landroid/view/GestureDetector;->MaxSsumEccen:F

    .line 306
    iput v4, p0, Landroid/view/GestureDetector;->dist1:F

    .line 307
    iput v4, p0, Landroid/view/GestureDetector;->maxSizeT:F

    .line 308
    iput v4, p0, Landroid/view/GestureDetector;->maxAngleT:F

    .line 311
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/GestureDetector;->StartTime:J

    .line 312
    iput v4, p0, Landroid/view/GestureDetector;->mLastX:F

    .line 313
    iput v4, p0, Landroid/view/GestureDetector;->mLastY:F

    .line 314
    iput v4, p0, Landroid/view/GestureDetector;->mInitX:F

    .line 315
    iput v4, p0, Landroid/view/GestureDetector;->mInitY:F

    .line 316
    iput v4, p0, Landroid/view/GestureDetector;->InitX:F

    .line 317
    iput v4, p0, Landroid/view/GestureDetector;->InitY:F

    .line 318
    iput v4, p0, Landroid/view/GestureDetector;->maxSwAngle:F

    .line 327
    iput v4, p0, Landroid/view/GestureDetector;->medX:F

    .line 328
    iput v4, p0, Landroid/view/GestureDetector;->medY:F

    .line 329
    iput v4, p0, Landroid/view/GestureDetector;->medSize:F

    .line 330
    iput-boolean v6, p0, Landroid/view/GestureDetector;->medFlag:Z

    .line 479
    if-eqz p3, :cond_1

    .line 480
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 484
    :goto_0
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 499
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_0

    .line 500
    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    .end local p2
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 502
    :cond_0
    invoke-direct {p0, p1, p4}, Landroid/view/GestureDetector;->init(Landroid/content/Context;Z)V

    .line 503
    return-void

    .line 482
    .restart local p2
    :cond_1
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 428
    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 429
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .parameter "listener"
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 411
    return-void
.end method

.method static synthetic access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/GestureDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/GestureDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1209
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1210
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1211
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1212
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1213
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1214
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1215
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1216
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    .line 1217
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1219
    :cond_0
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .prologue
    .line 1237
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1238
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1239
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 1240
    return-void
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "ignoreMultitouch"

    .prologue
    .line 506
    iget-object v3, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v3, :cond_0

    .line 507
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "OnGestureListener must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 509
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 510
    iput-boolean p2, p0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    .line 514
    if-nez p1, :cond_1

    .line 516
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    .line 517
    .local v2, touchSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v1

    .line 519
    .local v1, doubleTapSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 520
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 528
    :goto_0
    mul-int v3, v2, v2

    iput v3, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 529
    mul-int v3, v1, v1

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 530
    return-void

    .line 522
    .end local v1           #doubleTapSlop:I
    .end local v2           #touchSlop:I
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 523
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 524
    .restart local v2       #touchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 525
    .restart local v1       #doubleTapSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 526
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "firstDown"
    .parameter "firstUp"
    .parameter "secondDown"

    .prologue
    const/4 v6, 0x0

    .line 1223
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v2, :cond_0

    move v2, v6

    .line 1233
    :goto_0
    return v2

    .line 1227
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v4, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move v2, v6

    .line 1228
    goto :goto_0

    .line 1231
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 1232
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 1233
    .local v1, deltaY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    iget v3, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "ev"

    .prologue
    .line 1066
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1067
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 1068
    .local v19, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    .line 1070
    .local v18, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 1071
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1073
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1075
    const/4 v11, 0x0

    .line 1077
    .local v11, handled:Z
    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 1205
    :cond_1
    :goto_0
    :pswitch_0
    return v11

    .line 1079
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1081
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto :goto_0

    .line 1087
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1088
    const v20, 0xff00

    and-int v20, v20, v5

    shr-int/lit8 v20, v20, 0x8

    if-nez v20, :cond_2

    const/16 v20, 0x1

    move/from16 v12, v20

    .line 1090
    .local v12, index:I
    :goto_1
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1091
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 1093
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1088
    .end local v12           #index:I
    :cond_2
    const/16 v20, 0x0

    move/from16 v12, v20

    goto :goto_1

    .line 1098
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    .line 1100
    .local v10, hadTapMessage:Z
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1101
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1104
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 1115
    .end local v10           #hadTapMessage:Z
    :cond_4
    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1116
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 1120
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 1121
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1122
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 1123
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1124
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1126
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v22

    sget v24, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    sget v24, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1131
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v22

    sget v24, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 1133
    goto/16 :goto_0

    .line 1111
    .restart local v10       #hadTapMessage:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    sget v22, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 1136
    .end local v10           #hadTapMessage:Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1

    .line 1139
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastMotionX:F

    move/from16 v20, v0

    sub-float v13, v20, v18

    .line 1140
    .local v13, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastMotionY:F

    move/from16 v20, v0

    sub-float v14, v20, v19

    .line 1141
    .local v14, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    goto/16 :goto_0

    .line 1144
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    sub-float v20, v18, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v7, v0

    .line 1146
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    sub-float v20, v19, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v8, v0

    .line 1147
    .local v8, deltaY:I
    mul-int v20, v7, v7

    mul-int v21, v8, v8

    add-int v9, v20, v21

    .line 1148
    .local v9, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move v3, v13

    move v4, v14

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    .line 1150
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1151
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    .line 1152
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1157
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mBiggerTouchSlopSquare:I

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 1158
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_0

    .line 1160
    .end local v7           #deltaX:I
    .end local v8           #deltaY:I
    .end local v9           #distance:I
    :cond_b
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x3f80

    cmpl-float v20, v20, v21

    if-gez v20, :cond_c

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x3f80

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_1

    .line 1161
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move v3, v13

    move v4, v14

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    .line 1162
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1163
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    goto/16 :goto_0

    .line 1168
    .end local v13           #scrollX:F
    .end local v14           #scrollY:F
    :pswitch_5
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1169
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 1170
    .local v6, currentUpEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 1191
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 1195
    :cond_e
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 1197
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1198
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1173
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1175
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_3

    .line 1176
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v11

    goto :goto_3

    .line 1181
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v0

    .line 1182
    .local v15, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v15

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1183
    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v17

    .line 1184
    .local v17, velocityY:F
    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v16

    .line 1186
    .local v16, velocityX:F
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_d

    .line 1188
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    goto/16 :goto_3

    .line 1203
    .end local v6           #currentUpEvent:Landroid/view/MotionEvent;
    .end local v15           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v16           #velocityX:F
    .end local v17           #velocityY:F
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto/16 :goto_0

    .line 1077
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent_ex(Landroid/view/MotionEvent;)Z
    .locals 53
    .parameter "ev"

    .prologue
    .line 574
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 575
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v52

    .line 576
    .local v52, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v51

    .line 578
    .local v51, x:F
    const/16 v37, 0x0

    .line 580
    .local v37, handled:Z
    const/16 v40, 0x0

    .local v40, jj:I
    const/16 v41, 0x0

    .line 581
    .local v41, kk:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    .line 582
    .local v12, N:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v48

    .line 583
    .local v48, size:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAngle()F

    move-result v35

    .line 584
    .local v35, angle:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEccen()F

    move-result v36

    .line 585
    .local v36, eccen:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v47

    .line 587
    .local v47, pressure:F
    const/16 v4, 0xa

    new-array v6, v4, [F

    .line 588
    .local v6, xd:[F
    const/16 v4, 0xa

    new-array v7, v4, [F

    .line 589
    .local v7, yd:[F
    const/16 v4, 0xa

    new-array v8, v4, [F

    .line 590
    .local v8, sd:[F
    const/16 v4, 0xa

    new-array v9, v4, [F

    .line 591
    .local v9, ad:[F
    const/16 v4, 0xa

    new-array v10, v4, [F

    .line 592
    .local v10, ed:[F
    const/16 v4, 0xa

    new-array v11, v4, [F

    .line 593
    .local v11, pd:[F
    const/16 v4, 0xa

    new-array v13, v4, [I

    .line 596
    .local v13, id:[I
    const/16 v28, 0x0

    .line 597
    .local v28, SsumX:F
    const/16 v29, 0x0

    .line 598
    .local v29, SsumY:F
    const/16 v27, 0x0

    .line 599
    .local v27, SsumSize:F
    const/16 v25, 0x0

    .line 600
    .local v25, SsumEccen:F
    const/16 v26, 0x0

    .line 601
    .local v26, SsumPres:F
    const/16 v24, 0x0

    .line 602
    .local v24, SsumAngle:F
    const/16 v22, 0x0

    .line 603
    .local v22, SmeanX:F
    const/16 v23, 0x0

    .line 604
    .local v23, SmeanY:F
    const/16 v21, 0x0

    .line 605
    .local v21, SmeanSize:F
    const/16 v19, 0x0

    .line 606
    .local v19, SmeanEccen:F
    const/16 v20, 0x0

    .line 607
    .local v20, SmeanPres:F
    const/16 v18, 0x0

    .line 608
    .local v18, SmeanAngle:F
    const/16 v33, 0x0

    .line 609
    .local v33, SweepX:F
    const/16 v34, 0x0

    .line 610
    .local v34, SweepY:F
    const/16 v30, 0x0

    .line 611
    .local v30, SwDeltaX:F
    const/16 v31, 0x0

    .line 612
    .local v31, SwDeltaY:F
    const/16 v32, 0x0

    .line 615
    .local v32, SwDist:F
    const/16 v16, 0x0

    .line 616
    .local v16, SFsumAngle:F
    const/16 v17, 0x0

    .line 617
    .local v17, SFsumSize:F
    const/16 v4, 0xa

    const/16 v14, 0xa

    filled-new-array {v4, v14}, [I

    move-result-object v4

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, [[F

    .line 618
    .local v49, velX:[[F
    const/16 v4, 0xa

    const/16 v14, 0xa

    filled-new-array {v4, v14}, [I

    move-result-object v4

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, [[F

    .line 620
    .local v50, velY:[[F
    const/16 v38, 0x0

    .local v38, i:I
    :goto_0
    const/16 v4, 0xa

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_0

    .line 621
    const/4 v4, 0x0

    aput v4, v6, v38

    .line 622
    const/4 v4, 0x0

    aput v4, v7, v38

    .line 623
    const/4 v4, 0x0

    aput v4, v8, v38

    .line 624
    const/4 v4, 0x0

    aput v4, v9, v38

    .line 625
    const/4 v4, 0x0

    aput v4, v10, v38

    .line 626
    const/4 v4, 0x0

    aput v4, v11, v38

    .line 627
    const/4 v4, 0x0

    aput v4, v13, v38

    .line 620
    add-int/lit8 v38, v38, 0x1

    goto :goto_0

    .line 630
    :cond_0
    const/16 v38, 0x0

    :goto_1
    move/from16 v0, v38

    move v1, v12

    if-ge v0, v1, :cond_1

    .line 631
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v6, v38

    .line 632
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v7, v38

    .line 633
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v4

    const/high16 v14, 0x41f0

    mul-float/2addr v4, v14

    aput v4, v8, v38

    .line 634
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAngle(I)F

    move-result v4

    aput v4, v9, v38

    .line 635
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getEccen(I)F

    move-result v4

    aput v4, v10, v38

    .line 636
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v4

    const/high16 v14, 0x41f0

    mul-float/2addr v4, v14

    aput v4, v11, v38

    .line 637
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    aput v4, v13, v38

    .line 630
    add-int/lit8 v38, v38, 0x1

    goto :goto_1

    .line 640
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitFlag:I

    move v4, v0

    if-nez v4, :cond_3

    .line 641
    const/16 v38, 0x0

    :goto_2
    const/16 v4, 0xa

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_2

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v4, v0

    const-wide/16 v14, 0x0

    aput-wide v14, v4, v38

    .line 641
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 644
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitFlag:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->InitFlag:I

    .line 647
    :cond_3
    const/16 v39, 0x0

    .local v39, j:I
    :goto_3
    const/16 v4, 0xa

    move/from16 v0, v39

    move v1, v4

    if-ge v0, v1, :cond_5

    .line 648
    const/16 v38, 0x8

    :goto_4
    if-ltz v38, :cond_4

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v15, v0

    aget-object v15, v15, v39

    aget v15, v15, v38

    aput v15, v4, v14

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v15, v0

    aget-object v15, v15, v39

    aget v15, v15, v38

    aput v15, v4, v14

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v15, v0

    aget-object v15, v15, v39

    aget v15, v15, v38

    aput v15, v4, v14

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object v15, v0

    aget-object v15, v15, v39

    aget v15, v15, v38

    aput v15, v4, v14

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v15, v0

    aget-object v15, v15, v39

    aget v15, v15, v38

    aput v15, v4, v14

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Spd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Spd:[[F

    move-object v15, v0

    aget-object v15, v15, v39

    aget v15, v15, v38

    aput v15, v4, v14

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sid:[[I

    move-object v4, v0

    aget-object v4, v4, v39

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sid:[[I

    move-object v15, v0

    aget-object v15, v15, v39

    aget v15, v15, v38

    aput v15, v4, v14

    .line 648
    add-int/lit8 v38, v38, -0x1

    goto/16 :goto_4

    .line 647
    :cond_4
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_3

    .line 659
    :cond_5
    const/16 v38, 0x8

    .end local v18           #SmeanAngle:F
    :goto_5
    if-ltz v38, :cond_6

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v4, v0

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v15, v0

    aget-wide v18, v15, v38

    aput-wide v18, v4, v14

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v15, v0

    aget v15, v15, v38

    aput v15, v4, v14

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v15, v0

    aget v15, v15, v38

    aput v15, v4, v14

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v4, v0

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v15, v0

    aget v15, v15, v38

    aput v15, v4, v14

    .line 659
    add-int/lit8 v38, v38, -0x1

    goto :goto_5

    .line 666
    :cond_6
    const/16 v38, 0x0

    :goto_6
    move/from16 v0, v38

    move v1, v12

    if-ge v0, v1, :cond_7

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    aput v15, v4, v14

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    aput v15, v4, v14

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v15

    const/high16 v18, 0x41f0

    mul-float v15, v15, v18

    aput v15, v4, v14

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAngle(I)F

    move-result v15

    aput v15, v4, v14

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getEccen(I)F

    move-result v15

    aput v15, v4, v14

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Spd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v15

    const/high16 v18, 0x41f0

    mul-float v15, v15, v18

    aput v15, v4, v14

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sid:[[I

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    aput v15, v4, v14

    .line 666
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_6

    .line 675
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v4, v0

    const/4 v14, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    aput-wide v18, v4, v14

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v14, 0x0

    aput v12, v4, v14

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v14, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v15

    invoke-interface/range {v4 .. v15}, Landroid/view/GestureDetector$OnShapeGestureListener;->onMultiAction(I[F[F[F[F[F[FI[I[JI)Z

    .line 686
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->TouchCnt:I

    .line 688
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_8

    .line 689
    .end local v6           #xd:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v7, v0

    .end local v7           #yd:[F
    const/4 v8, 0x0

    aget-object v7, v7, v8

    .end local v8           #sd:[F
    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v4, v6

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v4, v6

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v4, v6

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v4, v6

    .line 695
    :cond_8
    const/16 v38, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_b

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    add-float v28, v28, v4

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    add-float v29, v29, v4

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    add-float v27, v27, v4

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    add-float v25, v25, v4

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Spd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    add-float v26, v26, v4

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    add-float v24, v24, v4

    .line 702
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->MinSize:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v6, v0

    aget-object v6, v6, v38

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpl-float v4, v4, v6

    if-lez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->MinSize:F

    .line 703
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->MaxSize:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v6, v0

    aget-object v6, v6, v38

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpg-float v4, v4, v6

    if-gez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->MaxSize:F

    .line 695
    :cond_a
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_7

    .line 705
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    int-to-float v4, v4

    div-float v22, v28, v4

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    int-to-float v4, v4

    div-float v23, v29, v4

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    int-to-float v4, v4

    div-float v21, v27, v4

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    int-to-float v4, v4

    div-float v19, v25, v4

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    int-to-float v4, v4

    div-float v20, v26, v4

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    int-to-float v4, v4

    div-float v18, v24, v4

    .line 712
    .restart local v18       #SmeanAngle:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move v4, v0

    const/4 v6, 0x3

    if-ge v4, v6, :cond_c

    .line 713
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->maxSizeT:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    cmpg-float v4, v4, v6

    if-gez v4, :cond_c

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x1

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->maxSizeT:F

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x1

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->maxAngleT:F

    .line 718
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->dist1:F

    move v4, v0

    float-to-double v14, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x1

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget v6, v6, v7

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget v7, v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget v7, v7, v8

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    .end local v9           #ad:[F
    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    move v0, v4

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    .end local v18           #SmeanAngle:F
    move-result-wide v18

    add-double v14, v14, v18

    double-to-float v4, v14

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->dist1:F

    .line 720
    if-nez v5, :cond_d

    .line 721
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastX:F

    .line 722
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastY:F

    .line 723
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mInitX:F

    .line 724
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mInitY:F

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->InitX:F

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->InitY:F

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v4, v0

    const/4 v6, 0x0

    aget-wide v14, v4, v6

    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/GestureDetector;->StartTime:J

    .line 728
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SweepStep1:Z

    .line 729
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 732
    :cond_d
    const/16 v39, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    move/from16 v0, v39

    move v1, v4

    if-ge v0, v1, :cond_f

    .line 733
    const/16 v38, 0x8

    :goto_9
    if-ltz v38, :cond_e

    .line 734
    aget-object v4, v49, v39

    add-int/lit8 v6, v38, 0x1

    aget-object v7, v49, v39

    aget v7, v7, v38

    aput v7, v4, v6

    .line 735
    aget-object v4, v50, v39

    add-int/lit8 v6, v38, 0x1

    aget-object v7, v50, v39

    aget v7, v7, v38

    aput v7, v4, v6

    .line 733
    add-int/lit8 v38, v38, -0x1

    goto :goto_9

    .line 732
    :cond_e
    add-int/lit8 v39, v39, 0x1

    goto :goto_8

    .line 738
    :cond_f
    const/16 v38, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_10

    .line 739
    aget-object v4, v49, v38

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v7, v0

    aget-object v7, v7, v38

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v8, v0

    aget-object v8, v8, v38

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v8, v0

    const/4 v9, 0x1

    aget-wide v14, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v8, v0

    const/4 v9, 0x2

    aget-wide v18, v8, v9

    sub-long v14, v14, v18

    long-to-float v8, v14

    div-float/2addr v7, v8

    aput v7, v4, v6

    .line 740
    aget-object v4, v50, v38

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v7, v0

    aget-object v7, v7, v38

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v8, v0

    aget-object v8, v8, v38

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v8, v0

    const/4 v9, 0x1

    aget-wide v14, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v8, v0

    const/4 v9, 0x2

    aget-wide v18, v8, v9

    sub-long v14, v14, v18

    long-to-float v8, v14

    div-float/2addr v7, v8

    aput v7, v4, v6

    .line 738
    add-int/lit8 v38, v38, 0x1

    goto :goto_a

    .line 743
    :cond_10
    const/16 v38, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_12

    .line 744
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->maxSwAngle:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v6, v0

    aget-object v6, v6, v38

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_11

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->maxSwAngle:F

    .line 743
    :cond_11
    add-int/lit8 v38, v38, 0x1

    goto :goto_b

    .line 749
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v4, v6

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v4, v6

    .line 752
    const/16 v38, 0x0

    .end local v10           #ed:[F
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_13

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v8, v0

    aget-object v8, v8, v38

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-float v8, v8, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v9, v0

    aget-object v9, v9, v38

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float v9, v9, v22

    mul-float/2addr v8, v9

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v8, v14

    add-float/2addr v7, v8

    aput v7, v4, v6

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v4, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v8, v0

    aget-object v8, v8, v38

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-float v8, v8, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v9, v0

    aget-object v9, v9, v38

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float v9, v9, v23

    mul-float/2addr v8, v9

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v8, v14

    add-float/2addr v7, v8

    aput v7, v4, v6

    .line 752
    add-int/lit8 v38, v38, 0x1

    goto :goto_c

    .line 757
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->MaxSsumEccen:F

    move v4, v0

    cmpg-float v4, v4, v25

    if-gez v4, :cond_14

    .line 758
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->MaxSsumEccen:F

    .line 759
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move v4, v0

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    move v4, v0

    if-nez v4, :cond_1d

    .line 761
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mSweepLRDown:Z

    move v4, v0

    if-nez v4, :cond_15

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    const/4 v6, 0x5

    if-le v4, v6, :cond_15

    const/high16 v4, 0x42c8

    cmpl-float v4, v27, v4

    if-lez v4, :cond_15

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    const/high16 v6, 0x447a

    cmpl-float v4, v4, v6

    if-lez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    const/high16 v6, 0x447a

    cmpl-float v4, v4, v6

    if-lez v4, :cond_15

    .line 766
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mPalmDown:Z

    .line 771
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_16

    .line 772
    const-string v4, "GestureDetector"

    const-string v6, "[Event] Palm touch"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalm(Landroid/view/MotionEvent;)Z

    move-result v37

    .line 775
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepLRDown:Z

    .line 779
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastX:F

    move v4, v0

    sub-float v33, v4, v22

    .line 780
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastY:F

    move v4, v0

    sub-float v34, v4, v23

    .line 782
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitY:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v4, v0

    const/4 v6, 0x0

    aget-wide v14, v4, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/GestureDetector;->StartTime:J

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/16 v18, 0x2bc

    cmp-long v4, v14, v18

    if-gez v4, :cond_17

    .line 783
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SwTimeFlag:Z

    .line 784
    :cond_17
    const/high16 v4, 0x41f0

    cmpl-float v4, v27, v4

    if-ltz v4, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitY:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_19

    .line 785
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->SwTimeFlag:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_19

    .line 786
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->SweepStep1:Z

    move v4, v0

    if-eqz v4, :cond_29

    .line 787
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mInitX:F

    move v4, v0

    sub-float v30, v22, v4

    .line 788
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mInitY:F

    move v4, v0

    sub-float v31, v23, v4

    .line 789
    mul-float v4, v30, v30

    mul-float v6, v31, v31

    add-float v32, v4, v6

    .line 790
    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x447a

    cmpl-float v4, v4, v6

    if-lez v4, :cond_18

    .line 791
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SweepDown:Z

    .line 792
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastX:F

    .line 793
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastY:F

    .line 794
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SweepStep1:Z

    .line 802
    :cond_18
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->SweepDown:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_19

    .line 804
    const/high16 v4, 0x3f80

    cmpl-float v4, v25, v4

    if-ltz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    const/high16 v6, 0x42c8

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2b

    .line 805
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepLRDown:Z

    .line 811
    :cond_19
    :goto_e
    const/4 v4, 0x1

    if-ne v5, v4, :cond_1a

    .line 812
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepLRDown:Z

    .line 815
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mSweepLRDown:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1b

    .line 816
    const/4 v4, 0x0

    cmpl-float v4, v33, v4

    if-ltz v4, :cond_2c

    .line 817
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move v4, v0

    sub-float v4, v4, v22

    const/high16 v6, 0x42c8

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1b

    .line 818
    const-string v4, "GestureDetector"

    const-string v6, "[Event] Shape sweep, RIGHT2LEFT"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/view/GestureDetector$OnShapeGestureListener;->onShapeSweepLR(I)Z

    move-result v37

    .line 820
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    .line 831
    :cond_1b
    :goto_f
    const/high16 v4, 0x4348

    cmpl-float v4, v27, v4

    if-gtz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    const/high16 v6, 0x42b4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1d

    .line 832
    :cond_1c
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepLRDown:Z

    .line 837
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    move v4, v0

    if-nez v4, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move v4, v0

    if-nez v4, :cond_20

    .line 839
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    move v4, v0

    if-nez v4, :cond_1e

    .line 841
    const/high16 v4, 0x4270

    cmpl-float v4, v27, v4

    if-lez v4, :cond_1e

    .line 843
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 847
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    add-float/2addr v4, v6

    const v6, 0x453b8000

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1f

    .line 849
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 850
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    .line 853
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mHandTouched:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_20

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onHandTouched(Landroid/view/MotionEvent;)Z

    move-result v37

    .line 856
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->bInitHandTouch:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_20

    .line 858
    const-string v4, "GestureDetector"

    const-string v6, "[Event] HandTouched"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bInitHandTouch:Z

    .line 865
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mLiftTapDown:Z

    move v4, v0

    if-nez v4, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    move v4, v0

    if-nez v4, :cond_27

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    const/high16 v6, 0x43fa

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    const/high16 v6, 0x447a

    cmpg-float v4, v4, v6

    if-gez v4, :cond_22

    .line 869
    :cond_21
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    .line 872
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep1:Z

    move v4, v0

    if-nez v4, :cond_23

    .line 874
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move v4, v0

    const/high16 v6, 0x442f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitY:F

    move v4, v0

    const v6, 0x44898000

    cmpl-float v4, v4, v6

    if-lez v4, :cond_23

    .line 876
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-float/2addr v4, v6

    const/high16 v6, 0x4248

    cmpl-float v4, v4, v6

    if-lez v4, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitY:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-float/2addr v4, v6

    const/high16 v6, 0x42c8

    cmpl-float v4, v4, v6

    if-lez v4, :cond_23

    .line 878
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep1:Z

    .line 884
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep1:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep2:Z

    move v4, v0

    if-nez v4, :cond_26

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v4, v6

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-gez v4, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v4, v6

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_26

    .line 888
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->medFlag:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_25

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medX:F

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medY:F

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x2

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medSize:F

    .line 893
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->medFlag:Z

    .line 896
    :cond_25
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep2:Z

    .line 900
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep2:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_27

    .line 902
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->medX:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->medY:F

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    add-float/2addr v4, v6

    const/high16 v6, -0x4080

    cmpg-float v4, v4, v6

    if-gez v4, :cond_27

    .line 904
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->medSize:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v4, v6

    const/high16 v6, -0x3f60

    cmpg-float v4, v4, v6

    if-gez v4, :cond_27

    .line 906
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mLiftTapDown:Z

    .line 907
    const-string v4, "GestureDetector"

    const-string v6, "[Event] Lift tap Event"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onLiftTap(Landroid/view/MotionEvent;)Z

    move-result v37

    .line 914
    :cond_27
    and-int/lit16 v4, v5, 0xff

    packed-switch v4, :pswitch_data_0

    .line 1061
    .end local v5           #action:I
    :cond_28
    :goto_10
    const/4 v4, 0x0

    return v4

    .line 796
    .restart local v5       #action:I
    :cond_29
    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x3f80

    cmpl-float v4, v4, v6

    if-gez v4, :cond_2a

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x3f80

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_18

    .line 797
    :cond_2a
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SweepDown:Z

    .line 798
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastX:F

    .line 799
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastY:F

    goto/16 :goto_d

    .line 806
    :cond_2b
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SweepDown:Z

    goto/16 :goto_e

    .line 823
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move v4, v0

    sub-float v4, v4, v22

    const/high16 v6, -0x3d38

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1b

    .line 824
    const-string v4, "GestureDetector"

    const-string v6, "[Event] Shape sweep, LEFT2RIGHT"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Landroid/view/GestureDetector$OnShapeGestureListener;->onShapeSweepLR(I)Z

    move-result v37

    .line 826
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    goto/16 :goto_f

    .line 916
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    .end local v5           #action:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x4248

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitY:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x4248

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2e

    .line 917
    :cond_2d
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistDown:Z

    .line 918
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistTempDown:Z

    .line 921
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mSweepLRDown:Z

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_28

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    const/high16 v5, 0x41c8

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    const/high16 v5, 0x40a0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistTempDown:Z

    move v4, v0

    if-nez v4, :cond_2f

    .line 927
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->dist1:F

    move v4, v0

    const/high16 v5, 0x42f0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2f

    .line 929
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->maxAngleT:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40a0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2f

    .line 930
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistDown:Z

    .line 936
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move v4, v0

    if-eqz v4, :cond_28

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->maxAngleT:F

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p1

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/view/GestureDetector$OnShapeGestureListener;->onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v37

    .line 938
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->maxAngleT:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_30

    .line 940
    const-string v4, "GestureDetector"

    const-string v5, "[Event] Twist CCW"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 942
    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->maxAngleT:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_28

    .line 944
    const-string v4, "GestureDetector"

    const-string v5, "[Event] Twist CW"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 952
    .restart local v5       #action:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move v4, v0

    if-nez v4, :cond_39

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    move v4, v0

    if-nez v4, :cond_39

    .line 953
    const/16 v38, 0x0

    .end local v5           #action:I
    :goto_11
    const/4 v4, 0x5

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_31

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget v4, v4, v38

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float v16, v16, v4

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget v4, v4, v38

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float v17, v17, v4

    .line 953
    add-int/lit8 v38, v38, 0x1

    goto :goto_11

    .line 958
    :cond_31
    const/16 v42, 0x0

    .line 959
    .local v42, maxSFsumSize:F
    const/16 v38, 0x0

    :goto_12
    const/4 v4, 0x5

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_33

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget v4, v4, v38

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v42, v4

    if-gez v4, :cond_32

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget v4, v4, v38

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v42

    .line 959
    :cond_32
    add-int/lit8 v38, v38, 0x1

    goto :goto_12

    .line 965
    :cond_33
    const/16 v43, 0x0

    .line 966
    .local v43, maxSVarX:F
    const/16 v44, 0x0

    .line 967
    .local v44, maxSVarY:F
    const v45, 0x461c4000

    .line 968
    .local v45, minSVarX:F
    const v46, 0x461c4000

    .line 970
    .local v46, minSVarY:F
    const/16 v38, 0x0

    :goto_13
    const/4 v4, 0x5

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_38

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    aget v4, v4, v38

    cmpg-float v4, v43, v4

    if-gez v4, :cond_34

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    aget v43, v4, v38

    .line 974
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v4, v0

    aget v4, v4, v38

    cmpg-float v4, v44, v4

    if-gez v4, :cond_35

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v4, v0

    aget v44, v4, v38

    .line 977
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    aget v4, v4, v38

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_36

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    aget v4, v4, v38

    cmpl-float v4, v45, v4

    if-lez v4, :cond_36

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    aget v45, v4, v38

    .line 982
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v4, v0

    aget v4, v4, v38

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_37

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v4, v0

    aget v4, v4, v38

    cmpl-float v4, v46, v4

    if-lez v4, :cond_37

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v4, v0

    aget v46, v4, v38

    .line 970
    :cond_37
    add-int/lit8 v38, v38, 0x1

    goto :goto_13

    .line 989
    :cond_38
    const/high16 v4, 0x40a0

    div-float v4, v17, v4

    const/high16 v5, 0x4170

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_39

    const/high16 v4, 0x41a0

    cmpl-float v4, v42, v4

    if-lez v4, :cond_39

    .line 990
    const/4 v4, 0x0

    aget-object v4, v49, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v14, v4

    const-wide v18, 0x3fd999999999999aL

    cmpl-double v4, v14, v18

    if-lez v4, :cond_39

    const/4 v4, 0x0

    aget-object v4, v49, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v50, v5

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_39

    .line 993
    const/4 v4, 0x0

    aget-object v4, v49, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3a

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/GestureDetector$OnShapeGestureListener;->onShapeSweepLR(I)Z

    move-result v37

    .line 995
    const-string v4, "GestureDetector"

    const-string v5, "[Event] Shape sweep, LEFT2RIGHT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    .line 1008
    .end local v42           #maxSFsumSize:F
    .end local v43           #maxSVarX:F
    .end local v44           #maxSVarY:F
    .end local v45           #minSVarX:F
    .end local v46           #minSVarY:F
    :cond_39
    :goto_14
    const/16 v39, 0x0

    :goto_15
    const/16 v4, 0xa

    move/from16 v0, v39

    move v1, v4

    if-ge v0, v1, :cond_3c

    .line 1009
    const/16 v38, 0x0

    :goto_16
    const/16 v4, 0xa

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_3b

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    const/4 v5, 0x0

    aput v5, v4, v38

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    const/4 v5, 0x0

    aput v5, v4, v38

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    const/4 v5, 0x0

    aput v5, v4, v38

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    const/4 v5, 0x0

    aput v5, v4, v38

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    const/4 v5, 0x0

    aput v5, v4, v38

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Spd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    const/4 v5, 0x0

    aput v5, v4, v38

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sid:[[I

    move-object v4, v0

    aget-object v4, v4, v39

    const/4 v5, 0x0

    aput v5, v4, v38

    .line 1009
    add-int/lit8 v38, v38, 0x1

    goto :goto_16

    .line 998
    .restart local v42       #maxSFsumSize:F
    .restart local v43       #maxSVarX:F
    .restart local v44       #maxSVarY:F
    .restart local v45       #minSVarX:F
    .restart local v46       #minSVarY:F
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/GestureDetector$OnShapeGestureListener;->onShapeSweepLR(I)Z

    move-result v37

    .line 999
    const-string v4, "GestureDetector"

    const-string v5, "[Event] Shape sweep, RIGHT2LEFT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    goto :goto_14

    .line 1008
    .end local v42           #maxSFsumSize:F
    .end local v43           #maxSVarX:F
    .end local v44           #maxSVarY:F
    .end local v45           #minSVarX:F
    .end local v46           #minSVarY:F
    :cond_3b
    add-int/lit8 v39, v39, 0x1

    goto :goto_15

    .line 1020
    :cond_3c
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->TouchCnt:I

    .line 1021
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mPalmDown:Z

    .line 1022
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepLRDown:Z

    .line 1023
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistDown:Z

    .line 1024
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistTempDown:Z

    .line 1025
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    .line 1026
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SweepDown:Z

    .line 1027
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SweepStep1:Z

    .line 1028
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SwTimeFlag:Z

    .line 1030
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->dist1:F

    .line 1031
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->maxSizeT:F

    .line 1032
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->maxAngleT:F

    .line 1033
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->maxSwAngle:F

    .line 1035
    const v4, 0x4479c000

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->MinSize:F

    .line 1036
    const v4, -0x3b864000

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->MaxSize:F

    .line 1037
    const v4, -0x3b864000

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->MaxSsumEccen:F

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1048
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medX:F

    .line 1049
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medY:F

    .line 1050
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medSize:F

    .line 1051
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->medFlag:Z

    .line 1052
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep1:Z

    .line 1053
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep2:Z

    .line 1054
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep3:Z

    .line 1055
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mLiftTapDown:Z

    .line 1056
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    .line 1057
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    .line 1058
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 1059
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bInitHandTouch:Z

    goto/16 :goto_10

    .line 914
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0
    .parameter "isLongpressEnabled"

    .prologue
    .line 553
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 554
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .parameter "onDoubleTapListener"

    .prologue
    .line 540
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 541
    return-void
.end method
