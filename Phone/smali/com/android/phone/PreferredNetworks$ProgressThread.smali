.class Lcom/android/phone/PreferredNetworks$ProgressThread;
.super Ljava/lang/Thread;
.source "PreferredNetworks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PreferredNetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressThread"
.end annotation


# instance fields
.field progressHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/phone/PreferredNetworks;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredNetworks;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "h"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/phone/PreferredNetworks$ProgressThread;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/android/phone/PreferredNetworks$ProgressThread;->progressHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/phone/PreferredNetworks$ProgressThread;->this$0:Lcom/android/phone/PreferredNetworks;

    #getter for: Lcom/android/phone/PreferredNetworks;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/PreferredNetworks;->access$100(Lcom/android/phone/PreferredNetworks;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PreferredNetworks$ProgressThread;->this$0:Lcom/android/phone/PreferredNetworks;

    iget-object v2, v2, Lcom/android/phone/PreferredNetworks;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkList(Landroid/os/Message;)V

    .line 86
    iget-object v1, p0, Lcom/android/phone/PreferredNetworks$ProgressThread;->progressHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 87
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PreferredNetworks$ProgressThread;->progressHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    return-void
.end method
