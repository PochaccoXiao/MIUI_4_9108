.class Lcom/android/phone/PreferredNetworks$1;
.super Landroid/os/Handler;
.source "PreferredNetworks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PreferredNetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreferredNetworks;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredNetworks;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const v6, 0x7f0d0488

    const/4 v5, 0x1

    const-string v7, "PreferredNetworks"

    .line 46
    const-string v3, "PreferredNetworks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ilkwon.moon:: msg.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v3, "PreferredNetworks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ilkwon.moon:: msg.obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 75
    .end local p0
    :goto_0
    return-void

    .line 50
    .restart local p0
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 51
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 52
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    .local v2, err_builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 54
    iget-object v3, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    const v4, 0x7f0d0476

    invoke-virtual {v3, v4}, Lcom/android/phone/PreferredNetworks;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 55
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 56
    const v3, 0x7f0d003f

    new-instance v4, Lcom/android/phone/PreferredNetworks$1$1;

    invoke-direct {v4, p0}, Lcom/android/phone/PreferredNetworks$1$1;-><init>(Lcom/android/phone/PreferredNetworks$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 62
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_1

    .line 63
    iget-object v3, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v3, v6}, Lcom/android/phone/PreferredNetworks;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 67
    :cond_0
    :goto_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_0

    .line 65
    iget-object v3, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v3, v6}, Lcom/android/phone/PreferredNetworks;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 69
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v3, v5}, Lcom/android/phone/PreferredNetworks;->dismissDialog(I)V

    .line 70
    iget-object v3, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-virtual {v3, v5}, Lcom/android/phone/PreferredNetworks;->removeDialog(I)V

    .line 71
    iget-object v3, p0, Lcom/android/phone/PreferredNetworks$1;->this$0:Lcom/android/phone/PreferredNetworks;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PreferredNetworks;->displayList(Landroid/os/AsyncResult;)V
    invoke-static {v3, p0}, Lcom/android/phone/PreferredNetworks;->access$000(Lcom/android/phone/PreferredNetworks;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
