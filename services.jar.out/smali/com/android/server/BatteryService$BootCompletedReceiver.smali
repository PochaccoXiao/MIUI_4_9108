.class final Lcom/android/server/BatteryService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$BootCompletedReceiver;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 159
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bootCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/BatteryService;->mBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$102(Lcom/android/server/BatteryService;Z)Z

    .line 161
    iget-object v0, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    #setter for: Lcom/android/server/BatteryService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$202(Lcom/android/server/BatteryService;Landroid/os/Vibrator;)Landroid/os/Vibrator;

    .line 163
    iget-object v0, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    #calls: Lcom/android/server/BatteryService;->notifyIfPowerSavingMode()V
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)V

    .line 164
    return-void
.end method
