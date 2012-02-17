.class Lcom/android/phone/InVTCallScreen$26;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Lsiso/vt/VTManager$VTStackStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 8773
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lsiso/vt/VTManager$VTEventForUI;Lsiso/vt/VideoTelephonyData;)V
    .locals 9
    .parameter "state"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "InVTCallScreen:: "

    const-string v4, "InVTCallScreen"

    .line 8775
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "Inside VTStackStateListener"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 8776
    const-string v1, "InVTCallScreen:: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged State :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8778
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_FIRST_VIDEO_FRAME_DECODED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_2

    .line 8780
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 8782
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v8}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8784
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8785
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d0309

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 9089
    .end local p0
    :cond_1
    :goto_0
    return-void

    .line 8788
    .restart local p0
    :cond_2
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_VIDEO_TX_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_7

    .line 8791
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8793
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8400(Lcom/android/phone/InVTCallScreen;)V

    .line 8795
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8797
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "Camera desabled due DPM\t- INTENT_MSG_SECURITY"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 8798
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0d0241

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 8804
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 8807
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->enableHideMeState()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_0

    .line 8809
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8810
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->sendLiveVideo()V

    goto :goto_0

    .line 8814
    :cond_7
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_CALL_DEINITIALIZED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_11

    .line 8815
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_VT_CALL_DEINITIALIZED"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8817
    invoke-static {v6}, Lcom/android/phone/InVTCallScreen;->access$2402(Z)Z

    .line 8818
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$8500(Lcom/android/phone/InVTCallScreen;Z)V

    .line 8820
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8800(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 8821
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8822
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8823
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8800(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 8825
    :cond_8
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 8826
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->releaseVTManager()V

    .line 8827
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->deinitVTManager()V

    .line 8828
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1, v8}, Lcom/android/phone/InVTCallScreen;->access$2702(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;

    .line 8831
    :cond_9
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 8832
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8833
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 8834
    :cond_a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 8835
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    .line 8836
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v2

    iget-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v1, p0}, Lcom/android/phone/InVTCallScreen;->access$2600(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 8838
    .restart local p0
    :cond_b
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6c

    const-wide/16 v3, 0x1194

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8844
    :cond_c
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 8845
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 8846
    :cond_d
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 8847
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    .line 8848
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v2

    iget-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v1, p0}, Lcom/android/phone/InVTCallScreen;->access$2600(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 8849
    .restart local p0
    :cond_e
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9000(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 8850
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9000(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 8851
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6c

    const-wide/16 v3, 0x1194

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8857
    :cond_f
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 8860
    :cond_10
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6c

    const-wide/16 v3, 0x1194

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8867
    :cond_11
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_END_CALL_REQUEST:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_12

    .line 8868
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_VT_END_CALL_REQUEST"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8870
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)V

    .line 8871
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$2202(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 8872
    :cond_12
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_SESSION_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_13

    .line 8873
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_VT_SESSION_STOP_SUCCESS"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8875
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$2202(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8877
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8878
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->cleanupCall()V

    goto/16 :goto_0

    .line 8882
    :cond_13
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_PROTOCOL_ERR_IND:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_14

    .line 8883
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_VT_PROTOCOL_ERR_IND"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8885
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)V

    .line 8886
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$2202(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 8889
    :cond_14
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_15

    .line 8890
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_IC_START_FAILURE"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8895
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0d0307

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9100(Lcom/android/phone/InVTCallScreen;I)V

    goto/16 :goto_0

    .line 8897
    :cond_15
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_SUCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_19

    .line 8898
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_IC_START_SUCESS"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8900
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 8901
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4800(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 8903
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$4800(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 8905
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 8908
    :cond_16
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8910
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 8911
    const-string v1, "InVTCallScreen"

    const-string v1, "H324M_IC_START_SUCESS:: Preset Image Enabled"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8913
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8914
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$5102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8922
    :cond_17
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8923
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$9202(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 8916
    :cond_18
    const-string v1, "InVTCallScreen"

    const-string v1, "H324M_IC_START_SUCESS:: Preset Image Desabled"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8919
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_1

    .line 8926
    :cond_19
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_VIDEO_DEACTIVATED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1a

    .line 8927
    const-string v1, "InVTCallScreen"

    const-string v1, "CHH onStateChanged: H324M_IC_VIDEO_DEACTIVATED"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8928
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f0d048f

    invoke-virtual {v3, v4}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 8932
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 8934
    :cond_1a
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_VIDEO_ACTIVATED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1b

    .line 8935
    const-string v1, "InVTCallScreen"

    const-string v1, "CHH onStateChanged: H324M_IC_VIDEO_ACTIVATED"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8936
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f0d0490

    invoke-virtual {v3, v4}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 8940
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 8942
    :cond_1b
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_MO_MRBT_START:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1c

    .line 8943
    const-string v1, "InVTCallScreen"

    const-string v1, "CHH onStateChanged: H324M_VT_MO_MRBT_START"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8944
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isMTRBstart:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$9402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8945
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isMTRBend:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$9502(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 8946
    :cond_1c
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_MO_MRBT_END:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1d

    .line 8947
    const-string v1, "InVTCallScreen"

    const-string v1, "CHH onStateChanged: H324M_VT_MO_MRBT_END"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8948
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isMTRBstart:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$9402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8949
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isMTRBend:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$9502(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 8950
    :cond_1d
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1f

    .line 8951
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_REC_START_FAILURE"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8952
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0d031b

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9100(Lcom/android/phone/InVTCallScreen;I)V

    .line 8953
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 8954
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8955
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8956
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 8957
    :cond_1e
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8958
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v1, v8}, Lcom/android/phone/InVTCallScreen;->access$9602(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 8959
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    .line 8963
    :cond_1f
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_20

    .line 8964
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_REC_START_SUCCESS"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8968
    :cond_20
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_21

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_RETRY_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_23

    .line 8970
    :cond_21
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v1, v1, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    if-eqz v1, :cond_22

    .line 8972
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v6, v1, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    .line 8974
    :cond_22
    const-string v1, "InVTCallScreen:: "

    const-string v1, "VTMNGR_CAMERA_START_SUCCESS "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8975
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v7, v1, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 8976
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$4100(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    .line 8977
    :cond_23
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_24

    .line 8978
    const-string v1, "InVTCallScreen:: "

    const-string v1, "VTMNGR_CAMERA_START_FAILURE"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8979
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$4402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8980
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v6, v1, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 8981
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$4100(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    .line 8982
    :cond_24
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_27

    .line 8983
    const-string v1, "InVTCallScreen:: "

    const-string v1, "H324M_REC_STOP_SUCCESS"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8984
    invoke-static {}, Lcom/android/phone/MediaLowSpaceReceiver;->unRegisterLowMemoryListner()V

    .line 8985
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 8986
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    const v5, 0x7f0d031d

    invoke-virtual {v4, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$9600(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    const v5, 0x7f0d031e

    invoke-virtual {v4, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 8997
    :goto_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 8998
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 9000
    :cond_25
    new-array v0, v7, [Ljava/lang/String;

    .line 9001
    .local v0, path:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9600(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 9002
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Lcom/android/phone/InVTCallScreen$26$1;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$26$1;-><init>(Lcom/android/phone/InVTCallScreen$26;)V

    invoke-static {v1, v0, v8, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 9007
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$9702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9008
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9009
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 8992
    .end local v0           #path:[Ljava/lang/String;
    :cond_26
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$9600(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    const v5, 0x7f0d031e

    invoke-virtual {v4, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_2

    .line 9012
    :cond_27
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_ALL_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_28

    .line 9013
    const-string v1, "InVTCallScreen"

    const-string v1, "CHH onStateChanged: H324M_VT_ALL_OLC_ESTABLISHED"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9014
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isAllOLC:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$9802(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 9016
    :cond_28
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_MAX_TIMEOUT:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_2b

    .line 9017
    const-string v1, "InVTCallScreen:: "

    const-string v1, "H324M_REC_MAX_TIMEOUT"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9018
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 9019
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    .line 9021
    :cond_29
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 9022
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    .line 9024
    :cond_2a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$9600(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    const v5, 0x7f0d031e

    invoke-virtual {v4, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 9028
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$9702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9029
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9030
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 9033
    :cond_2b
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_2e

    .line 9034
    const-string v1, "InVTCallScreen:: "

    const-string v1, "H324M_REC_PROTOCOL_ERROR"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9035
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 9036
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    .line 9038
    :cond_2c
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 9039
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    .line 9041
    :cond_2d
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$9600(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    const v5, 0x7f0d031e

    invoke-virtual {v4, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 9045
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$9702(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 9048
    :cond_2e
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_30

    .line 9049
    const-string v1, "InVTCallScreen:: "

    const-string v1, "H324M_REC_PROTOCOL_ERROR"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9050
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 9051
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    .line 9053
    :cond_2f
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9054
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    .line 9058
    :cond_30
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_31

    .line 9060
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9061
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$4100(Lcom/android/phone/InVTCallScreen;Z)V

    .line 9062
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4600(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 9065
    :cond_31
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_32

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_32

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_32

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_32

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_FILE_READ_ERR:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_32

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_32

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1

    .line 9072
    :cond_32
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9073
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0d0307

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9100(Lcom/android/phone/InVTCallScreen;I)V

    goto/16 :goto_0
.end method
