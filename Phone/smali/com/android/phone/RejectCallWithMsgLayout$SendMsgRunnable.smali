.class Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;
.super Ljava/lang/Object;
.source "RejectCallWithMsgLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendMsgRunnable"
.end annotation


# instance fields
.field private mMsg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgLayout;


# direct methods
.method public constructor <init>(Lcom/android/phone/RejectCallWithMsgLayout;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "msg"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->mMsg:Ljava/lang/String;

    .line 200
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-string v4, "RejectCallWithMsgLayout"

    .line 202
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->mMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 203
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgLayout;->access$100(Lcom/android/phone/RejectCallWithMsgLayout;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 204
    .local v1, recipients:[Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.Send.SMS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "recipient"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v2, "text"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/RejectCallWithMsgLayout;->access$400(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    const-string v2, "RejectCallWithMsgLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recipient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->mMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v2, "RejectCallWithMsgLayout"

    const-string v2, "SendMsgRunnable is Run"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #recipients:[Ljava/lang/String;
    :cond_0
    return-void
.end method
