.class Lcom/android/server/TvoutStatusObserver$2;
.super Landroid/os/Handler;
.source "TvoutStatusObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvoutStatusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutStatusObserver;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutStatusObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/server/TvoutStatusObserver$2;->this$0:Lcom/android/server/TvoutStatusObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/server/TvoutStatusObserver$2;->this$0:Lcom/android/server/TvoutStatusObserver;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/server/TvoutStatusObserver;->sendIntents(IILjava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/TvoutStatusObserver;->access$300(Lcom/android/server/TvoutStatusObserver;IILjava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/TvoutStatusObserver$2;->this$0:Lcom/android/server/TvoutStatusObserver;

    #getter for: Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/TvoutStatusObserver;->access$400(Lcom/android/server/TvoutStatusObserver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 228
    invoke-static {}, Lcom/android/server/TvoutStatusObserver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " HDMI : Release LCD Turn on control "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method
