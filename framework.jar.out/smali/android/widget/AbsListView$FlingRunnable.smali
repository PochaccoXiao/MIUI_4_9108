.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter

    .prologue
    .line 3480
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3481
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 3482
    return-void
.end method

.method static synthetic access$000(Landroid/widget/AbsListView$FlingRunnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3469
    invoke-direct {p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    return-void
.end method

.method private endFling()V
    .locals 2

    .prologue
    .line 3551
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3553
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3555
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3556
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;)V

    .line 3558
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 3563
    return-void
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .parameter "delta"

    .prologue
    .line 3521
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 3522
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 3523
    .local v0, overscrollMode:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3525
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3526
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 3527
    .local v1, vel:I
    if-lez p1, :cond_2

    .line 3528
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)Landroid/widget/EdgeGlow;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3538
    .end local v1           #vel:I
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 3539
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3540
    return-void

    .line 3530
    .restart local v1       #vel:I
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2400(Landroid/widget/AbsListView;)Landroid/widget/EdgeGlow;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    goto :goto_0

    .line 3533
    .end local v1           #vel:I
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3534
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3535
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    goto :goto_0
.end method

.method public run()V
    .locals 26

    .prologue
    .line 3567
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    iget v3, v3, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v3, :pswitch_data_0

    .line 3569
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3667
    :cond_0
    :goto_0
    return-void

    .line 3572
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3576
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    iget v3, v3, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 3577
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 3581
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v24, v0

    .line 3582
    .local v24, scroller:Landroid/widget/OverScroller;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v20

    .line 3583
    .local v20, more:Z
    invoke-virtual/range {v24 .. v24}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v25

    .line 3587
    .local v25, y:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    move v3, v0

    sub-int v17, v3, v25

    .line 3590
    .local v17, delta:I
    if-lez v17, :cond_5

    .line 3592
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v4, v0

    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v4, v3, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3593
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 3594
    .local v18, firstView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3597
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v4, v0

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v4, v0

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 3611
    .end local v18           #firstView:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v4, v0

    iget v4, v4, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v5, v0

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3612
    .local v21, motionView:Landroid/view/View;
    const/16 v23, 0x0

    .line 3613
    .local v23, oldTop:I
    if-eqz v21, :cond_3

    .line 3614
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v23

    .line 3617
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v17, :cond_6

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 3618
    .local v16, atEnd:Z
    :goto_2
    if-eqz v16, :cond_7

    .line 3619
    if-eqz v21, :cond_4

    .line 3621
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v3, v23

    sub-int v3, v17, v3

    neg-int v5, v3

    .line 3622
    .local v5, overshoot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v7, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$2900(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v11, v0

    iget v11, v11, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v12, 0x0

    #calls: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v3 .. v12}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    .line 3625
    .end local v5           #overshoot:I
    :cond_4
    if-eqz v20, :cond_0

    .line 3626
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    .line 3600
    .end local v16           #atEnd:Z
    .end local v21           #motionView:Landroid/view/View;
    .end local v23           #oldTop:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v22, v3, v4

    .line 3601
    .local v22, offsetToLast:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v4, v0

    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v4, v4, v22

    iput v4, v3, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3603
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 3604
    .local v19, lastView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3607
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v4, v0

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2700(Landroid/widget/AbsListView;)I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v4, v0

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2800(Landroid/widget/AbsListView;)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    neg-int v3, v3

    move v0, v3

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    goto/16 :goto_1

    .line 3617
    .end local v19           #lastView:Landroid/view/View;
    .end local v22           #offsetToLast:I
    .restart local v21       #motionView:Landroid/view/View;
    .restart local v23       #oldTop:I
    :cond_6
    const/4 v3, 0x0

    move/from16 v16, v3

    goto/16 :goto_2

    .line 3631
    .restart local v16       #atEnd:Z
    :cond_7
    if-eqz v20, :cond_8

    if-nez v16, :cond_8

    .line 3632
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidate()V

    .line 3633
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 3634
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3636
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 3649
    .end local v16           #atEnd:Z
    .end local v17           #delta:I
    .end local v20           #more:Z
    .end local v21           #motionView:Landroid/view/View;
    .end local v23           #oldTop:I
    .end local v24           #scroller:Landroid/widget/OverScroller;
    .end local v25           #y:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v24, v0

    .line 3650
    .restart local v24       #scroller:Landroid/widget/OverScroller;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3651
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)I

    move-result v10

    .line 3652
    .local v10, scrollY:I
    invoke-virtual/range {v24 .. v24}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    sub-int v8, v3, v10

    .line 3653
    .local v8, deltaY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    iget v14, v3, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v15, 0x0

    #calls: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v6 .. v15}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3655
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 3657
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidate()V

    .line 3658
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3661
    .end local v8           #deltaY:I
    .end local v10           #scrollY:I
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 3567
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 3485
    if-gez p1, :cond_0

    move v2, v6

    .line 3486
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 3487
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 3489
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3490
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3498
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 3485
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x0

    .line 3512
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, -0x8000

    move v7, v0

    .line 3513
    .local v7, min:I
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1900(Landroid/widget/AbsListView;)I

    move-result v0

    if-lez v0, :cond_1

    move v8, v1

    .line 3514
    .local v8, max:I
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2000(Landroid/widget/AbsListView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 3515
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3516
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3517
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3518
    return-void

    .end local v7           #min:I
    .end local v8           #max:I
    :cond_0
    move v7, v1

    .line 3512
    goto :goto_0

    .line 3513
    .restart local v7       #min:I
    :cond_1
    const v0, 0x7fffffff

    move v8, v0

    goto :goto_1
.end method

.method startScroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 3543
    if-gez p1, :cond_0

    const v0, 0x7fffffff

    move v2, v0

    .line 3544
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 3545
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 3546
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3547
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3548
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 3543
    goto :goto_0
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3501
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3502
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3503
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3504
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3509
    :goto_0
    return-void

    .line 3506
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3507
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
