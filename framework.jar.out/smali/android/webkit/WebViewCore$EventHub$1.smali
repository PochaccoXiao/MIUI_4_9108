.class Landroid/webkit/WebViewCore$EventHub$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewCore$EventHub;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$EventHub;)V
    .locals 0
    .parameter

    .prologue
    .line 1181
    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 77
    .parameter "msg"

    .prologue
    .line 1184
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    if-eqz v5, :cond_1

    .line 1185
    const-string/jumbo v5, "webcore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/16 v8, 0x61

    if-lt v7, v8, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/16 v8, 0x92

    if-le v7, v8, :cond_3

    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " arg1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " arg2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " obj="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    sparse-switch v5, :sswitch_data_0

    .line 2017
    .end local p0
    .end local p1
    :cond_2
    :goto_1
    return-void

    .line 1185
    .restart local p0
    .restart local p1
    :cond_3
    sget-object v7, Landroid/webkit/WebViewCore;->HandlerDebugString:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v8, v0

    const/16 v9, 0x61

    sub-int/2addr v8, v9

    aget-object v7, v7, v8

    goto :goto_0

    .line 1195
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->webkitDraw()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)V

    goto :goto_1

    .line 1201
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    monitor-enter v5

    .line 1202
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v6}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/BrowserFrame;->destroy()V

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore;->access$702(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;
    invoke-static {v6}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->onDestroyed()V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore;->access$902(Landroid/webkit/WebViewCore;I)I

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore;->access$1002(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 1207
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1211
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1212
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v60, v0

    .line 1213
    .local v60, nodePointer:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v60

    #calls: Landroid/webkit/WebViewCore;->nativeRequestLabel(II)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v55

    .line 1215
    .local v55, label:Ljava/lang/String;
    if-eqz v55, :cond_2

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x7d

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v60

    move v3, v7

    move-object/from16 v4, v55

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1224
    .end local v55           #label:Ljava/lang/String;
    .end local v60           #nodePointer:I
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCacheIfLoading()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1228
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeScrollFocusedTextInput(FI)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;FI)V

    goto/16 :goto_1

    .line 1237
    .restart local p0
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/webkit/WebViewCore$GetUrlData;

    .line 1238
    .local v61, param:Landroid/webkit/WebViewCore$GetUrlData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    move-object v7, v0

    #calls: Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1243
    .end local v61           #param:Landroid/webkit/WebViewCore$GetUrlData;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/webkit/WebViewCore$PostUrlData;

    .line 1244
    .local v61, param:Landroid/webkit/WebViewCore$PostUrlData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/BrowserFrame;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 1248
    .end local v61           #param:Landroid/webkit/WebViewCore$PostUrlData;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Landroid/webkit/WebViewCore$BaseUrlData;

    .line 1249
    .local v56, loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    move-object v6, v0

    .line 1250
    .local v6, baseUrl:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 1251
    const/16 v5, 0x3a

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v49

    .line 1252
    .local v49, i:I
    if-lez v49, :cond_4

    .line 1263
    const/4 v5, 0x0

    move-object v0, v6

    move v1, v5

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v70

    .line 1264
    .local v70, scheme:Ljava/lang/String;
    const-string v5, "http"

    move-object/from16 v0, v70

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ftp"

    move-object/from16 v0, v70

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "about"

    move-object/from16 v0, v70

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "javascript"

    move-object/from16 v0, v70

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move-object/from16 v1, v70

    #calls: Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    .line 1272
    .end local v49           #i:I
    .end local v70           #scheme:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    move-object v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1284
    .end local v6           #baseUrl:Ljava/lang/String;
    .end local v56           #loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 1289
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->stopLoading()V

    goto/16 :goto_1

    .line 1297
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_1

    .line 1301
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    #calls: Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_1

    .line 1305
    .restart local p0
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    #calls: Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_1

    .line 1313
    .restart local p0
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeClick(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1700(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1317
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebView$ViewSizeData;

    .line 1319
    .local v41, data:Landroid/webkit/WebView$ViewSizeData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    move v8, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    move v9, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    move v10, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    move v11, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    move v12, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    move v13, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    move v14, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/webkit/WebView$ViewSizeData;->mNeedAnchorDiff:Z

    move v15, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mViewportLeft:I

    move/from16 v16, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mViewportTop:I

    move/from16 v17, v0

    #calls: Landroid/webkit/WebViewCore;->viewSizeChanged(IIIFIIZZII)V
    invoke-static/range {v7 .. v17}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;IIIFIIZZII)V

    goto/16 :goto_1

    .line 1331
    .end local v41           #data:Landroid/webkit/WebView$ViewSizeData;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebView$PluginUpdateData;

    .line 1334
    .local v41, data:Landroid/webkit/WebView$PluginUpdateData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mMode:I

    move v8, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mViewLeft:I

    move v9, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mViewTop:I

    move v10, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mViewRight:I

    move v11, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mViewBottom:I

    move v12, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mScale:F

    move v13, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mAnchorX:I

    move v14, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mAnchorY:I

    move v15, v0

    #calls: Landroid/webkit/WebViewCore;->nativeUpdatePlugins(IIIIIFII)V
    invoke-static/range {v7 .. v15}, Landroid/webkit/WebViewCore;->access$1900(Landroid/webkit/WebViewCore;IIIIIFII)V

    goto/16 :goto_1

    .line 1342
    .end local v41           #data:Landroid/webkit/WebView$PluginUpdateData;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/graphics/Point;

    .line 1343
    .local v63, pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v7, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v8, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSetScrollOffset(III)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$2000(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_1

    .line 1347
    .end local v63           #pt:Landroid/graphics/Point;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v64, v0

    check-cast v64, Landroid/graphics/Rect;

    .line 1348
    .local v64, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v64

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    invoke-virtual/range {v64 .. v64}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v64 .. v64}, Landroid/graphics/Rect;->height()I

    move-result v9

    #calls: Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$2100(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_1

    .line 1355
    .end local v64           #r:Landroid/graphics/Rect;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->loadType()I

    move-result v5

    if-nez v5, :cond_6

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_1

    .line 1366
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/BrowserFrame;->goBackOrForward(I)V

    goto/16 :goto_1

    .line 1371
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->stopLoading()V

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->restoreState(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1376
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v6}, Landroid/webkit/WebViewCore$EventHub;->access$2400(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v6

    #setter for: Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore$EventHub;->access$2302(Landroid/webkit/WebViewCore$EventHub;I)I

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v5}, Landroid/webkit/WebViewCore$EventHub;->access$2400(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1379
    invoke-static {}, Landroid/webkit/WebViewCore;->pauseTimers()V

    .line 1380
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v5

    const/16 v6, 0x6f

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1385
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mTid:I
    invoke-static {v5}, Landroid/webkit/WebViewCore$EventHub;->access$2400(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v6}, Landroid/webkit/WebViewCore$EventHub;->access$2300(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1386
    invoke-static {}, Landroid/webkit/WebViewCore;->resumeTimers()V

    .line 1387
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v5

    const/16 v6, 0x70

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1392
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativePause()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2500(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1396
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeResume()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2600(Landroid/webkit/WebViewCore;)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1405
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$2800(Landroid/webkit/WebViewCore;Z)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeFreeMemory()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2900(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1412
    :sswitch_18
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELKEY_SIML_FOR_COUNT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSimulateDelKeyForCount(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$3000(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1418
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkit/WebView$ResultTransport;

    .line 1419
    .local v26, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v62

    .line 1420
    .local v62, params:[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object p1, v62, v5

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 1421
    .local v38, count:I
    const/4 v5, 0x1

    aget-object p1, v62, v5

    check-cast p1, Landroid/webkit/WebView$CursorDirection;

    sget-object v5, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    move-object/from16 v0, p1

    move-object v1, v5

    if-ne v0, v1, :cond_7

    const/4 v5, 0x1

    move/from16 v51, v5

    .line 1422
    .local v51, isBefore:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move/from16 v1, v38

    move/from16 v2, v51

    #calls: Landroid/webkit/WebViewCore;->nativeGetTextAroundCursor(IZ)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$3100(Landroid/webkit/WebViewCore;IZ)Ljava/lang/String;

    move-result-object v72

    .line 1424
    .local v72, str:Ljava/lang/String;
    monitor-enter v26

    .line 1426
    :try_start_1
    move-object/from16 v0, v26

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1427
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 1429
    monitor-exit v26

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    .line 1421
    .end local v51           #isBefore:Z
    .end local v72           #str:Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    move/from16 v51, v5

    goto :goto_2

    .line 1436
    .end local v26           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v38           #count:I
    .end local v62           #params:[Ljava/lang/Object;
    .restart local p1
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeDeleteSurroundingText(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$3200(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1441
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/webkit/WebView$ResultTransport;

    .line 1445
    .local v21, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetSelectionOffset()Landroid/graphics/Point;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3300(Landroid/webkit/WebViewCore;)Landroid/graphics/Point;

    move-result-object v68

    .line 1447
    .local v68, result:Landroid/graphics/Point;
    monitor-enter v21

    .line 1449
    :try_start_2
    move-object/from16 v0, v21

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1450
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notify()V

    .line 1452
    monitor-exit v21

    goto/16 :goto_1

    :catchall_2
    move-exception v5

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v5

    .line 1458
    .end local v21           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    .end local v68           #result:Landroid/graphics/Point;
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkit/WebView$ResultTransport;

    .line 1459
    .restart local v26       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetBodyText()Ljava/lang/String;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3400(Landroid/webkit/WebViewCore;)Ljava/lang/String;

    move-result-object v72

    .line 1461
    .restart local v72       #str:Ljava/lang/String;
    monitor-enter v26

    .line 1463
    :try_start_3
    move-object/from16 v0, v26

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1464
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 1466
    monitor-exit v26

    goto/16 :goto_1

    :catchall_3
    move-exception v5

    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v5

    .line 1472
    .end local v26           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v72           #str:Ljava/lang/String;
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkit/WebView$ResultTransport;

    .line 1473
    .restart local v26       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetBodyHTML()Ljava/lang/String;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3500(Landroid/webkit/WebViewCore;)Ljava/lang/String;

    move-result-object v72

    .line 1475
    .restart local v72       #str:Ljava/lang/String;
    monitor-enter v26

    .line 1477
    :try_start_4
    move-object/from16 v0, v26

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1478
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 1480
    monitor-exit v26

    goto/16 :goto_1

    :catchall_4
    move-exception v5

    monitor-exit v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v5

    .line 1485
    .end local v26           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v72           #str:Ljava/lang/String;
    :sswitch_1e
    const/16 v52, 0x0

    .line 1486
    .local v52, isBodyEmpty:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkit/WebView$ResultTransport;

    .line 1487
    .local v24, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetBodyEmpty()Z
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3600(Landroid/webkit/WebViewCore;)Z

    move-result v52

    .line 1489
    monitor-enter v24

    .line 1491
    :try_start_5
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1492
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 1494
    monitor-exit v24

    goto/16 :goto_1

    :catchall_5
    move-exception v5

    monitor-exit v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v5

    .line 1499
    .end local v24           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v52           #isBodyEmpty:Z
    :sswitch_1f
    const/16 v71, -0x1

    .line 1500
    .local v71, selectedType:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkit/WebView$ResultTransport;

    .line 1501
    .local v25, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeContentSelectionType()I
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3700(Landroid/webkit/WebViewCore;)I

    move-result v71

    .line 1503
    monitor-enter v25

    .line 1505
    :try_start_6
    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1506
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notify()V

    .line 1508
    monitor-exit v25

    goto/16 :goto_1

    :catchall_6
    move-exception v5

    monitor-exit v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v5

    .line 1515
    .end local v25           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v71           #selectedType:I
    :sswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/webkit/WebView$ResultTransport;

    .line 1516
    .local v22, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/webkit/WebView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v62

    .line 1517
    .restart local v62       #params:[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v46, v62, v5

    check-cast v46, Ljava/lang/Boolean;

    .line 1518
    .local v46, giveContentRect:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    #calls: Landroid/webkit/WebViewCore;->nativeGetCursorRect(Z)Landroid/graphics/Rect;
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$3800(Landroid/webkit/WebViewCore;Z)Landroid/graphics/Rect;

    move-result-object v40

    .line 1520
    .local v40, cursurRect:Landroid/graphics/Rect;
    monitor-enter v22

    .line 1522
    :try_start_7
    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1523
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notify()V

    .line 1525
    monitor-exit v22

    goto/16 :goto_1

    :catchall_7
    move-exception v5

    monitor-exit v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v5

    .line 1532
    .end local v22           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    .end local v40           #cursurRect:Landroid/graphics/Rect;
    .end local v46           #giveContentRect:Ljava/lang/Boolean;
    .end local v62           #params:[Ljava/lang/Object;
    :sswitch_21
    const/16 v53, 0x0

    .line 1533
    .local v53, isCommandSuces:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/webkit/WebView$CmdVal;

    .line 1534
    .local v37, cmdVal:Landroid/webkit/WebView$CmdVal;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/webkit/WebView$CmdVal;->command:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/webkit/WebView$CmdVal;->value:Ljava/lang/String;

    move-object v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeExecCommand(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$3900(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v53

    .line 1535
    monitor-enter v37

    .line 1537
    :try_start_8
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notify()V

    .line 1539
    monitor-exit v37

    goto/16 :goto_1

    :catchall_8
    move-exception v5

    monitor-exit v37
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v5

    .line 1544
    .end local v37           #cmdVal:Landroid/webkit/WebView$CmdVal;
    .end local v53           #isCommandSuces:Z
    :sswitch_22
    const/16 v31, 0x0

    .line 1545
    .local v31, canUndo:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkit/WebView$ResultTransport;

    .line 1546
    .restart local v24       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCanUndo()Z
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4000(Landroid/webkit/WebViewCore;)Z

    move-result v31

    .line 1547
    monitor-enter v24

    .line 1549
    :try_start_9
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1550
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 1552
    monitor-exit v24

    goto/16 :goto_1

    :catchall_9
    move-exception v5

    monitor-exit v24
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v5

    .line 1558
    .end local v24           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v31           #canUndo:Z
    :sswitch_23
    const/16 v30, 0x0

    .line 1559
    .local v30, canRedo:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkit/WebView$ResultTransport;

    .line 1560
    .restart local v24       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCanRedo()Z
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4100(Landroid/webkit/WebViewCore;)Z

    move-result v30

    .line 1561
    monitor-enter v24

    .line 1563
    :try_start_a
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1564
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 1566
    monitor-exit v24

    goto/16 :goto_1

    :catchall_a
    move-exception v5

    monitor-exit v24
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v5

    .line 1570
    .end local v24           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v30           #canRedo:Z
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUndoRedoStateReset()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1576
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Ljava/lang/String;

    .line 1577
    .local v76, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move-object/from16 v1, v76

    #calls: Landroid/webkit/WebViewCore;->nativeCopyAndSaveImage(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$4300(Landroid/webkit/WebViewCore;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1582
    .end local v76           #url:Ljava/lang/String;
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x4

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1586
    :sswitch_27
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/webkit/WebView$ResultTransport;

    .line 1587
    .local v23, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeGetFullMarkupData()Landroid/webkit/WebHTMLMarkupData;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4500(Landroid/webkit/WebViewCore;)Landroid/webkit/WebHTMLMarkupData;

    move-result-object v72

    .line 1589
    .local v72, str:Landroid/webkit/WebHTMLMarkupData;
    monitor-enter v23

    .line 1591
    :try_start_b
    move-object/from16 v0, v23

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1592
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notify()V

    .line 1594
    monitor-exit v23

    goto/16 :goto_1

    :catchall_b
    move-exception v5

    monitor-exit v23
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v5

    .line 1599
    .end local v23           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    .end local v72           #str:Landroid/webkit/WebHTMLMarkupData;
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    const/4 v6, 0x1

    :goto_3
    #calls: Landroid/webkit/WebViewCore;->nativeSetEditable(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4600(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 1603
    :sswitch_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v65, v0

    check-cast v65, Landroid/graphics/Point;

    .line 1604
    .local v65, recTwoIntObj:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSetSelectionEditable(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$4700(Landroid/webkit/WebViewCore;II)V

    .line 1605
    monitor-enter v65

    .line 1607
    :try_start_c
    invoke-virtual/range {v65 .. v65}, Ljava/lang/Object;->notify()V

    .line 1609
    monitor-exit v65

    goto/16 :goto_1

    :catchall_c
    move-exception v5

    monitor-exit v65
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v5

    .line 1617
    .end local v65           #recTwoIntObj:Landroid/graphics/Point;
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeMoveSingleCursorHandler(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$4800(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1622
    :sswitch_2b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v65, v0

    check-cast v65, Landroid/graphics/Point;

    .line 1623
    .restart local v65       #recTwoIntObj:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSetComposingRegion(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$4900(Landroid/webkit/WebViewCore;II)V

    .line 1624
    monitor-enter v65

    .line 1626
    :try_start_d
    invoke-virtual/range {v65 .. v65}, Ljava/lang/Object;->notify()V

    .line 1628
    monitor-exit v65

    goto/16 :goto_1

    :catchall_d
    move-exception v5

    monitor-exit v65
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v5

    .line 1635
    .end local v65           #recTwoIntObj:Landroid/graphics/Point;
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSetSelectionNone()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5000(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1640
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSetComposingSelectionNone()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5100(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1643
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeRestorePreviousSelectionController()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1648
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSaveSelectionController()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5300(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1652
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateIMSelection(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$5400(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1656
    :sswitch_31
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkit/WebView$ResultTransport;

    .line 1657
    .restart local v25       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v68, -0x1

    .line 1658
    .local v68, result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeCheckSelectionAtBoundry()I
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5500(Landroid/webkit/WebViewCore;)I

    move-result v68

    .line 1660
    monitor-enter v25

    .line 1662
    :try_start_e
    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1663
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notify()V

    .line 1665
    monitor-exit v25

    goto/16 :goto_1

    :catchall_e
    move-exception v5

    monitor-exit v25
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v5

    .line 1670
    .end local v25           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v68           #result:I
    :sswitch_32
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/webkit/WebViewCore$EditableParams;

    .line 1671
    .local v43, editableParams:Landroid/webkit/WebViewCore$EditableParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/webkit/WebViewCore$EditableParams;->content:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$EditableParams;->newCursorPosition:I

    move v7, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$EditableParams;->composing:Z

    move v8, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/webkit/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    move-object v9, v0

    #calls: Landroid/webkit/WebViewCore;->nativeInsertContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$5600(Landroid/webkit/WebViewCore;Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;

    move-result-object v68

    .line 1672
    .local v68, result:Landroid/graphics/Point;
    monitor-enter v43

    .line 1673
    :try_start_f
    move-object/from16 v0, v68

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v43

    iput v0, v1, Landroid/webkit/WebViewCore$EditableParams;->startOffset:I

    .line 1674
    move-object/from16 v0, v68

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v43

    iput v0, v1, Landroid/webkit/WebViewCore$EditableParams;->endOffset:I

    .line 1675
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1676
    monitor-exit v43

    goto/16 :goto_1

    :catchall_f
    move-exception v5

    monitor-exit v43
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v5

    .line 1683
    .end local v43           #editableParams:Landroid/webkit/WebViewCore$EditableParams;
    .end local v68           #result:Landroid/graphics/Point;
    :sswitch_33
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_9

    .line 1684
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1687
    :cond_9
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v5, v6}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkOnLine(Z)V

    goto/16 :goto_1

    :cond_a
    const/4 v6, 0x0

    goto :goto_4

    .line 1692
    :sswitch_34
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_b

    .line 1693
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1696
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Ljava/util/Map;

    .line 1697
    .local v57, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const-string/jumbo v6, "type"

    move-object/from16 v0, v57

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string/jumbo v6, "subtype"

    move-object/from16 v0, v57

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1702
    .end local v57           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0
    .restart local p1
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    const/4 v6, 0x1

    :goto_5
    #calls: Landroid/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$2800(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_c
    const/4 v6, 0x0

    goto :goto_5

    .line 1706
    :sswitch_36
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5700(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v6}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v6

    iget v6, v6, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebBackForwardList;->close(I)V

    goto/16 :goto_1

    .line 1711
    :sswitch_37
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v67, v0

    check-cast v67, Landroid/webkit/WebViewCore$ReplaceTextData;

    .line 1712
    .local v67, rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v9, v0

    move-object/from16 v0, v67

    iget-object v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v67

    iget v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    move v11, v0

    move-object/from16 v0, v67

    iget v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    move v12, v0

    move-object/from16 v0, v67

    iget v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    move v13, v0

    #calls: Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IILjava/lang/String;III)V
    invoke-static/range {v7 .. v13}, Landroid/webkit/WebViewCore;->access$5800(Landroid/webkit/WebViewCore;IILjava/lang/String;III)V

    goto/16 :goto_1

    .line 1718
    .end local v67           #rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    :sswitch_38
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Landroid/webkit/WebViewCore$JSKeyData;

    .line 1719
    .local v54, jsData:Landroid/webkit/WebViewCore$JSKeyData;
    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    move-object/from16 v44, v0

    .line 1720
    .local v44, evt:Landroid/view/KeyEvent;
    invoke-virtual/range {v44 .. v44}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 1721
    .local v10, keyCode:I
    invoke-virtual/range {v44 .. v44}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v11

    .line 1722
    .local v11, keyValue:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    .line 1723
    .local v8, generation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual/range {v44 .. v44}, Landroid/view/KeyEvent;->isDown()Z

    move-result v12

    invoke-virtual/range {v44 .. v44}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v13

    invoke-virtual/range {v44 .. v44}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v14

    invoke-virtual/range {v44 .. v44}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v15

    #calls: Landroid/webkit/WebViewCore;->passToJs(ILjava/lang/String;IIZZZZ)V
    invoke-static/range {v7 .. v15}, Landroid/webkit/WebViewCore;->access$5900(Landroid/webkit/WebViewCore;ILjava/lang/String;IIZZZZ)V

    goto/16 :goto_1

    .line 1734
    .end local v8           #generation:I
    .end local v10           #keyCode:I
    .end local v11           #keyValue:I
    .end local v44           #evt:Landroid/view/KeyEvent;
    .end local v54           #jsData:Landroid/webkit/WebViewCore$JSKeyData;
    :sswitch_39
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebViewCore$CursorData;

    .line 1735
    .local v28, cDat:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v28

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$6000(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1740
    .end local v28           #cDat:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$6100(Landroid/webkit/WebViewCore;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/Network;->clearUserSslPrefTable()V

    goto/16 :goto_1

    .line 1749
    :sswitch_3b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v75, v0

    check-cast v75, Landroid/webkit/WebViewCore$TouchUpData;

    .line 1750
    .local v75, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v12, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v75

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    move v13, v0

    move-object/from16 v0, v75

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    move v14, v0

    move-object/from16 v0, v75

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    move v15, v0

    move-object/from16 v0, v75

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    move/from16 v16, v0

    move-object/from16 v0, v75

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    move/from16 v17, v0

    #calls: Landroid/webkit/WebViewCore;->nativeTouchUp(IIIII)V
    invoke-static/range {v12 .. v17}, Landroid/webkit/WebViewCore;->access$6200(Landroid/webkit/WebViewCore;IIIII)V

    goto/16 :goto_1

    .line 1756
    .end local v75           #touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    :sswitch_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v73, v0

    check-cast v73, Landroid/webkit/WebViewCore$TouchEventData;

    .line 1757
    .local v73, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x73

    move-object/from16 v0, v73

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v8, v0

    iget-object v8, v8, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v73

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v9, v0

    move-object/from16 v0, v73

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    move v10, v0

    move-object/from16 v0, v73

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    move v11, v0

    move-object/from16 v0, v73

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move v12, v0

    #calls: Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(IIII)Z
    invoke-static {v8, v9, v10, v11, v12}, Landroid/webkit/WebViewCore;->access$6300(Landroid/webkit/WebViewCore;IIII)Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x1

    :goto_6
    move-object/from16 v0, v73

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    move v9, v0

    if-eqz v9, :cond_e

    move-object/from16 v9, v73

    :goto_7
    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_d
    const/4 v8, 0x0

    goto :goto_6

    :cond_e
    const/4 v9, 0x0

    goto :goto_7

    .line 1768
    .end local v73           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :sswitch_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f

    const/4 v6, 0x1

    :goto_8
    #calls: Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$6400(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_f
    const/4 v6, 0x0

    goto :goto_8

    .line 1772
    :sswitch_3e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Landroid/webkit/WebViewCore$JSInterfaceData;

    .line 1773
    .local v54, jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    move-object v6, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/BrowserFrame;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1778
    .end local v54           #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    :sswitch_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/BrowserFrame;->externalRepresentation(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1783
    .restart local p0
    :sswitch_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/BrowserFrame;->documentAsText(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1787
    .restart local p0
    :sswitch_41
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/webkit/WebViewCore$CursorData;

    .line 1788
    .local v45, focusData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v45

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mNode:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeMoveFocus(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$6500(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1792
    .end local v45           #focusData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_42
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/webkit/WebViewCore$CursorData;

    .line 1793
    .local v39, cursorData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move v7, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    move v8, v0

    #calls: Landroid/webkit/WebViewCore;->nativeMoveMouse(III)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$6600(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_1

    .line 1798
    .end local v39           #cursorData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_43
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebViewCore$CursorData;

    .line 1799
    .local v29, cData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    move v6, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v7, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move v8, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    move v9, v0

    #calls: Landroid/webkit/WebViewCore;->nativeMoveMouseIfLatest(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$6700(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_1

    .line 1805
    .end local v29           #cData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_44
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/os/Message;

    .line 1806
    .local v48, hrefMsg:Landroid/os/Message;
    invoke-virtual/range {v48 .. v48}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "url"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v7, v0

    iget-object v7, v7, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v9, v0

    #calls: Landroid/webkit/WebViewCore;->nativeRetrieveHref(II)Ljava/lang/String;
    invoke-static {v7, v8, v9}, Landroid/webkit/WebViewCore;->access$6800(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    invoke-virtual/range {v48 .. v48}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v7, v0

    iget-object v7, v7, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v9, v0

    #calls: Landroid/webkit/WebViewCore;->nativeRetrieveAnchorText(II)Ljava/lang/String;
    invoke-static {v7, v8, v9}, Landroid/webkit/WebViewCore;->access$6900(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    invoke-virtual/range {v48 .. v48}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1815
    .end local v48           #hrefMsg:Landroid/os/Message;
    :sswitch_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;)V

    .line 1817
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->postInvalidate()V

    .line 1820
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$7000(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1824
    :sswitch_46
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Landroid/os/Message;

    .line 1825
    .local v50, imageResult:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->documentHasImages()Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    :goto_9
    move v0, v5

    move-object/from16 v1, v50

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1827
    invoke-virtual/range {v50 .. v50}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1825
    :cond_11
    const/4 v5, 0x0

    goto :goto_9

    .line 1831
    .end local v50           #imageResult:Landroid/os/Message;
    :sswitch_47
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/webkit/WebViewCore$TextSelectionData;

    .line 1833
    .local v42, deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    move v6, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    #calls: Landroid/webkit/WebViewCore;->nativeDeleteSelection(III)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$7100(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_1

    .line 1838
    .end local v42           #deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    :sswitch_48
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSetSelection(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$7200(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1842
    :sswitch_49
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/util/SparseBooleanArray;

    .line 1844
    .local v33, choices:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    .line 1845
    .local v35, choicesSize:I
    move/from16 v0, v35

    new-array v0, v0, [Z

    move-object/from16 v34, v0

    .line 1846
    .local v34, choicesArray:[Z
    const/16 v27, 0x0

    .local v27, c:I
    :goto_a
    move/from16 v0, v27

    move/from16 v1, v35

    if-ge v0, v1, :cond_12

    .line 1847
    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    aput-boolean v5, v34, v27

    .line 1846
    add-int/lit8 v27, v27, 0x1

    goto :goto_a

    .line 1849
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move-object/from16 v1, v34

    move/from16 v2, v35

    #calls: Landroid/webkit/WebViewCore;->nativeSendListBoxChoices([ZI)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$7300(Landroid/webkit/WebViewCore;[ZI)V

    goto/16 :goto_1

    .line 1854
    .end local v27           #c:I
    .end local v33           #choices:Landroid/util/SparseBooleanArray;
    .end local v34           #choicesArray:[Z
    .end local v35           #choicesSize:I
    :sswitch_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$7400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1858
    :sswitch_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$7500(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1862
    :sswitch_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_13

    const/4 v6, 0x1

    :goto_b
    #calls: Landroid/webkit/WebViewCore;->nativeDumpDomTree(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$7600(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_13
    const/4 v6, 0x0

    goto :goto_b

    .line 1866
    :sswitch_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_14

    const/4 v6, 0x1

    :goto_c
    #calls: Landroid/webkit/WebViewCore;->nativeDumpRenderTree(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$7700(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_1

    :cond_14
    const/4 v6, 0x0

    goto :goto_c

    .line 1870
    :sswitch_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeDumpNavTree()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$7800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1874
    :sswitch_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeDumpV8Counters()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$7900(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1878
    :sswitch_50
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    #calls: Landroid/webkit/WebViewCore;->nativeSetJsFlags(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$8000(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1882
    .restart local p0
    :sswitch_51
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebViewCore$GeolocationPermissionsData;

    .line 1884
    .local v41, data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mAllow:Z

    move v7, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mRemember:Z

    move v8, v0

    #calls: Landroid/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$8100(Landroid/webkit/WebViewCore;Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1889
    .end local v41           #data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    :sswitch_52
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #setter for: Landroid/webkit/WebViewCore;->mWebkitScrollX:I
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$8202(Landroid/webkit/WebViewCore;I)I

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    #setter for: Landroid/webkit/WebViewCore;->mWebkitScrollY:I
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$8302(Landroid/webkit/WebViewCore;I)I

    goto/16 :goto_1

    .line 1894
    :sswitch_53
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSplitContent()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$8400(Landroid/webkit/WebViewCore;)V

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$8502(Landroid/webkit/WebViewCore;Z)Z

    goto/16 :goto_1

    .line 1902
    :sswitch_54
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeClearContent()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$8600(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_1

    .line 1906
    :sswitch_55
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    instance-of v5, v5, Landroid/os/Message;

    if-eqz v5, :cond_2

    .line 1907
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1912
    .restart local p0
    :sswitch_56
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    #calls: Landroid/webkit/WebViewCore;->nativeProvideVisitedHistory([Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$8700(Landroid/webkit/WebViewCore;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1916
    .restart local p0
    :sswitch_57
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Landroid/webkit/WebViewCore$MotionUpData;

    .line 1917
    .local v59, motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v59

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v59

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    move v7, v0

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    move-object v8, v0

    #calls: Landroid/webkit/WebViewCore;->nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$8800(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 1920
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;)V

    .line 1922
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x77

    move-object/from16 v0, v59

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    move v7, v0

    move-object/from16 v0, v59

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    move v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v58

    .line 1925
    .local v58, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v0, v5

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1931
    .end local v58           #message:Landroid/os/Message;
    .end local v59           #motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    :sswitch_58
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->nativeFullScreenPluginHidden(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$8900(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1935
    :sswitch_59
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_16

    .line 1936
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1939
    :cond_16
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/util/Set;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/JWebCoreJavaBridge;->addPackageNames(Ljava/util/Set;)V

    goto/16 :goto_1

    .line 1944
    .restart local p0
    :sswitch_5a
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_17

    .line 1945
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1948
    :cond_17
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/JWebCoreJavaBridge;->addPackageName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1953
    .restart local p0
    :sswitch_5b
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_18

    .line 1954
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1957
    :cond_18
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/JWebCoreJavaBridge;->removePackageName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1962
    .restart local p0
    :sswitch_5c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v74, v0

    check-cast v74, Landroid/graphics/Point;

    .line 1963
    .local v74, touchPt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v74

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v7, v0

    const/high16 v8, 0x3f80

    #calls: Landroid/webkit/WebViewCore;->nativeGetBlockBounds(IIF)Landroid/graphics/Rect;
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$9000(Landroid/webkit/WebViewCore;IIF)Landroid/graphics/Rect;

    move-result-object v66

    .line 1964
    .local v66, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x82

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v66

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1970
    .end local v66           #rect:Landroid/graphics/Rect;
    .end local v74           #touchPt:Landroid/graphics/Point;
    :sswitch_5d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/webkit/WebViewCore$CursorData;

    .line 1971
    .local v32, cd:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mNode:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeMouseClick(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$9100(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1975
    .end local v32           #cd:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_5e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v69, v0

    check-cast v69, Landroid/webkit/WebViewCore$SelectAndClickData;

    .line 1976
    .local v69, scdata:Landroid/webkit/WebViewCore$SelectAndClickData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v69

    iget v0, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->selectionStart:I

    move v6, v0

    move-object/from16 v0, v69

    iget v0, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->selectionEnd:I

    move v7, v0

    move-object/from16 v0, v69

    iget v0, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->cursorFrame:I

    move v8, v0

    move-object/from16 v0, v69

    iget v0, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->cursorNode:I

    move v9, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSelectAndClick(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$9200(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_1

    .line 1981
    .end local v69           #scdata:Landroid/webkit/WebViewCore$SelectAndClickData;
    :sswitch_5f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/webkit/WebViewCore$CopyParams;

    .line 1982
    .local v62, params:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v12, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v62

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v13, v0

    move-object/from16 v0, v62

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v14, v0

    move-object/from16 v0, v62

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    move v15, v0

    move-object/from16 v0, v62

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    move/from16 v16, v0

    move-object/from16 v0, v62

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    move/from16 v17, v0

    move-object/from16 v0, v62

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    move/from16 v18, v0

    move-object/from16 v0, v62

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    move/from16 v19, v0

    #calls: Landroid/webkit/WebViewCore;->nativeCopyMoveSelection(IIIZZFI)V
    invoke-static/range {v12 .. v19}, Landroid/webkit/WebViewCore;->access$9300(Landroid/webkit/WebViewCore;IIIZZFI)V

    .line 1986
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v62

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 1992
    .end local v62           #params:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_60
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/webkit/WebViewCore$CopyParams;

    .line 1993
    .local v20, Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    const/16 v47, 0x0

    .line 1994
    .local v47, haveselection:I
    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    move v5, v0

    if-nez v5, :cond_19

    .line 1995
    const/16 v47, 0x1

    .line 1997
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v6, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v7, v0

    const/4 v8, 0x0

    move-object v0, v5

    move v1, v6

    move v2, v7

    move/from16 v3, v47

    move v4, v8

    #calls: Landroid/webkit/WebViewCore;->nativeWebTextSelectionAll(IIII)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->access$9400(Landroid/webkit/WebViewCore;IIII)V

    .line 1998
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 2004
    .end local v20           #Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    .end local v47           #haveselection:I
    :sswitch_61
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/webkit/WebViewCore$CopyParams;

    .line 2005
    .restart local v20       #Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v7, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v8, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    move v9, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    move v10, v0

    #calls: Landroid/webkit/WebViewCore;->nativeSelectClosestWord(IIFZ)Z
    invoke-static {v6, v7, v8, v9, v10}, Landroid/webkit/WebViewCore;->access$9500(Landroid/webkit/WebViewCore;IIFZ)Z

    move-result v6

    if-ne v5, v6, :cond_2

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    move v6, v0

    #calls: Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_1

    .line 2012
    .end local v20           #Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_62
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/webkit/WebViewCore$CopyParams;

    .line 2013
    .local v36, clearSelection:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v6, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v7, v0

    #calls: Landroid/webkit/WebViewCore;->nativeClearTextSelection(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$9600(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_1

    .line 1193
    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_2
        0x62 -> :sswitch_3
        0x63 -> :sswitch_4
        0x64 -> :sswitch_5
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
        0x68 -> :sswitch_b
        0x69 -> :sswitch_d
        0x6a -> :sswitch_11
        0x6b -> :sswitch_f
        0x6c -> :sswitch_12
        0x6d -> :sswitch_13
        0x6e -> :sswitch_14
        0x6f -> :sswitch_35
        0x70 -> :sswitch_36
        0x71 -> :sswitch_48
        0x72 -> :sswitch_37
        0x73 -> :sswitch_38
        0x74 -> :sswitch_10
        0x75 -> :sswitch_45
        0x76 -> :sswitch_c
        0x77 -> :sswitch_33
        0x78 -> :sswitch_46
        0x7a -> :sswitch_47
        0x7b -> :sswitch_49
        0x7c -> :sswitch_4a
        0x7d -> :sswitch_55
        0x7e -> :sswitch_4b
        0x7f -> :sswitch_41
        0x80 -> :sswitch_39
        0x82 -> :sswitch_0
        0x83 -> :sswitch_52
        0x84 -> :sswitch_6
        0x85 -> :sswitch_53
        0x86 -> :sswitch_54
        0x87 -> :sswitch_42
        0x88 -> :sswitch_43
        0x89 -> :sswitch_44
        0x8a -> :sswitch_3e
        0x8b -> :sswitch_7
        0x8c -> :sswitch_3b
        0x8d -> :sswitch_3c
        0x8e -> :sswitch_3d
        0x8f -> :sswitch_15
        0x90 -> :sswitch_16
        0x91 -> :sswitch_17
        0x92 -> :sswitch_57
        0x96 -> :sswitch_3a
        0xa0 -> :sswitch_3f
        0xa1 -> :sswitch_40
        0xaa -> :sswitch_4c
        0xab -> :sswitch_4d
        0xac -> :sswitch_4e
        0xad -> :sswitch_4f
        0xae -> :sswitch_50
        0xb4 -> :sswitch_51
        0xb5 -> :sswitch_56
        0xb6 -> :sswitch_58
        0xb7 -> :sswitch_34
        0xb8 -> :sswitch_59
        0xb9 -> :sswitch_5a
        0xba -> :sswitch_5b
        0xbb -> :sswitch_5c
        0xbc -> :sswitch_5d
        0xbe -> :sswitch_5e
        0xc8 -> :sswitch_1
        0xd2 -> :sswitch_5f
        0xd3 -> :sswitch_62
        0xd4 -> :sswitch_61
        0xd5 -> :sswitch_e
        0xd8 -> :sswitch_60
        0x1fc -> :sswitch_18
        0x1fd -> :sswitch_19
        0x1fe -> :sswitch_29
        0x1ff -> :sswitch_1a
        0x200 -> :sswitch_1d
        0x201 -> :sswitch_1b
        0x202 -> :sswitch_1c
        0x203 -> :sswitch_21
        0x204 -> :sswitch_25
        0x205 -> :sswitch_26
        0x206 -> :sswitch_27
        0x207 -> :sswitch_28
        0x209 -> :sswitch_20
        0x20b -> :sswitch_2c
        0x20d -> :sswitch_22
        0x20f -> :sswitch_23
        0x211 -> :sswitch_24
        0x212 -> :sswitch_1e
        0x213 -> :sswitch_1f
        0x214 -> :sswitch_2e
        0x215 -> :sswitch_2f
        0x217 -> :sswitch_31
        0x218 -> :sswitch_32
        0x219 -> :sswitch_2d
        0x21a -> :sswitch_30
        0x21b -> :sswitch_2b
        0x21c -> :sswitch_2a
    .end sparse-switch
.end method
