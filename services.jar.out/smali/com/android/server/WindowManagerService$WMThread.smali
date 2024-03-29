.class Lcom/android/server/WindowManagerService$WMThread;
.super Ljava/lang/Thread;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WMThread"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHaveInputMethods:Z

.field private final mPM:Lcom/android/server/PowerManagerService;

.field mService:Lcom/android/server/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V
    .locals 1
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"

    .prologue
    .line 591
    const-string v0, "WindowManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 592
    iput-object p1, p0, Lcom/android/server/WindowManagerService$WMThread;->mContext:Landroid/content/Context;

    .line 593
    iput-object p2, p0, Lcom/android/server/WindowManagerService$WMThread;->mPM:Lcom/android/server/PowerManagerService;

    .line 594
    iput-boolean p3, p0, Lcom/android/server/WindowManagerService$WMThread;->mHaveInputMethods:Z

    .line 595
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 598
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 599
    new-instance v0, Lcom/android/server/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WMThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WMThread;->mPM:Lcom/android/server/PowerManagerService;

    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$WMThread;->mHaveInputMethods:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZLcom/android/server/WindowManagerService$1;)V

    .line 601
    .local v0, s:Lcom/android/server/WindowManagerService;
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 603
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 605
    monitor-enter p0

    .line 606
    :try_start_0
    iput-object v0, p0, Lcom/android/server/WindowManagerService$WMThread;->mService:Lcom/android/server/WindowManagerService;

    .line 607
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 608
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 611
    return-void

    .line 608
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
