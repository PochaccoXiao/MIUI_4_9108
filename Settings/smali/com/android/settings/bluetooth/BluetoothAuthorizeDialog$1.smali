.class Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;
.super Ljava/lang/Object;
.source "BluetoothAuthorizeDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->cb1:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->access$200(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 190
    return-void
.end method
