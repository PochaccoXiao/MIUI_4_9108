.class Lcom/android/settings/PhoneProfileEditor$2;
.super Ljava/lang/Object;
.source "PhoneProfileEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PhoneProfileEditor;->showErrorMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PhoneProfileEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/PhoneProfileEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 849
    iput-object p1, p0, Lcom/android/settings/PhoneProfileEditor$2;->this$0:Lcom/android/settings/PhoneProfileEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/settings/PhoneProfileEditor$2;->this$0:Lcom/android/settings/PhoneProfileEditor;

    invoke-virtual {v0}, Lcom/android/settings/PhoneProfileEditor;->finish()V

    .line 852
    return-void
.end method
