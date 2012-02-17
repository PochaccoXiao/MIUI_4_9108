.class Lcom/android/settings/PhoneProfileEditor$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneProfileEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PhoneProfileEditor;
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
    .line 95
    iput-object p1, p0, Lcom/android/settings/PhoneProfileEditor$1;->this$0:Lcom/android/settings/PhoneProfileEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "ring_volume"

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/settings/PhoneProfileEditor$1;->this$0:Lcom/android/settings/PhoneProfileEditor;

    #getter for: Lcom/android/settings/PhoneProfileEditor;->editMode:I
    invoke-static {v0}, Lcom/android/settings/PhoneProfileEditor;->access$000(Lcom/android/settings/PhoneProfileEditor;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/PhoneProfileEditor$1;->this$0:Lcom/android/settings/PhoneProfileEditor;

    #getter for: Lcom/android/settings/PhoneProfileEditor;->currentMode:I
    invoke-static {v1}, Lcom/android/settings/PhoneProfileEditor;->access$100(Lcom/android/settings/PhoneProfileEditor;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/PhoneProfileEditor$1;->this$0:Lcom/android/settings/PhoneProfileEditor;

    #getter for: Lcom/android/settings/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/settings/PhoneProfileEditor;->access$200(Lcom/android/settings/PhoneProfileEditor;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/android/settings/PhoneProfileEditor$1;->this$0:Lcom/android/settings/PhoneProfileEditor;

    iget-object v0, p0, Lcom/android/settings/PhoneProfileEditor$1;->this$0:Lcom/android/settings/PhoneProfileEditor;

    const-string v2, "ring_volume"

    invoke-virtual {v0, v3}, Lcom/android/settings/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/PhoneProfileVolumePreference;

    #setter for: Lcom/android/settings/PhoneProfileEditor;->mRingerVolume:Lcom/android/settings/PhoneProfileVolumePreference;
    invoke-static {v1, v0}, Lcom/android/settings/PhoneProfileEditor;->access$302(Lcom/android/settings/PhoneProfileEditor;Lcom/android/settings/PhoneProfileVolumePreference;)Lcom/android/settings/PhoneProfileVolumePreference;

    .line 103
    iget-object v0, p0, Lcom/android/settings/PhoneProfileEditor$1;->this$0:Lcom/android/settings/PhoneProfileEditor;

    #getter for: Lcom/android/settings/PhoneProfileEditor;->mRingerVolume:Lcom/android/settings/PhoneProfileVolumePreference;
    invoke-static {v0}, Lcom/android/settings/PhoneProfileEditor;->access$300(Lcom/android/settings/PhoneProfileEditor;)Lcom/android/settings/PhoneProfileVolumePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/PhoneProfileEditor$1;->this$0:Lcom/android/settings/PhoneProfileEditor;

    invoke-virtual {v0}, Lcom/android/settings/PhoneProfileEditor;->finish()V

    .line 124
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/PhoneProfileEditor$1;->this$0:Lcom/android/settings/PhoneProfileEditor;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/PhoneProfileEditor;->updateState(Z)Z
    invoke-static {v0, v1}, Lcom/android/settings/PhoneProfileEditor;->access$400(Lcom/android/settings/PhoneProfileEditor;Z)Z

    .line 126
    :cond_1
    return-void

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/android/settings/PhoneProfileEditor$1;->this$0:Lcom/android/settings/PhoneProfileEditor;

    iget-object v0, p0, Lcom/android/settings/PhoneProfileEditor$1;->this$0:Lcom/android/settings/PhoneProfileEditor;

    const-string v2, "ring_volume"

    invoke-virtual {v0, v3}, Lcom/android/settings/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/PhoneProfileVolumePreference;

    #setter for: Lcom/android/settings/PhoneProfileEditor;->mRingerVolume:Lcom/android/settings/PhoneProfileVolumePreference;
    invoke-static {v1, v0}, Lcom/android/settings/PhoneProfileEditor;->access$302(Lcom/android/settings/PhoneProfileEditor;Lcom/android/settings/PhoneProfileVolumePreference;)Lcom/android/settings/PhoneProfileVolumePreference;

    .line 118
    iget-object v0, p0, Lcom/android/settings/PhoneProfileEditor$1;->this$0:Lcom/android/settings/PhoneProfileEditor;

    #getter for: Lcom/android/settings/PhoneProfileEditor;->mRingerVolume:Lcom/android/settings/PhoneProfileVolumePreference;
    invoke-static {v0}, Lcom/android/settings/PhoneProfileEditor;->access$300(Lcom/android/settings/PhoneProfileEditor;)Lcom/android/settings/PhoneProfileVolumePreference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/PhoneProfileEditor$1;->this$0:Lcom/android/settings/PhoneProfileEditor;

    invoke-virtual {v0}, Lcom/android/settings/PhoneProfileEditor;->finish()V

    goto :goto_0
.end method
