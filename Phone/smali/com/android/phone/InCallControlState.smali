.class public Lcom/android/phone/InCallControlState;
.super Ljava/lang/Object;
.source "InCallControlState.java"


# instance fields
.field public bluetoothEnabled:Z

.field public bluetoothIndicatorOn:Z

.field public canAddCall:Z

.field public canHold:Z

.field public canMerge:Z

.field public canMute:Z

.field public canRejectWithMsg:Z

.field public canSwap:Z

.field public canTransfer:Z

.field public dialpadEnabled:Z

.field public dialpadVisible:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field public manageConferenceEnabled:Z

.field public manageConferenceVisible:Z

.field public muteIndicatorOn:Z

.field public onHold:Z

.field public speakerEnabled:Z

.field public speakerOn:Z

.field public supportsHold:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 95
    iput-object p2, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 96
    return-void
.end method


# virtual methods
.method public update()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 103
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-nez v11, :cond_5

    move v5, v14

    .line 104
    .local v5, hasRingingCall:Z
    :goto_0
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 105
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 106
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v11, :cond_6

    move v3, v14

    .line 107
    .local v3, hasActiveForegroundCall:Z
    :goto_1
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .line 110
    .local v4, hasHoldingCall:Z
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 114
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 115
    iget-boolean v11, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v11

    if-nez v11, :cond_7

    move v11, v14

    :goto_2
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    .line 124
    :goto_3
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 125
    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 127
    .local v0, c:Lcom/android/internal/telephony/Connection;
    iget-boolean v11, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    move v12, v14

    :goto_4
    and-int/2addr v11, v12

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 130
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 131
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    .line 132
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canTransfer:Z

    .line 135
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 136
    iput-boolean v14, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 137
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    .line 145
    :goto_5
    iput-boolean v14, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 147
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 153
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 154
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    const/4 v7, 0x0

    .line 155
    .local v7, isEmergencyCall:Z
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    .line 156
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    .line 157
    .local v6, isECM:Z
    if-nez v7, :cond_2

    if-eqz v6, :cond_b

    .line 158
    :cond_2
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 159
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    .line 167
    :goto_6
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 171
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    .line 174
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 176
    iput-boolean v14, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 180
    if-eqz v4, :cond_c

    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v11, :cond_c

    move v11, v14

    :goto_7
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 183
    if-eqz v3, :cond_d

    if-nez v4, :cond_d

    move v8, v14

    .line 184
    .local v8, okToHold:Z
    :goto_8
    iget-boolean v9, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 185
    .local v9, okToUnhold:Z
    if-nez v8, :cond_3

    if-eqz v9, :cond_e

    :cond_3
    move v11, v14

    :goto_9
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 218
    .end local v8           #okToHold:Z
    .end local v9           #okToUnhold:Z
    :goto_a
    if-eqz v5, :cond_11

    .line 219
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v10

    .line 220
    .local v10, presentation:I
    sget v11, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v10, v11, :cond_4

    sget v11, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v10, v11, :cond_10

    .line 221
    :cond_4
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    .line 229
    .end local v10           #presentation:I
    :goto_b
    return-void

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v3           #hasActiveForegroundCall:Z
    .end local v4           #hasHoldingCall:Z
    .end local v5           #hasRingingCall:Z
    .end local v6           #isECM:Z
    .end local v7           #isEmergencyCall:Z
    :cond_5
    move v5, v13

    .line 103
    goto/16 :goto_0

    .restart local v1       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v2       #fgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v5       #hasRingingCall:Z
    :cond_6
    move v3, v13

    .line 106
    goto/16 :goto_1

    .restart local v3       #hasActiveForegroundCall:Z
    .restart local v4       #hasHoldingCall:Z
    :cond_7
    move v11, v13

    .line 115
    goto/16 :goto_2

    .line 119
    :cond_8
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 120
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_3

    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    :cond_9
    move v12, v13

    .line 127
    goto/16 :goto_4

    .line 139
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_a
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 140
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_5

    .line 161
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    .restart local v6       #isECM:Z
    .restart local v7       #isEmergencyCall:Z
    :cond_b
    iput-boolean v3, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 162
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto :goto_6

    :cond_c
    move v11, v13

    .line 180
    goto :goto_7

    :cond_d
    move v8, v13

    .line 183
    goto :goto_8

    .restart local v8       #okToHold:Z
    .restart local v9       #okToUnhold:Z
    :cond_e
    move v11, v13

    .line 185
    goto :goto_9

    .line 188
    .end local v8           #okToHold:Z
    .end local v9           #okToUnhold:Z
    :cond_f
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 189
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 190
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto :goto_a

    .line 223
    .restart local v10       #presentation:I
    :cond_10
    iput-boolean v14, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    goto :goto_b

    .line 225
    .end local v10           #presentation:I
    :cond_11
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    goto :goto_b
.end method
