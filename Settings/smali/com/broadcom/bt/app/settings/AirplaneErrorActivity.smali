.class public Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "AirplaneErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mErrorContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    .local v0, contentView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->mErrorContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 89
    .line 93
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 64
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "title"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 65
    .local v4, titleId:I
    const-string v5, "content"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 67
    .local v0, contentId:I
    invoke-virtual {p0, v4}, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, mErrorTitle:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->mErrorContent:Ljava/lang/String;

    .line 72
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 73
    .local v3, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v5, 0x1080027

    iput v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 74
    iput-object v2, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 75
    invoke-direct {p0}, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->createView()Landroid/view/View;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 76
    const v5, 0x7f08072d

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 77
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/AirplaneErrorActivity;->setupAlert()V

    .line 79
    return-void
.end method
