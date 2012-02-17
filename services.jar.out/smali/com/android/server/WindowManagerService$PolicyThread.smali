.class Lcom/android/server/WindowManagerService$PolicyThread;
.super Ljava/lang/Thread;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PolicyThread"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPM:Lcom/android/server/PowerManagerService;

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field mRunning:Z

.field private final mService:Lcom/android/server/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    .locals 1
    .parameter "policy"
    .parameter "service"
    .parameter "context"
    .parameter "pm"

    .prologue
    .line 624
    const-string v0, "WindowManagerPolicy"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mRunning:Z

    .line 625
    iput-object p1, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 626
    iput-object p2, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mService:Lcom/android/server/WindowManagerService;

    .line 627
    iput-object p3, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mContext:Landroid/content/Context;

    .line 628
    iput-object p4, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mPM:Lcom/android/server/PowerManagerService;

    .line 629
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 632
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 633
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/view/WindowManagerPolicyThread;->set(Ljava/lang/Thread;Landroid/os/Looper;)V

    .line 637
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 639
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 640
    iget-object v0, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mService:Lcom/android/server/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mPM:Lcom/android/server/PowerManagerService;

    invoke-interface {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicy;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/os/LocalPowerManager;)V

    .line 642
    monitor-enter p0

    .line 643
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mRunning:Z

    .line 644
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 645
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 648
    return-void

    .line 645
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
