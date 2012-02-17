.class Lcom/android/settings/ImeCheckBoxPreference$2;
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
    .line 87
    iput-object p1, p0, Lcom/android/settings/ImeCheckBoxPreference$2;->this$0:Lcom/android/settings/ImeCheckBoxPreference;

    iput-object p2, p0, Lcom/android/settings/ImeCheckBoxPreference$2;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "ImeCheckBoxPreference"

    .line 89
    const-string v0, "ImeCheckBoxPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "before mCheckBoxLayout onClick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ImeCheckBoxPreference$2;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/settings/ImeCheckBoxPreference$2;->this$0:Lcom/android/settings/ImeCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/ImeCheckBoxPreference$2;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/ImeCheckBoxPreference;->setIMEChecked(Z)V

    .line 91
    const-string v0, "ImeCheckBoxPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after mCheckBoxLayout onClick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ImeCheckBoxPreference$2;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/settings/ImeCheckBoxPreference$2;->this$0:Lcom/android/settings/ImeCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/ImeCheckBoxPreference$2;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/ImeCheckBoxPreference;->runIMEChecked(Z)Z

    .line 93
    return-void

    :cond_0
    move v1, v2

    .line 90
    goto :goto_0

    :cond_1
    move v1, v2

    .line 92
    goto :goto_1
.end method
