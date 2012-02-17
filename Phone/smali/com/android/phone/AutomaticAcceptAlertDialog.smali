.class public Lcom/android/phone/AutomaticAcceptAlertDialog;
.super Landroid/app/Activity;
.source "AutomaticAcceptAlertDialog.java"


# instance fields
.field AcceptByVoiceCallNumber:Ljava/lang/String;

.field bld:Landroid/app/AlertDialog;

.field final mFallbackWaitingTime:J

.field myTask:Ljava/util/TimerTask;

.field res:Landroid/content/res/Resources;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->mFallbackWaitingTime:J

    .line 26
    iput-object v2, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->bld:Landroid/app/AlertDialog;

    .line 27
    iput-object v2, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->res:Landroid/content/res/Resources;

    .line 29
    iput-object v2, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->myTask:Ljava/util/TimerTask;

    .line 30
    iput-object v2, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->timer:Ljava/util/Timer;

    .line 31
    iput-object v2, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->AcceptByVoiceCallNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method AcceptAlertDialogInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 90
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setAutomaticAcceptAlertDialogInstance(Lcom/android/phone/AutomaticAcceptAlertDialog;)V

    .line 92
    iget-object v1, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->myTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 94
    iget-object v1, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 96
    iput-object v2, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->timer:Ljava/util/Timer;

    .line 98
    iget-object v1, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->bld:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 101
    invoke-virtual {p0}, Lcom/android/phone/AutomaticAcceptAlertDialog;->finish()V

    .line 102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const-string v5, "AutomaticAcceptAlertDialog"

    .line 37
    const-string v3, "AutomaticAcceptAlertDialog"

    const-string v3, "AutomaticAcceptAlertDialog onCreate"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/phone/AutomaticAcceptAlertDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 41
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "AcceptByVoiceCallNumber"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->AcceptByVoiceCallNumber:Ljava/lang/String;

    .line 42
    const-string v3, "AutomaticAcceptAlertDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AcceptByVoiceCallNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->AcceptByVoiceCallNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/high16 v1, 0x8

    .line 49
    .local v1, flags:I
    const/high16 v3, 0x40

    or-int/2addr v1, v3

    .line 50
    or-int/lit8 v1, v1, 0x2

    .line 51
    or-int/lit16 v1, v1, 0x80

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/AutomaticAcceptAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->addFlags(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/AutomaticAcceptAlertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->res:Landroid/content/res/Resources;

    .line 57
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 58
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setAutomaticAcceptAlertDialogInstance(Lcom/android/phone/AutomaticAcceptAlertDialog;)V

    .line 59
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d046a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->res:Landroid/content/res/Resources;

    const v5, 0x7f0d0031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/phone/AutomaticAcceptAlertDialog$1;

    invoke-direct {v5, p0}, Lcom/android/phone/AutomaticAcceptAlertDialog$1;-><init>(Lcom/android/phone/AutomaticAcceptAlertDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->bld:Landroid/app/AlertDialog;

    .line 72
    new-instance v3, Lcom/android/phone/AutomaticAcceptAlertDialog$2;

    invoke-direct {v3, p0}, Lcom/android/phone/AutomaticAcceptAlertDialog$2;-><init>(Lcom/android/phone/AutomaticAcceptAlertDialog;)V

    iput-object v3, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->myTask:Ljava/util/TimerTask;

    .line 80
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->timer:Ljava/util/Timer;

    .line 81
    iget-object v3, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->timer:Ljava/util/Timer;

    iget-object v4, p0, Lcom/android/phone/AutomaticAcceptAlertDialog;->myTask:Ljava/util/TimerTask;

    const-wide/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 83
    return-void
.end method
