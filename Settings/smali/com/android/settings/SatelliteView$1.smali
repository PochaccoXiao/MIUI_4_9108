.class Lcom/android/settings/SatelliteView$1;
.super Ljava/util/TimerTask;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SatelliteView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SatelliteView;


# direct methods
.method constructor <init>(Lcom/android/settings/SatelliteView;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings/SatelliteView$1;->this$0:Lcom/android/settings/SatelliteView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/settings/SatelliteView$1;->this$0:Lcom/android/settings/SatelliteView;

    invoke-virtual {v1}, Lcom/android/settings/SatelliteView;->showSVStatus()V

    .line 231
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 232
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 233
    iget-object v1, p0, Lcom/android/settings/SatelliteView$1;->this$0:Lcom/android/settings/SatelliteView;

    iget-object v1, v1, Lcom/android/settings/SatelliteView;->mHandler:Lcom/android/settings/SatelliteView$setHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/SatelliteView$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 234
    return-void
.end method
