.class Lcom/android/server/TvoutStatusObserver$1;
.super Landroid/os/UEventObserver;
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
    .line 83
    iput-object p1, p0, Lcom/android/server/TvoutStatusObserver$1;->this$0:Lcom/android/server/TvoutStatusObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const-string/jumbo v3, "persist.sys.HDMICableConnected"

    .line 86
    invoke-static {}, Lcom/android/server/TvoutStatusObserver;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HDMI UEVENT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_0
    const-string v3, "ACTION"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, action:Ljava/lang/String;
    const-string v3, "add"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    const-string/jumbo v3, "persist.sys.HDMICableConnected"

    const-string/jumbo v4, "yes"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v2, 0x1

    .line 103
    .local v2, state:I
    :goto_0
    invoke-static {}, Lcom/android/server/TvoutStatusObserver;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hdmi cable connected? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "persist.sys.HDMICableConnected"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v3, p0, Lcom/android/server/TvoutStatusObserver$1;->this$0:Lcom/android/server/TvoutStatusObserver;

    const-string v4, "hdmi"

    #calls: Lcom/android/server/TvoutStatusObserver;->update(Ljava/lang/String;I)V
    invoke-static {v3, v4, v2}, Lcom/android/server/TvoutStatusObserver;->access$200(Lcom/android/server/TvoutStatusObserver;Ljava/lang/String;I)V

    .line 109
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #state:I
    :goto_1
    return-void

    .line 95
    .restart local v0       #action:Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "remove"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    const-string/jumbo v3, "persist.sys.HDMICableConnected"

    const-string/jumbo v4, "no"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v2, 0x0

    .restart local v2       #state:I
    goto :goto_0

    .line 99
    .end local v2           #state:I
    :cond_1
    invoke-static {}, Lcom/android/server/TvoutStatusObserver;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown HDMI UEvent action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v3, p0, Lcom/android/server/TvoutStatusObserver$1;->this$0:Lcom/android/server/TvoutStatusObserver;

    #getter for: Lcom/android/server/TvoutStatusObserver;->mHDMIState:I
    invoke-static {v3}, Lcom/android/server/TvoutStatusObserver;->access$100(Lcom/android/server/TvoutStatusObserver;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .restart local v2       #state:I
    goto :goto_0

    .line 106
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #state:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 107
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/TvoutStatusObserver;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse switch state from event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
