.class Lcom/android/settings/ImeCheckBoxPreference$1;
.super Ljava/lang/Object;
.source "ImeCheckBoxPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ImeCheckBoxPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ImeCheckBoxPreference;

.field final synthetic val$mCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/ImeCheckBoxPreference;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/ImeCheckBoxPreference$1;->this$0:Lcom/android/settings/ImeCheckBoxPreference;

    iput-object p2, p0, Lcom/android/settings/ImeCheckBoxPreference$1;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 81
    const-string v0, "ImeCheckBoxPreference"

    const-string v1, "mCheckBox onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/settings/ImeCheckBoxPreference$1;->this$0:Lcom/android/settings/ImeCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/ImeCheckBoxPreference$1;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ImeCheckBoxPreference;->setIMEChecked(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/ImeCheckBoxPreference$1;->this$0:Lcom/android/settings/ImeCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/ImeCheckBoxPreference$1;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ImeCheckBoxPreference;->runIMEChecked(Z)Z

    .line 84
    return-void
.end method
