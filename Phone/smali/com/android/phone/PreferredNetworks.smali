.class public Lcom/android/phone/PreferredNetworks;
.super Landroid/app/Activity;
.source "PreferredNetworks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PreferredNetworks$ProgressThread;
    }
.end annotation


# instance fields
.field final app:Lcom/android/phone/PhoneApp;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PreferredNetworkListInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->app:Lcom/android/phone/PhoneApp;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/android/phone/PreferredNetworks$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PreferredNetworks$1;-><init>(Lcom/android/phone/PreferredNetworks;)V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/android/phone/PreferredNetworks$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PreferredNetworks$2;-><init>(Lcom/android/phone/PreferredNetworks;)V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PreferredNetworks;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/phone/PreferredNetworks;->displayList(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PreferredNetworks;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/PreferredNetworks;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private displayList(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const-string v5, "PreferredNetworks"

    .line 103
    if-nez p1, :cond_0

    .line 104
    const-string v3, "PreferredNetworks"

    const-string v3, "AsyncResult is null."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 110
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    .line 111
    const-string v3, "PreferredNetworks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 113
    iget-object v4, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :cond_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 118
    .local v2, mAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x7f080137

    invoke-virtual {p0, v3}, Lcom/android/phone/PreferredNetworks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 119
    .local v1, list:Landroid/widget/ListView;
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredNetworks;->setContentView(I)V

    .line 96
    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->app:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredNetworks;->showDialog(I)V

    .line 100
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    .line 170
    packed-switch p1, :pswitch_data_0

    .line 178
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 172
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 174
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f0d0487

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v2, Lcom/android/phone/PreferredNetworks$ProgressThread;

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/PreferredNetworks$ProgressThread;-><init>(Lcom/android/phone/PreferredNetworks;Landroid/os/Handler;)V

    invoke-virtual {v2}, Lcom/android/phone/PreferredNetworks$ProgressThread;->start()V

    move-object v2, v0

    .line 176
    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 143
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    .local v0, r:Landroid/content/res/Resources;
    const/16 v1, 0xc8

    const v2, 0x7f0d0486

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0202d6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 146
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, ""

    .line 151
    const-string v0, "PreferredNetworks"

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 154
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PreferredNetworkDetailView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    const-string v1, "type_action"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string v1, "index"

    iget-object v2, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "id"

    const-string v2, ""

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "act_gsm"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string v1, "act_gsm_compact"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string v1, "act_utran"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredNetworks;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 163
    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 190
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredNetworks;->showDialog(I)V

    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 185
    return-void
.end method
