.class Lcom/android/settings/AirplaneModeEnabler$2;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirplaneModeEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeEnabler;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler$2;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    iput-boolean p2, p0, Lcom/android/settings/AirplaneModeEnabler$2;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/settings/AirplaneModeEnabler$2;->val$value:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/settings/AirplaneModeEnabler;->access$100()Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/AirplaneModeEnabler$2;->val$value:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/AirplaneModeEnabler;->access$100()Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/AirplaneModeEnabler$2;->val$value:Z

    invoke-static {v0}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method
