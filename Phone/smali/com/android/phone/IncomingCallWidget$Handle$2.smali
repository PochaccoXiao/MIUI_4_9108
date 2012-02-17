.class Lcom/android/phone/IncomingCallWidget$Handle$2;
.super Landroid/os/Handler;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallWidget$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IncomingCallWidget$Handle;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallWidget$Handle;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 484
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 512
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 515
    :goto_0
    return-void

    .line 486
    :pswitch_0
    const/4 v1, 0x0

    .line 488
    .local v1, arrowImage:Landroid/widget/ImageView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 489
    const/4 v3, 0x0

    .line 490
    .local v3, index:I
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I
    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$200(Lcom/android/phone/IncomingCallWidget$Handle;)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 491
    move v3, v2

    .line 495
    :goto_2
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$300(Lcom/android/phone/IncomingCallWidget$Handle;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v1, v4, v3

    .line 496
    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 497
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-nez v4, :cond_4

    .line 498
    :cond_0
    add-int/lit8 v4, v2, 0x1

    if-eq v5, v4, :cond_3

    .line 499
    const-wide/16 v4, 0x96

    invoke-virtual {p0, v7, v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$2;->sendEmptyMessageDelayed(IJ)Z

    .line 508
    .end local v0           #ani:Landroid/view/animation/Animation;
    .end local v3           #index:I
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #calls: Lcom/android/phone/IncomingCallWidget$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$400(Lcom/android/phone/IncomingCallWidget$Handle;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 493
    .restart local v3       #index:I
    :cond_2
    sub-int v4, v5, v2

    sub-int v3, v4, v6

    goto :goto_2

    .line 502
    .restart local v0       #ani:Landroid/view/animation/Animation;
    :cond_3
    const-wide/16 v4, 0x384

    invoke-virtual {p0, v7, v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 488
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 484
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
