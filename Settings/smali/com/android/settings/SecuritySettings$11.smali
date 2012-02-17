.class Lcom/android/settings/SecuritySettings$11;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->showPDRDescription()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;

.field final synthetic val$cbDontAsk:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$11;->this$0:Lcom/android/settings/SecuritySettings;

    iput-object p2, p0, Lcom/android/settings/SecuritySettings$11;->val$cbDontAsk:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$11;->this$0:Lcom/android/settings/SecuritySettings;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$11;->val$cbDontAsk:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    #calls: Lcom/android/settings/SecuritySettings;->selectPDRDescription(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->access$1100(Lcom/android/settings/SecuritySettings;ZZ)V

    .line 1163
    return-void
.end method
