.class Lcom/android/server/FMRadioService$7;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentVolume:J

.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 2
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 349
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/FMRadioService$7;->currentVolume:J

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0xc8

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHandler(g.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 353
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$000(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-wide v0, p0, Lcom/android/server/FMRadioService$7;->currentVolume:J

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mCurrentResumeVol:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1200(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 356
    iget-wide v0, p0, Lcom/android/server/FMRadioService$7;->currentVolume:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/FMRadioService$7;->currentVolume:J

    .line 357
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-wide v1, p0, Lcom/android/server/FMRadioService$7;->currentVolume:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 358
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    const-wide/16 v1, 0x64

    #calls: Lcom/android/server/FMRadioService;->queueUpdate(IJ)V
    invoke-static {v0, v4, v1, v2}, Lcom/android/server/FMRadioService;->access$1400(Lcom/android/server/FMRadioService;IJ)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mResumeVol:J
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$1100(Lcom/android/server/FMRadioService;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/FMRadioService$7;->currentVolume:J

    .line 361
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-wide v1, p0, Lcom/android/server/FMRadioService$7;->currentVolume:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 362
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/FMRadioService$7;->currentVolume:J

    goto :goto_0
.end method
