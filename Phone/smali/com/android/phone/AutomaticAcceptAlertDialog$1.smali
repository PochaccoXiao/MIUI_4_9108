.class Lcom/android/phone/AutomaticAcceptAlertDialog$1;
.super Ljava/lang/Object;
.source "AutomaticAcceptAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutomaticAcceptAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutomaticAcceptAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/AutomaticAcceptAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/phone/AutomaticAcceptAlertDialog$1;->this$0:Lcom/android/phone/AutomaticAcceptAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/AutomaticAcceptAlertDialog$1;->this$0:Lcom/android/phone/AutomaticAcceptAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/AutomaticAcceptAlertDialog;->AcceptAlertDialogInit()V

    .line 67
    return-void
.end method
