.class Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UiCloningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ti/omap/omap_mm_library/UiCloningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiCloningBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;


# direct methods
.method private constructor <init>(Lcom/ti/omap/omap_mm_library/UiCloningService;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;->this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ti/omap/omap_mm_library/UiCloningService;Lcom/ti/omap/omap_mm_library/UiCloningService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;-><init>(Lcom/ti/omap/omap_mm_library/UiCloningService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 130
    iget-object v5, p0, Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;->this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;

    #getter for: Lcom/ti/omap/omap_mm_library/UiCloningService;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/ti/omap/omap_mm_library/UiCloningService;->access$200(Lcom/ti/omap/omap_mm_library/UiCloningService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UiCloningBroadcastReceiver intent !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-nez p2, :cond_1

    .line 132
    iget-object v5, p0, Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;->this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;

    #getter for: Lcom/ti/omap/omap_mm_library/UiCloningService;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/ti/omap/omap_mm_library/UiCloningService;->access$200(Lcom/ti/omap/omap_mm_library/UiCloningService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UiCloningBroadcastReceiver intent is NULL!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.HDMI_PLUG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 138
    const-string v5, "state"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 140
    .local v4, state:I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 141
    iget-object v5, p0, Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;->this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;

    #getter for: Lcom/ti/omap/omap_mm_library/UiCloningService;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/ti/omap/omap_mm_library/UiCloningService;->access$200(Lcom/ti/omap/omap_mm_library/UiCloningService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UiCloningBroadcastReceiver.onReceive() : Cloning UI to HDMI-TV"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v5, p0, Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;->this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;

    const/4 v6, 0x2

    #setter for: Lcom/ti/omap/omap_mm_library/UiCloningService;->mDisplayId:I
    invoke-static {v5, v6}, Lcom/ti/omap/omap_mm_library/UiCloningService;->access$302(Lcom/ti/omap/omap_mm_library/UiCloningService;I)I

    .line 148
    :goto_1
    iget-object v5, p0, Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;->this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;

    iget-object v6, p0, Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;->this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;

    #getter for: Lcom/ti/omap/omap_mm_library/UiCloningService;->mDisplayId:I
    invoke-static {v6}, Lcom/ti/omap/omap_mm_library/UiCloningService;->access$300(Lcom/ti/omap/omap_mm_library/UiCloningService;)I

    move-result v6

    iget-object v7, p0, Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;->this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;

    #getter for: Lcom/ti/omap/omap_mm_library/UiCloningService;->mRotation:I
    invoke-static {v7}, Lcom/ti/omap/omap_mm_library/UiCloningService;->access$400(Lcom/ti/omap/omap_mm_library/UiCloningService;)I

    move-result v7

    #calls: Lcom/ti/omap/omap_mm_library/UiCloningService;->CloneUiSetDisplay(II)V
    invoke-static {v5, v6, v7}, Lcom/ti/omap/omap_mm_library/UiCloningService;->access$500(Lcom/ti/omap/omap_mm_library/UiCloningService;II)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v5, p0, Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;->this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;

    #getter for: Lcom/ti/omap/omap_mm_library/UiCloningService;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/ti/omap/omap_mm_library/UiCloningService;->access$200(Lcom/ti/omap/omap_mm_library/UiCloningService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UiCloningBroadcastReceiver.onReceive() : Stopping UI on HDMI-TV"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v5, p0, Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;->this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;

    const/4 v6, -0x1

    #setter for: Lcom/ti/omap/omap_mm_library/UiCloningService;->mDisplayId:I
    invoke-static {v5, v6}, Lcom/ti/omap/omap_mm_library/UiCloningService;->access$302(Lcom/ti/omap/omap_mm_library/UiCloningService;I)I

    goto :goto_1

    .line 150
    .end local v4           #state:I
    :cond_3
    const-string v5, "android.intent.action.ACTION_TVOUT_SETTING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    const-string v5, "resolution"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 152
    .local v3, resolution:I
    const-string v5, "outputtype"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 153
    .local v2, outputType:I
    const-string v5, "displaycolor"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 155
    .local v1, displayColor:I
    iget-object v5, p0, Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;->this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;

    #getter for: Lcom/ti/omap/omap_mm_library/UiCloningService;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/ti/omap/omap_mm_library/UiCloningService;->access$200(Lcom/ti/omap/omap_mm_library/UiCloningService;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UiCloningBroadcastReceiver.onReceive() : resolution="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "outputType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v5, p0, Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;->this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;

    #calls: Lcom/ti/omap/omap_mm_library/UiCloningService;->TvOutPrefSetParameters(III)V
    invoke-static {v5, v3, v2, v1}, Lcom/ti/omap/omap_mm_library/UiCloningService;->access$600(Lcom/ti/omap/omap_mm_library/UiCloningService;III)V

    goto/16 :goto_0
.end method
