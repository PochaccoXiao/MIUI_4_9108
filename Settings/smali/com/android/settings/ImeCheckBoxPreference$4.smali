.class Lcom/android/settings/ImeCheckBoxPreference$4;
.super Ljava/lang/Object;
.source "ImeCheckBoxPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ImeCheckBoxPreference;->runIMEChecked(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ImeCheckBoxPreference;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/ImeCheckBoxPreference;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/settings/ImeCheckBoxPreference$4;->this$0:Lcom/android/settings/ImeCheckBoxPreference;

    iput-object p2, p0, Lcom/android/settings/ImeCheckBoxPreference$4;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 174
    iget-object v0, p0, Lcom/android/settings/ImeCheckBoxPreference$4;->this$0:Lcom/android/settings/ImeCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ImeCheckBoxPreference;->setIMEChecked(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/ImeCheckBoxPreference$4;->this$0:Lcom/android/settings/ImeCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/ImeCheckBoxPreference$4;->val$id:Ljava/lang/String;

    #setter for: Lcom/android/settings/ImeCheckBoxPreference;->mLastTickedInputMethodId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/ImeCheckBoxPreference;->access$002(Lcom/android/settings/ImeCheckBoxPreference;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/android/settings/ImeCheckBoxPreference$4;->this$0:Lcom/android/settings/ImeCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ImeCheckBoxPreference;->languageSettingsOnPause(Z)V

    .line 182
    return-void
.end method
