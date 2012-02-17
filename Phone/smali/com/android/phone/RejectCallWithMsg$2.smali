.class Lcom/android/phone/RejectCallWithMsg$2;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectCallWithMsg;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsg;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    #setter for: Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/RejectCallWithMsg;->access$102(Lcom/android/phone/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    #getter for: Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/RejectCallWithMsg;->access$200(Lcom/android/phone/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    #setter for: Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/phone/RejectCallWithMsg;->access$102(Lcom/android/phone/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    #getter for: Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsg;->access$000(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 129
    .local v1, recipients:[Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.Send.SMS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "recipient"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v2, "text"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    #getter for: Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsg;->access$100(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    invoke-virtual {v2, v0}, Lcom/android/phone/RejectCallWithMsg;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsg$2;->this$0:Lcom/android/phone/RejectCallWithMsg;

    invoke-virtual {v2}, Lcom/android/phone/RejectCallWithMsg;->finish()V

    .line 136
    return-void
.end method
