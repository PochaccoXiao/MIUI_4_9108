.class Lcom/android/settings/UNASettingList$1;
.super Ljava/lang/Object;
.source "UNASettingList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UNASettingList;->showChargingDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UNASettingList;


# direct methods
.method constructor <init>(Lcom/android/settings/UNASettingList;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/UNASettingList$1;->this$0:Lcom/android/settings/UNASettingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 86
    packed-switch p2, :pswitch_data_0

    .line 93
    const-string v1, "UNASetting"

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return v3

    .line 88
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/UNASettingList$1;->this$0:Lcom/android/settings/UNASettingList;

    invoke-virtual {v1}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "una_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, mode:I
    iget-object v1, p0, Lcom/android/settings/UNASettingList$1;->this$0:Lcom/android/settings/UNASettingList;

    invoke-virtual {v1}, Lcom/android/settings/UNASettingList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 90
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
