.class Lcom/android/phone/InVTCallScreen$2;
.super Landroid/os/Handler;
.source "InVTCallScreen.java"


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
    .line 893
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsDestroyed:Z
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 898
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Handler: ignoring message "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; we\'re destroyed!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1287
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 903
    .restart local p0
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 904
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Handler: handling message "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " while not in foreground"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 914
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 915
    .local v3, app:Lcom/android/phone/PhoneApp;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v12, v0

    sparse-switch v12, :sswitch_data_0

    goto :goto_0

    .line 1040
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    move-object v0, v12

    move-object/from16 v1, p0

    #calls: Lcom/android/phone/InVTCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 917
    .restart local p0
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 922
    .restart local p0
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    move-object v0, v12

    move-object/from16 v1, p0

    #calls: Lcom/android/phone/InVTCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 926
    .restart local p0
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const-string v13, "InVTCallScreen ::PHONE_DISCONNECT - Processing started"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    .line 931
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x1

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    .line 934
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/AsyncResult;

    .line 935
    .local v6, disconectResult:Landroid/os/AsyncResult;
    iget-object v4, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 936
    .local v4, c:Lcom/android/internal/telephony/Connection;
    if-eqz v4, :cond_6

    .line 937
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v9

    .line 938
    .local v9, o:Ljava/lang/Object;
    instance-of v12, v9, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v12, :cond_6

    .line 939
    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v7, v0

    .line 940
    .local v7, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 942
    const-string v12, "InVTCallScreen"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getCallNumber : voicemail - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v7, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    iget-object v13, v7, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    #setter for: Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$1502(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 951
    .end local v7           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v9           #o:Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$1600(Lcom/android/phone/InVTCallScreen;)V

    .line 954
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$1702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    #setter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$1802(Lcom/android/phone/InVTCallScreen;Landroid/os/Message;)Landroid/os/Message;

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    iput-object v13, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 957
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$1902(Z)Z

    .line 958
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$2002(Z)Z

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)I

    move-result v12

    const/4 v13, 0x7

    if-ne v12, v13, :cond_9

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$2200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const-string v13, "InVTCallScreen ::PHONE_DISCONNECT - DuringCall - Stoping VT Call"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 971
    :cond_8
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$2400()Z

    move-result v12

    if-nez v12, :cond_0

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const-string v13, "InVTCallScreen : PHONE_DISCONNECT - DuringCall - continueOnDisconnection()"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    move-object v0, v12

    move-object/from16 v1, p0

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2600(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 978
    .restart local p0
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const-string v13, "InVTCallScreen ::PHONE_DISCONNECT - onDisconnect()"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v12

    invoke-virtual {v12}, Lsiso/vt/VTManager;->releaseVTManager()V

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v12

    invoke-virtual {v12}, Lsiso/vt/VTManager;->deinitVTManager()V

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$2702(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;

    .line 986
    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v12

    if-nez v12, :cond_b

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    .line 992
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    move-object v0, v12

    move-object/from16 v1, p0

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2600(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 990
    .restart local p0
    :cond_b
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    goto :goto_1

    .line 1005
    .end local v4           #c:Lcom/android/internal/telephony/Connection;
    .end local v6           #disconectResult:Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1006
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v12, v0

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1044
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->onMMICancel()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1055
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/internal/telephony/MmiCode;

    .line 1058
    .local v8, mmiCode:Lcom/android/internal/telephony/MmiCode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    .line 1059
    .local v10, phoneType:I
    const/4 v12, 0x2

    if-ne v10, v12, :cond_c

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v3, v8, v13, v14}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 1062
    :cond_c
    const/4 v12, 0x1

    if-ne v10, v12, :cond_0

    .line 1063
    invoke-interface {v8}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v12, v13, :cond_0

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$3000(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v12, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$3000(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1066
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const-string v13, "Got MMI_COMPLETE, but Call exist..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1069
    :cond_d
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const-string v13, "Got MMI_COMPLETE, but Call not exist... so end VT Call Screen"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1070
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    goto/16 :goto_0

    .line 1077
    .end local v8           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    .end local v10           #phoneType:I
    .restart local p1
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v13, v0

    int-to-char v13, v13

    move-object v0, v12

    move-object/from16 v1, p0

    move v2, v13

    #calls: Lcom/android/phone/InVTCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/InVTCallScreen;->access$3100(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 1090
    .restart local p0
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->FallBackCallNumber:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$3200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_f

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$3300(Lcom/android/phone/InVTCallScreen;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.CALL"

    const-string v15, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v16, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->FallBackCallNumber:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/phone/InVTCallScreen;->access$3200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v12, v13}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1095
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const-string v13, "case:EVENT_FALLBACK_AUTOMATIC FallBackCallNumber is null.."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$3300(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1101
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$3300(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1106
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/phone/InVTCallScreen;->dismissMenu(Z)V

    goto/16 :goto_0

    .line 1116
    :sswitch_c
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_0

    .line 1136
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v12

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1137
    :cond_10
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1138
    const-string v12, "InVTCallScreen"

    const-string v13, "During Call BT or EarPhone is not connected, then switch on the speaker. "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    .line 1146
    :sswitch_e
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const-string v13, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1148
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$3000(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 1151
    .local v5, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v5, :cond_0

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateScreen()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$3400(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1160
    .end local v5           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_f
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const-string v13, "Received THREEWAY_CALLERINFO_DISPLAY_DONE event ..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1162
    :cond_12
    iget-object v12, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v12}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v12

    sget-object v13, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v13, :cond_0

    .line 1164
    iget-object v12, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateScreen()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$3400(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1184
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$3500(Lcom/android/phone/InVTCallScreen;)Landroid/app/AlertDialog;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 1185
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const-string v13, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1187
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$3500(Lcom/android/phone/InVTCallScreen;)Landroid/app/AlertDialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog;->dismiss()V

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$3502(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1194
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$3602(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 1199
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1202
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->bailOutAfterErrorDialog()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$3800(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1206
    :sswitch_14
    const-string v12, "InVTCallScreen"

    const-string v13, "mHandler:Response Received from Gallery"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateSelectedImageFromGallery()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$3900(Lcom/android/phone/InVTCallScreen;)V

    .line 1208
    invoke-static {}, Lcom/android/phone/PickImageFromGallery;->unregisterForImageGalleryResponse()V

    goto/16 :goto_0

    .line 1212
    :sswitch_15
    const-string v12, "InVTCallScreen"

    const-string v13, "mHandler:Response on low memory"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    .line 1219
    :cond_14
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$4000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x1

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$4100(Lcom/android/phone/InVTCallScreen;Z)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$4002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$4202(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->show_camera()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$4300(Lcom/android/phone/InVTCallScreen;)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$4402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$4600(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1216
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x1

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    goto :goto_2

    .line 1231
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateSelectedVideoFromGallery()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)V

    .line 1232
    invoke-static {}, Lcom/android/phone/PickImageFromGallery;->unregisterForImageGalleryResponse()V

    goto/16 :goto_0

    .line 1236
    :sswitch_17
    const-string v12, "InVTCallScreen"

    const-string v13, "mHandler:start recording image casting"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->show_camera()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$4300(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1240
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v12

    if-nez v12, :cond_18

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$4800(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_17

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$4902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v13, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/phone/InVTCallScreen;->access$4800(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$5000(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1245
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->show_camera()V
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$4300(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1248
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const/4 v13, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$5102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_path"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1251
    .local v11, presetImageSrc:Ljava/lang/String;
    if-eqz v11, :cond_19

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static {v12, v11}, Lcom/android/phone/InVTCallScreen;->access$5000(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1254
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    const-string v13, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/InVTCallScreen;->access$5000(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1267
    .end local v11           #presetImageSrc:Ljava/lang/String;
    :sswitch_18
    new-instance v12, Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v13, v0

    invoke-direct {v12, v13}, Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;-><init>(Lcom/android/phone/InVTCallScreen;)V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "start"

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1270
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v12

    if-eqz v12, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

    if-eqz v12, :cond_1a

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1274
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1280
    :sswitch_1a
    const-string v12, "InVTCallScreen"

    const-string v13, "STOP_CAPTURE_IMAGE_ANIMATION:: Stop image animation"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object v12, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v12}, Lcom/android/phone/InVTCallScreen;->access$5300(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_0

    .line 915
    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_1
        0x34 -> :sswitch_7
        0x35 -> :sswitch_6
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_8
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_a
        0x6e -> :sswitch_2
        0x6f -> :sswitch_b
        0x70 -> :sswitch_c
        0x71 -> :sswitch_0
        0x72 -> :sswitch_d
        0x73 -> :sswitch_e
        0x74 -> :sswitch_f
        0x75 -> :sswitch_0
        0x76 -> :sswitch_0
        0x77 -> :sswitch_0
        0x78 -> :sswitch_10
        0x79 -> :sswitch_11
        0x7a -> :sswitch_12
        0x7b -> :sswitch_13
        0x7c -> :sswitch_14
        0x7d -> :sswitch_15
        0x7e -> :sswitch_17
        0x80 -> :sswitch_1a
        0x81 -> :sswitch_16
        0x309 -> :sswitch_9
        0x3e7 -> :sswitch_18
        0x458 -> :sswitch_19
        0x270f -> :sswitch_0
    .end sparse-switch
.end method
