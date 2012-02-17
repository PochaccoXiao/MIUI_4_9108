.class Lcom/broadcom/bt/app/settings/BluetoothEnableActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEnableActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 83
    .local v1, state:I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;

    invoke-virtual {v2}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->finish()V

    .line 88
    .end local v1           #state:I
    :cond_0
    return-void
.end method
