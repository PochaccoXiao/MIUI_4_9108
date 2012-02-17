.class Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1;
.super Landroid/content/BroadcastReceiver;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1;->this$0:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 523
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 525
    .local v0, timezoneChanged:Z
    move-object v1, p2

    .line 526
    .local v1, tmpIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1;->this$0:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    #getter for: Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->access$200(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_0

    .line 539
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1;->this$0:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    #getter for: Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->access$200(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1$1;-><init>(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1;ZLandroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
