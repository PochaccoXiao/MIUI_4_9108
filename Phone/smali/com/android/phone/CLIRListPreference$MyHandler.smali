.class Lcom/android/phone/CLIRListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CLIRListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CLIRListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CLIRListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CLIRListPreference;Lcom/android/phone/CLIRListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference$MyHandler;-><init>(Lcom/android/phone/CLIRListPreference;)V

    return-void
.end method

.method private handleGetCLIRResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x190

    const/4 v5, 0x1

    .line 152
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 154
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v3, v3, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-nez v3, :cond_0

    .line 180
    .end local p0
    :goto_0
    return-void

    .line 159
    .restart local p0
    :cond_0
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v5, :cond_1

    .line 160
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v3, v3, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 164
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    .line 165
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 167
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v3, v3, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object p0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v3, v4, p0}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    goto :goto_0

    .line 162
    .restart local p0
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v3, v3, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v3, v4, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_1

    .line 168
    :cond_2
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 169
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v3, v3, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v3, v4, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_0

    .line 171
    :cond_3
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 172
    .local v2, clirArray:[I
    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 173
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v3, v3, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v3, v4, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_0

    .line 177
    :cond_4
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v3, v2}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    goto :goto_0
.end method

.method private handleSetCLIRResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 183
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 185
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 193
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 143
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference$MyHandler;->handleGetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference$MyHandler;->handleSetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
