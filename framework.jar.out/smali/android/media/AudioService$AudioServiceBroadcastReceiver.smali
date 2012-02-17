.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 2269
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2269
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 28
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2272
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 2275
    .local v4, action:Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, spkIndex:I
    const/4 v12, 0x0

    .line 2277
    .local v12, hphIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)[I

    move-result-object v26

    const/16 v27, 0x3

    aget v26, v26, v27

    aget-object v24, v25, v26

    .line 2278
    .local v24, streamStateForSpk:Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)[I

    move-result-object v26

    const/16 v27, 0xc

    aget v26, v26, v27

    aget-object v23, v25, v26

    .line 2279
    .local v23, streamStateForHph:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static/range {v24 .. v24}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v25

    if-eqz v25, :cond_1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static/range {v24 .. v24}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v25

    move/from16 v21, v25

    .line 2280
    :goto_0
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static/range {v23 .. v23}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v25

    if-eqz v25, :cond_2

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static/range {v23 .. v23}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v25

    move/from16 v12, v25

    .line 2284
    :goto_1
    const-string v25, "action=%s"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    const-string v25, "android.intent.action.DOCK_EVENT"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 2287
    const-string v25, "android.intent.extra.DOCK_STATE"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 2290
    .local v11, dockState:I
    packed-switch v11, :pswitch_data_0

    .line 2299
    const/4 v8, 0x0

    .line 2301
    .local v8, config:I
    :goto_2
    const/16 v25, 0x3

    move/from16 v0, v25

    move v1, v8

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 2606
    .end local v8           #config:I
    .end local v11           #dockState:I
    .end local p1
    :cond_0
    :goto_3
    const-wide/16 v25, 0x64

    invoke-static/range {v25 .. v26}, Landroid/os/SystemClock;->sleep(J)V

    .line 2607
    const-string v25, "audioParam;curDevice"

    invoke-static/range {v25 .. v25}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2614
    .local v15, isMusicHPH:Ljava/lang/String;
    const-string v25, "HPH"

    move-object v0, v15

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_23

    .line 2615
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v21

    move v3, v12

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;III)V

    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    const/16 v26, 0x9

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v21

    move v3, v12

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;III)V

    .line 2622
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/media/AudioService;->isRadioSpeakerOn()Z

    move-result v25

    if-eqz v25, :cond_24

    .line 2623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    const/16 v26, 0xa

    move-object/from16 v0, v25

    move/from16 v1, v26

    move v2, v12

    move/from16 v3, v21

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;III)V

    .line 2654
    :goto_5
    return-void

    .line 2279
    .end local v15           #isMusicHPH:Ljava/lang/String;
    .restart local p1
    :cond_1
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static/range {v24 .. v24}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v25

    move/from16 v21, v25

    goto/16 :goto_0

    .line 2280
    :cond_2
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static/range {v23 .. v23}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v25

    move/from16 v12, v25

    goto/16 :goto_1

    .line 2292
    .restart local v11       #dockState:I
    :pswitch_0
    const/4 v8, 0x7

    .line 2293
    .restart local v8       #config:I
    goto :goto_2

    .line 2295
    .end local v8           #config:I
    :pswitch_1
    const/4 v8, 0x6

    .line 2296
    .restart local v8       #config:I
    goto :goto_2

    .line 2302
    .end local v8           #config:I
    .end local v11           #dockState:I
    :cond_3
    const-string v25, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 2303
    const-string v25, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 2305
    .local v22, state:I
    const-string v25, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 2306
    .local v7, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 2307
    .local v5, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x80

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x80

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    const/16 v25, 0x1

    move/from16 v14, v25

    .line 2310
    .local v14, isConnected:Z
    :goto_6
    if-eqz v14, :cond_6

    const/16 v25, 0x2

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    const/16 v25, 0x4

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 2312
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 2313
    if-nez v22, :cond_0

    .line 2317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v5

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2307
    .end local v14           #isConnected:Z
    :cond_4
    const/16 v25, 0x0

    move/from16 v14, v25

    goto :goto_6

    .line 2321
    .restart local v14       #isConnected:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v5

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2323
    :cond_6
    if-nez v14, :cond_0

    const/16 v25, 0x2

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    const/16 v25, 0x4

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 2326
    :cond_7
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 2328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)V

    .line 2329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v5

    #setter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$5002(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 2338
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v5

    #calls: Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2333
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #calls: Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$5100(Landroid/media/AudioService;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 2334
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)V

    .line 2335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)Ljava/lang/String;

    move-result-object v26

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static/range {v25 .. v26}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_7

    .line 2340
    .end local v5           #address:Ljava/lang/String;
    .end local v7           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v14           #isConnected:Z
    .end local v22           #state:I
    .restart local p1
    :cond_a
    const-string v25, "android.bluetooth.headset.action.STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 2341
    const-string v25, "android.bluetooth.headset.extra.STATE"

    const/16 v26, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 2343
    .restart local v22       #state:I
    const/16 v10, 0x10

    .line 2344
    .local v10, device:I
    const-string v25, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 2345
    .restart local v7       #btDevice:Landroid/bluetooth/BluetoothDevice;
    const/4 v5, 0x0

    .line 2346
    .restart local v5       #address:Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 2347
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 2348
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v6

    .line 2349
    .local v6, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v6, :cond_b

    .line 2350
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v25

    sparse-switch v25, :sswitch_data_0

    .line 2362
    .end local v6           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    const/16 v25, 0x1

    move/from16 v14, v25

    .line 2365
    .restart local v14       #isConnected:Z
    :goto_9
    if-eqz v14, :cond_d

    const/16 v25, 0x2

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    .line 2366
    const/16 v25, 0x0

    move v0, v10

    move/from16 v1, v25

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static/range {v25 .. v26}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    .line 2371
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/media/AudioService;->clearAllScoClients()V

    goto/16 :goto_3

    .line 2353
    .end local v14           #isConnected:Z
    .restart local v6       #btClass:Landroid/bluetooth/BluetoothClass;
    .restart local p1
    :sswitch_0
    const/16 v10, 0x20

    .line 2354
    goto :goto_8

    .line 2356
    :sswitch_1
    const/16 v10, 0x40

    goto :goto_8

    .line 2362
    .end local v6           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local p1
    :cond_c
    const/16 v25, 0x0

    move/from16 v14, v25

    goto :goto_9

    .line 2372
    .restart local v14       #isConnected:Z
    :cond_d
    if-nez v14, :cond_0

    const/16 v25, 0x2

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 2373
    const/16 v25, 0x1

    move v0, v10

    move/from16 v1, v25

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    new-instance v26, Ljava/lang/Integer;

    move-object/from16 v0, v26

    move v1, v10

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static/range {v25 .. v26}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    goto/16 :goto_3

    .line 2379
    .end local v5           #address:Ljava/lang/String;
    .end local v7           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v10           #device:I
    .end local v14           #isConnected:Z
    .end local v22           #state:I
    .restart local p1
    :cond_e
    const-string v25, "android.intent.action.HEADSET_PLUG"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 2380
    const-string/jumbo v25, "state"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 2381
    .restart local v22       #state:I
    const-string/jumbo v25, "microphone"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2385
    .local v16, microphone:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 2386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mIsEarProtectLimitOn:Z
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$5300(Landroid/media/AudioService;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 2388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    const/16 v26, 0xc

    invoke-virtual/range {v25 .. v26}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v18

    .line 2389
    .local v18, musicLev:I
    const/16 v9, 0xa

    .line 2391
    .local v9, defaultMusicLev:I
    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 2392
    move/from16 v0, v18

    move v1, v9

    if-le v0, v1, :cond_f

    .line 2393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    const/16 v26, 0xc

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move v2, v9

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioService;->setStreamVolume(III)V

    .line 2394
    const-string v25, "AudioService"

    const-string v26, "HEADSET PLUG IN : set default volume "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    .end local v9           #defaultMusicLev:I
    .end local v18           #musicLev:I
    :cond_f
    if-eqz v16, :cond_11

    .line 2403
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 2404
    .restart local v14       #isConnected:Z
    if-nez v22, :cond_10

    if-eqz v14, :cond_10

    .line 2405
    const/16 v25, 0x4

    const/16 v26, 0x0

    const-string v27, ""

    invoke-static/range {v25 .. v27}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2408
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2409
    :cond_10
    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    if-nez v14, :cond_0

    .line 2410
    const/16 v25, 0x4

    const/16 v26, 0x1

    const-string v27, ""

    invoke-static/range {v25 .. v27}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    new-instance v26, Ljava/lang/Integer;

    const/16 v27, 0x4

    invoke-direct/range {v26 .. v27}, Ljava/lang/Integer;-><init>(I)V

    const-string v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2416
    .end local v14           #isConnected:Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x8

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 2417
    .restart local v14       #isConnected:Z
    if-nez v22, :cond_12

    if-eqz v14, :cond_12

    .line 2418
    const/16 v25, 0x8

    const/16 v26, 0x0

    const-string v27, ""

    invoke-static/range {v25 .. v27}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x8

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2422
    :cond_12
    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    if-nez v14, :cond_0

    .line 2423
    const/16 v25, 0x8

    const/16 v26, 0x1

    const-string v27, ""

    invoke-static/range {v25 .. v27}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2426
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    new-instance v26, Ljava/lang/Integer;

    const/16 v27, 0x8

    invoke-direct/range {v26 .. v27}, Ljava/lang/Integer;-><init>(I)V

    const-string v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2430
    .end local v14           #isConnected:Z
    .end local v16           #microphone:I
    .end local v22           #state:I
    :cond_13
    const-string v25, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 2431
    const-string v25, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/16 v26, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 2433
    .restart local v22       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v25

    monitor-enter v25

    .line 2434
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_14

    .line 2435
    packed-switch v22, :pswitch_data_1

    .line 2443
    const/16 v22, -0x1

    .line 2446
    :goto_a
    const/16 v26, -0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_14

    .line 2447
    new-instance v19, Landroid/content/Intent;

    const-string v26, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2448
    .local v19, newIntent:Landroid/content/Intent;
    const-string v26, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2449
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2452
    .end local v19           #newIntent:Landroid/content/Intent;
    :cond_14
    monitor-exit v25

    goto/16 :goto_3

    :catchall_0
    move-exception v26

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v26

    .line 2437
    :pswitch_2
    const/16 v22, 0x1

    .line 2438
    goto :goto_a

    .line 2440
    :pswitch_3
    const/16 v22, 0x0

    .line 2441
    goto :goto_a

    .line 2454
    .end local v22           #state:I
    :cond_15
    const-string v25, "android.intent.action.HDMI_PLUG"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 2455
    const-string/jumbo v25, "state"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 2457
    .restart local v22       #state:I
    const-string v25, "AudioService"

    const-string v26, "ACTION_HDMI_PLUG receive !!!  : "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x2000

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 2460
    .restart local v14       #isConnected:Z
    if-nez v22, :cond_16

    if-eqz v14, :cond_16

    .line 2461
    const-string v25, "AudioService"

    const-string v26, "ACTION_HDMI_PLUG - disconnected "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    const/16 v25, 0x2000

    const/16 v26, 0x0

    const-string v27, ""

    invoke-static/range {v25 .. v27}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x2000

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2466
    :cond_16
    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    if-nez v14, :cond_0

    .line 2467
    const-string v25, "AudioService"

    const-string v26, "ACTION_HDMI_PLUG - connected "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    const/16 v25, 0x2000

    const/16 v26, 0x1

    const-string v27, ""

    invoke-static/range {v25 .. v27}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    new-instance v26, Ljava/lang/Integer;

    const/16 v27, 0x2000

    invoke-direct/range {v26 .. v27}, Ljava/lang/Integer;-><init>(I)V

    const-string v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2474
    .end local v14           #isConnected:Z
    .end local v22           #state:I
    :cond_17
    const-string v25, "HDMI_CONNECTED"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 2475
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x2000

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 2476
    .restart local v14       #isConnected:Z
    if-nez v14, :cond_0

    .line 2477
    const-string v25, "AudioService"

    const-string v26, "HDMI CONNECTED"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    const/16 v25, 0x2000

    const/16 v26, 0x1

    const-string v27, ""

    invoke-static/range {v25 .. v27}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2480
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    new-instance v26, Ljava/lang/Integer;

    const/16 v27, 0x2000

    invoke-direct/range {v26 .. v27}, Ljava/lang/Integer;-><init>(I)V

    const-string v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2483
    .end local v14           #isConnected:Z
    :cond_18
    const-string v25, "HDMI_DISCONNECTED"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 2484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x2000

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 2485
    .restart local v14       #isConnected:Z
    if-eqz v14, :cond_0

    .line 2486
    const-string v25, "AudioService"

    const-string v26, "HDMI DISCONNECTED"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    const/16 v25, 0x2000

    const/16 v26, 0x0

    const-string v27, ""

    invoke-static/range {v25 .. v27}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2489
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x2000

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2492
    .end local v14           #isConnected:Z
    :cond_19
    const-string v25, "android.intent.action.TVOUT_PLUG"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1b

    .line 2493
    const-string/jumbo v25, "state"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 2494
    .restart local v22       #state:I
    const-string v25, "AudioService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "TVOUT_PLUG evt state : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x800

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 2497
    .restart local v14       #isConnected:Z
    if-nez v22, :cond_1a

    if-eqz v14, :cond_1a

    .line 2498
    const/16 v25, 0x800

    const/16 v26, 0x0

    const-string v27, ""

    invoke-static/range {v25 .. v27}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2501
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x800

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2502
    :cond_1a
    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    if-nez v14, :cond_0

    .line 2503
    const/16 v25, 0x800

    const/16 v26, 0x1

    const-string v27, ""

    invoke-static/range {v25 .. v27}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    new-instance v26, Ljava/lang/Integer;

    const/16 v27, 0x800

    invoke-direct/range {v26 .. v27}, Ljava/lang/Integer;-><init>(I)V

    const-string v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2509
    .end local v14           #isConnected:Z
    .end local v22           #state:I
    :cond_1b
    const-string v25, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 2510
    const-string/jumbo v25, "state"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 2511
    .restart local v22       #state:I
    const-string v25, "AudioService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "EXTRA_DOCK_SPEAKER evt state : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x1000

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 2514
    .restart local v14       #isConnected:Z
    if-nez v22, :cond_1c

    if-eqz v14, :cond_1c

    .line 2515
    const/16 v25, 0x1000

    const/16 v26, 0x0

    const-string v27, ""

    invoke-static/range {v25 .. v27}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2518
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    const/16 v26, 0x1000

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2519
    :cond_1c
    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    if-nez v14, :cond_0

    .line 2520
    const/16 v25, 0x1000

    const/16 v26, 0x1

    const-string v27, ""

    invoke-static/range {v25 .. v27}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v25

    new-instance v26, Ljava/lang/Integer;

    const/16 v27, 0x1000

    invoke-direct/range {v26 .. v27}, Ljava/lang/Integer;-><init>(I)V

    const-string v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2528
    .end local v14           #isConnected:Z
    .end local v22           #state:I
    :cond_1d
    const-string v25, "android.intent.action.BOOT_COMPLETED"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_21

    .line 2529
    const-string/jumbo v25, "ro.csc.sales_code"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2530
    .local v20, salescode:Ljava/lang/String;
    if-nez v20, :cond_1f

    .line 2531
    const-string v25, "AudioService"

    const-string v26, "can not get salescode"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    :cond_1e
    :goto_b
    const-string v25, "AudioService"

    const-string v26, "android.intent.action.BOOT_COMPLETED: BOOT_COMPLETED"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2533
    :cond_1f
    const/4 v13, 0x0

    .local v13, i:I
    :goto_c
    invoke-static {}, Landroid/media/AudioService;->access$5400()[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move v0, v13

    move/from16 v1, v25

    if-ge v0, v1, :cond_1e

    .line 2534
    invoke-static {}, Landroid/media/AudioService;->access$5400()[Ljava/lang/String;

    move-result-object v25

    aget-object v25, v25, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_20

    .line 2536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #setter for: Landroid/media/AudioService;->mIsEarProtectLimitOn:Z
    invoke-static/range {v25 .. v26}, Landroid/media/AudioService;->access$5302(Landroid/media/AudioService;Z)Z

    goto :goto_b

    .line 2533
    :cond_20
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 2545
    .end local v13           #i:I
    .end local v20           #salescode:Ljava/lang/String;
    :cond_21
    const-string v25, "com.android.music.musicservicecommand"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_22

    .line 2546
    const-string v25, "AudioService"

    const-string/jumbo v26, "musicservicecommand"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2563
    :cond_22
    const-string v25, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 2600
    const-string v25, "android.settings.MONO_AUDIO_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 2601
    const-string/jumbo v25, "mono"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 2602
    .local v17, monoMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    #setter for: Landroid/media/AudioService;->mMonoMode:I
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4202(Landroid/media/AudioService;I)I

    .line 2603
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    #calls: Landroid/media/AudioService;->setMonoMode(I)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;I)V

    goto/16 :goto_3

    .line 2618
    .end local v17           #monoMode:I
    .end local p1
    .restart local v15       #isMusicHPH:Ljava/lang/String;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v26

    move v2, v12

    move/from16 v3, v21

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;III)V

    .line 2619
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    const/16 v26, 0x9

    move-object/from16 v0, v25

    move/from16 v1, v26

    move v2, v12

    move/from16 v3, v21

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;III)V

    goto/16 :goto_4

    .line 2625
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v25, v0

    const/16 v26, 0xa

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v21

    move v3, v12

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;III)V

    goto/16 :goto_5

    .line 2290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2350
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 2435
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
