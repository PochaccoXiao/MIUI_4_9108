.class Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmMultiDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v11, "true"

    const-string v9, "gsm.dun.connected"

    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, action:Ljava/lang/String;
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 227
    .local v1, conn:Landroid/net/ConnectivityManager;
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v5, v8}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z

    .line 229
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    .line 230
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    .line 231
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RetryTimer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RetryCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 232
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/RetryManager;->isRetryForever()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 234
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resetRetryCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 235
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v5, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z

    .line 239
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    .line 240
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    .line 241
    :cond_2
    const-string v5, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 242
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GPRS reconnect alarm. Previous state was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 243
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 244
    :cond_3
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 245
    const-string/jumbo v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 247
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v8

    :goto_1
    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$802(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z

    .line 248
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v6, "[WifiConnectionHandler] : NETWORK_STATE_CHANGED_ACTION"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v6, v7

    .line 247
    goto :goto_1

    .line 249
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :cond_5
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 250
    const-string/jumbo v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    move v2, v8

    .line 253
    .local v2, enabled:Z
    :goto_2
    if-eqz v2, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v6, "[WifiConnectionHandler:WIFI_STATE_CHANGED_ACTION] enabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 256
    :goto_3
    if-nez v2, :cond_0

    .line 259
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z
    invoke-static {v5, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$902(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z

    goto/16 :goto_0

    .end local v2           #enabled:Z
    :cond_6
    move v2, v7

    .line 250
    goto :goto_2

    .line 254
    .restart local v2       #enabled:Z
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v6, "[WifiConnectionHandler:WIFI_STATE_CHANGED_ACTION] disabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 261
    .end local v2           #enabled:Z
    :cond_8
    const-string v5, "android.intent.action.CONNECT_GPRS_TRUE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 262
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v6, "[WifiConnectionHandler] INTENT_CONNECT_GPRS_TRUE "

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_0

    .line 264
    :cond_9
    const-string v5, "android.intent.action.CONNECT_GPRS_FALSE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 265
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v6, "[WifiConnectionHandler] INTENT_CONNECT_GPRS_FALSE "

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_0

    .line 268
    :cond_a
    const-string v5, "android.intent.action.BROADCAST_START_NET_STAT_POLL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 269
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->startNetStatPoll()V

    goto/16 :goto_0

    .line 272
    :cond_b
    const-string v5, "android.net.action.DUN_ATTEMPTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 273
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v6, "[Dial Up Network] DUN Call Attempted "

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 274
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setDataEnabled(Z)Z

    goto/16 :goto_0

    .line 276
    :cond_c
    const-string v5, "android.net.action.DUN_DISCONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 277
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v6, "[Dial Up Network] DUN Call Disconnected and reset connection"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 278
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string/jumbo v6, "pdpReset"

    #calls: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V
    invoke-static {v5, v8, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;ZLjava/lang/String;)V

    .line 280
    const-string v5, "gsm.dun.connected"

    const-string v5, "false"

    invoke-static {v9, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v6, "[ActiveSync] onReceive() gsm.dun.connected=false"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :cond_d
    const-string v5, "android.net.action.DUN_CONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 287
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v6, "[Dial Up Network] DUN Call Connected and enable MMS apntype"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 290
    const-string v5, "gsm.dun.connected"

    const-string/jumbo v5, "true"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setDataEnabled(Z)Z

    .line 292
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v6, "[ActiveSync] onReceive() gsm.dun.connected=true"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_e
    const-string v5, "android.net.action.DUN_BLOCKED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 296
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v6, "[Dial Up Network] DUN Blocked "

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 298
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->showDialogOnInternetSharingBlockedByActiveSync()V
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V

    goto/16 :goto_0

    .line 301
    :cond_f
    const-string v5, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 302
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v6, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 305
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->isInternetSharingBlockedByActiveSync()Z
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 306
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v6, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 309
    const-string v5, "gsm.dun.connected"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, isDunConnected:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ActiveSync] onReceive() gsm.dun.connected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v5, "true"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 313
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v6, "[ActiveSync] onReceive() Disconnect DUN"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 314
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->showDialogOnInternetSharingBlockedByActiveSync()V
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V

    .line 315
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->disconnectDun()V
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V

    goto/16 :goto_0

    .line 320
    .end local v3           #isDunConnected:Ljava/lang/String;
    :cond_10
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v6, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
