.class public Lcom/android/phone/IncomingCallWidget;
.super Landroid/widget/RelativeLayout;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingCallWidget$Handle;,
        Lcom/android/phone/IncomingCallWidget$OnTriggerListener;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field private final VIBRATE_LONG:J

.field private final VIBRATE_SHORT:J

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mGrabbedState:I

.field private mIsTracking:Z

.field private mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

.field private mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

.field private mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallWidget;->DBG:Z

    .line 47
    const-string v0, "IncomingCallWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->LOG_TAG:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_SHORT:J

    .line 51
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_LONG:J

    .line 61
    iput v2, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    .line 71
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallWidget;->DBG:Z

    .line 47
    const-string v0, "IncomingCallWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->LOG_TAG:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_SHORT:J

    .line 51
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_LONG:J

    .line 61
    iput v2, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    .line 77
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallWidget;->DBG:Z

    .line 47
    const-string v0, "IncomingCallWidget"

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->LOG_TAG:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_SHORT:J

    .line 51
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/phone/IncomingCallWidget;->VIBRATE_LONG:J

    .line 61
    iput v2, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    .line 83
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget;->init()V

    .line 85
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/IncomingCallWidget;)Lcom/android/phone/IncomingCallWidget$Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/IncomingCallWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/IncomingCallWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingCallWidget;->dispatchTriggerEvent(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/IncomingCallWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/IncomingCallWidget;)Lcom/android/phone/IncomingCallWidget$Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    return-object v0
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTriggerEvent : whichHandle - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 170
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingCallWidget;->vibrate(J)V

    .line 171
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/IncomingCallWidget$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 174
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 88
    const-string v0, "init"

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 89
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 91
    new-instance v0, Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/android/phone/IncomingCallWidget$Handle;-><init>(Lcom/android/phone/IncomingCallWidget;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    .line 92
    new-instance v0, Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/android/phone/IncomingCallWidget$Handle;-><init>(Lcom/android/phone/IncomingCallWidget;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    .line 93
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 181
    iget v0, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 182
    iput p1, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    .line 183
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/IncomingCallWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/IncomingCallWidget$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 187
    :cond_0
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mVibrator:Landroid/os/Vibrator;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 869
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 205
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 206
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 209
    .local v4, y:F
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v5, v3, v4}, Lcom/android/phone/IncomingCallWidget$Handle;->isHandleSelected(FF)Z

    move-result v1

    .line 212
    .local v1, leftHit:Z
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v5, v3, v4}, Lcom/android/phone/IncomingCallWidget$Handle;->isHandleSelected(FF)Z

    move-result v2

    .line 214
    .local v2, rightHit:Z
    iget-boolean v5, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    if-nez v5, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 215
    const/4 v5, 0x0

    .line 237
    :goto_0
    return v5

    .line 218
    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v5, v7

    .line 237
    goto :goto_0

    .line 220
    :pswitch_0
    const-wide/16 v5, 0x1e

    invoke-direct {p0, v5, v6}, Lcom/android/phone/IncomingCallWidget;->vibrate(J)V

    .line 221
    iput-boolean v7, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    .line 222
    if-eqz v1, :cond_2

    .line 223
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v5, v7}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 224
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v5, v8}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 225
    invoke-direct {p0, v7}, Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V

    goto :goto_1

    .line 226
    :cond_2
    if-eqz v2, :cond_1

    .line 227
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v5, v7}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 228
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v5, v8}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 229
    invoke-direct {p0, v8}, Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V

    goto :goto_1

    .line 218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 191
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 192
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget$Handle;->makeLayout()V

    .line 193
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget$Handle;->makeLayout()V

    .line 194
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 246
    iget-boolean v1, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 249
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 270
    .end local v0           #action:I
    :cond_0
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    move v1, v3

    :goto_0
    return v1

    .line 251
    .restart local v0       #action:I
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle;->getState()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 252
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1, p1}, Lcom/android/phone/IncomingCallWidget$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_1
    move v1, v3

    .line 256
    goto :goto_0

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1}, Lcom/android/phone/IncomingCallWidget$Handle;->getState()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 254
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1, p1}, Lcom/android/phone/IncomingCallWidget$Handle;->processMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 261
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z

    .line 262
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 263
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 264
    invoke-direct {p0, v2}, Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V

    move v1, v3

    .line 265
    goto :goto_0

    .end local v0           #action:I
    :cond_4
    move v1, v2

    .line 270
    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setLeftHintText(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 150
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .locals 0
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"

    .prologue
    .line 146
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget;->mOnTriggerListener:Lcom/android/phone/IncomingCallWidget$OnTriggerListener;

    .line 162
    return-void
.end method

.method public setRightHintText(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 154
    return-void
.end method

.method public setRightTabResources(IIII)V
    .locals 0
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"

    .prologue
    .line 142
    return-void
.end method
