.class Lcom/android/server/EncryptService$4;
.super Landroid/content/BroadcastReceiver;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/server/EncryptService$4;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 500
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    invoke-static {}, Lcom/android/server/EncryptService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EncryptService"

    const-string v2, " receiver -> ACTION_BOOT_COMPLETED "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    new-instance v1, Lcom/android/server/EncryptService$4$1;

    invoke-direct {v1, p0}, Lcom/android/server/EncryptService$4$1;-><init>(Lcom/android/server/EncryptService$4;)V

    invoke-virtual {v1}, Lcom/android/server/EncryptService$4$1;->start()V

    .line 516
    :cond_1
    return-void
.end method
