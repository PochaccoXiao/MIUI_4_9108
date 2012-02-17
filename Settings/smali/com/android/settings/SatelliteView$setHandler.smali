.class Lcom/android/settings/SatelliteView$setHandler;
.super Landroid/os/Handler;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "setHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SatelliteView;


# direct methods
.method private constructor <init>(Lcom/android/settings/SatelliteView;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SatelliteView;Lcom/android/settings/SatelliteView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lcom/android/settings/SatelliteView$setHandler;-><init>(Lcom/android/settings/SatelliteView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 766
    const/4 v3, 0x2

    new-array v1, v3, [D

    .line 767
    .local v1, position:[D
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$200()D

    move-result-wide v4

    const-wide v6, 0x412e848000000000L

    mul-double/2addr v4, v6

    aput-wide v4, v1, v3

    .line 768
    const/4 v3, 0x1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$300()D

    move-result-wide v4

    const-wide v6, 0x412e848000000000L

    mul-double/2addr v4, v6

    aput-wide v4, v1, v3

    .line 770
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 774
    .local v0, message:Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 832
    :goto_0
    return-void

    .line 776
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    invoke-virtual {v3}, Lcom/android/settings/SatelliteView;->startGPS()V

    .line 783
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$1400(Lcom/android/settings/SatelliteView;)Lcom/android/settings/SatelliteView$SatelliteViewView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SatelliteView$SatelliteViewView;->invalidate()V

    .line 785
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    invoke-virtual {v3}, Lcom/android/settings/SatelliteView;->showSVStatus()V

    .line 788
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 789
    const-wide/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/settings/SatelliteView$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 790
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/SatelliteView$setHandler;->removeMessages(I)V

    goto :goto_0

    .line 794
    :pswitch_1
    sget v3, Lcom/android/settings/SatelliteView;->ani_count:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    sput v3, Lcom/android/settings/SatelliteView;->ani_count:I

    if-ltz v3, :cond_0

    .line 795
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$1400(Lcom/android/settings/SatelliteView;)Lcom/android/settings/SatelliteView$SatelliteViewView;

    move-result-object v3

    sget-wide v4, Lcom/android/settings/SatelliteView;->ani_gap_x:D

    sget v6, Lcom/android/settings/SatelliteView;->ani_count:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sget-wide v6, Lcom/android/settings/SatelliteView;->ani_gap_y:D

    neg-double v6, v6

    sget v8, Lcom/android/settings/SatelliteView;->ani_count:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/settings/SatelliteView$SatelliteViewView;->setPoint(DD)V

    .line 797
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    invoke-virtual {v3}, Lcom/android/settings/SatelliteView;->showSVStatus()V

    .line 800
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$1400(Lcom/android/settings/SatelliteView;)Lcom/android/settings/SatelliteView$SatelliteViewView;

    move-result-object v3

    const/4 v4, 0x3

    #calls: Lcom/android/settings/SatelliteView$SatelliteViewView;->updateState(I)V
    invoke-static {v3, v4}, Lcom/android/settings/SatelliteView$SatelliteViewView;->access$900(Lcom/android/settings/SatelliteView$SatelliteViewView;I)V

    .line 802
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    const v4, 0x7f0807c5

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$400()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->mSpeed:D
    invoke-static {v7}, Lcom/android/settings/SatelliteView;->access$600(Lcom/android/settings/SatelliteView;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$500()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    iget-object v7, v7, Lcom/android/settings/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, sSatelliteResult:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$1500(Lcom/android/settings/SatelliteView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/settings/SatelliteView$setHandler;->removeMessages(I)V

    .line 806
    const/4 v3, 0x2

    iput v3, v0, Landroid/os/Message;->what:I

    .line 807
    const-wide/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/settings/SatelliteView$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 809
    .end local v2           #sSatelliteResult:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/settings/SatelliteView$setHandler;->removeMessages(I)V

    .line 810
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 811
    const-wide/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/settings/SatelliteView$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 812
    const/16 v3, 0x28

    sput v3, Lcom/android/settings/SatelliteView;->ani_count:I

    goto/16 :goto_0

    .line 817
    :pswitch_2
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/settings/SatelliteView$setHandler;->removeMessages(I)V

    .line 819
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$1400(Lcom/android/settings/SatelliteView;)Lcom/android/settings/SatelliteView$SatelliteViewView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SatelliteView$SatelliteViewView;->invalidate()V

    .line 821
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    const v4, 0x7f0807c5

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$400()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->mSpeed:D
    invoke-static {v7}, Lcom/android/settings/SatelliteView;->access$600(Lcom/android/settings/SatelliteView;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$500()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    iget-object v7, v7, Lcom/android/settings/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 822
    .restart local v2       #sSatelliteResult:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$1500(Lcom/android/settings/SatelliteView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$1400(Lcom/android/settings/SatelliteView;)Lcom/android/settings/SatelliteView$SatelliteViewView;

    move-result-object v3

    const/4 v4, 0x3

    #calls: Lcom/android/settings/SatelliteView$SatelliteViewView;->updateState(I)V
    invoke-static {v3, v4}, Lcom/android/settings/SatelliteView$SatelliteViewView;->access$900(Lcom/android/settings/SatelliteView$SatelliteViewView;I)V

    .line 828
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #calls: Lcom/android/settings/SatelliteView;->diplayCompleted()V
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$1600(Lcom/android/settings/SatelliteView;)V

    goto/16 :goto_0

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
