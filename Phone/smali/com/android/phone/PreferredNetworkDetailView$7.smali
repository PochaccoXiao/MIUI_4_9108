.class Lcom/android/phone/PreferredNetworkDetailView$7;
.super Ljava/lang/Object;
.source "PreferredNetworkDetailView.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PreferredNetworkDetailView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreferredNetworkDetailView;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredNetworkDetailView;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 270
    const-string v0, "PreferredNetworksDetailView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UTRAN ACT Checked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v2, v2, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0d0484

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 275
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0d047d

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 276
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0d0480

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 277
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 278
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 282
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0d0483

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method
