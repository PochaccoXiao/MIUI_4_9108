.class Landroid/webkit/WebView$2;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1142
    iput-object p1, p0, Landroid/webkit/WebView$2;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1145
    if-eqz p1, :cond_0

    .line 1146
    iget-object v0, p0, Landroid/webkit/WebView$2;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1148
    iget-object v0, p0, Landroid/webkit/WebView$2;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;
    invoke-static {v0}, Landroid/webkit/WebView;->access$100(Landroid/webkit/WebView;)Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    iget-object v0, p0, Landroid/webkit/WebView$2;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Landroid/webkit/WebView;->access$200(Landroid/webkit/WebView;)V

    .line 1152
    :cond_0
    return-void
.end method

.method public onZoom(Z)V
    .locals 1
    .parameter "zoomIn"

    .prologue
    .line 1155
    if-eqz p1, :cond_0

    .line 1156
    iget-object v0, p0, Landroid/webkit/WebView$2;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    .line 1161
    :goto_0
    iget-object v0, p0, Landroid/webkit/WebView$2;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Landroid/webkit/WebView;->access$200(Landroid/webkit/WebView;)V

    .line 1162
    return-void

    .line 1158
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$2;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    goto :goto_0
.end method
