.class final Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$1;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/webkit/WebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$000()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 136
    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$002(Ljava/util/Timer;)Ljava/util/Timer;

    .line 137
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$100()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$100()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 140
    :cond_0
    sget-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    if-eqz v0, :cond_2

    .line 141
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    .line 146
    :goto_0
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->showAll()V

    .line 148
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 149
    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$202(Landroid/webkit/HTML5VideoViewProxy;)Landroid/webkit/HTML5VideoViewProxy;

    .line 150
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$300()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$100()Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 151
    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$102(Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 152
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$300()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 154
    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$402(Landroid/view/View;)Landroid/view/View;

    .line 156
    :cond_1
    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$302(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 157
    return-void

    .line 143
    :cond_2
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    goto :goto_0
.end method
