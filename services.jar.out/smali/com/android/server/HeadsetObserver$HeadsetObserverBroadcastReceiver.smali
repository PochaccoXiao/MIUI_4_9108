.class Lcom/android/server/HeadsetObserver$HeadsetObserverBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HeadsetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetObserverBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HeadsetObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/HeadsetObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/server/HeadsetObserver$HeadsetObserverBroadcastReceiver;->this$0:Lcom/android/server/HeadsetObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.HDMI_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/server/HeadsetObserver$HeadsetObserverBroadcastReceiver;->this$0:Lcom/android/server/HeadsetObserver;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/server/HeadsetObserver;->mHDMIState:I
    invoke-static {v1, v2}, Lcom/android/server/HeadsetObserver;->access$202(Lcom/android/server/HeadsetObserver;I)I

    .line 242
    :cond_0
    return-void
.end method
