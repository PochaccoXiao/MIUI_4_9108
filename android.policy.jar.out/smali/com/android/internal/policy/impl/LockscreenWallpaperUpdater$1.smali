.class Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$1;
.super Landroid/os/Handler;
.source "LockscreenWallpaperUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$1;->this$0:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 87
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$1;->this$0:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->handleLockScreenWallpaperUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->access$000(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;I)V

    goto :goto_0

    .line 90
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$1;->this$0:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    #calls: Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->handleBootCompleted()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->access$100(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;)V

    goto :goto_0

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x136 -> :sswitch_0
        0x140 -> :sswitch_1
    .end sparse-switch
.end method
