.class public Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
.super Landroid/os/CountDownTimer;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrightZoomTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/InVTCallScreen;JJ)V
    .locals 0
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 10892
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    .line 10893
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 10895
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 10899
    const-string v0, "InVTCallScreen"

    const-string v1, "Count down timer is finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10900
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10901
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10903
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10400(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 10905
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->bchangebrightness:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10600(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 10907
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0d0494

    invoke-virtual {v1, v2}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 10908
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->bchangebrightness:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 10912
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, -0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$10402(Lcom/android/phone/InVTCallScreen;I)I

    .line 10913
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .parameter "millisUntilFinished"

    .prologue
    .line 10917
    const-string v0, "InVTCallScreen"

    const-string v1, "In onTick of countdown timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10919
    return-void
.end method
