.class Lcom/android/settings/ChooseLockPassword$2;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPassword;->showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$Stage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPassword;

.field final synthetic val$next:Lcom/android/settings/ChooseLockPassword$Stage;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPassword;Lcom/android/settings/ChooseLockPassword$Stage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$2;->this$0:Lcom/android/settings/ChooseLockPassword;

    iput-object p2, p0, Lcom/android/settings/ChooseLockPassword$2;->val$next:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$2;->this$0:Lcom/android/settings/ChooseLockPassword;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$2;->val$next:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 460
    return-void
.end method
