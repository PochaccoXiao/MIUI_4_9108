.class public Lcom/android/phone/PhoneInfoLGT;
.super Ljava/lang/Object;
.source "PhoneInfoLGT.java"


# static fields
.field private static final DBG:Z

.field public static IsVTCallInRejectList:Z

.field public static OTACancel:Z

.field public static PrlupdateSuccessString:Ljava/lang/String;

.field public static RoamingOTA:Z

.field public static SEND_MY_NUMBER:Z

.field private static final VDBG:Z

.field public static callEnd:Z

.field public static currentPrlVer:Ljava/lang/String;

.field public static durationTime:J

.field static isSendDtmf:Z

.field static isSendEmptyFlash:Z

.field private static mIsStartVideoCallActivity:Z

.field public static mPlaceCallTime:J

.field public static roamingDebug:Z

.field private static sMe:Lcom/android/phone/PhoneInfoLGT;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 82
    sput-boolean v1, Lcom/android/phone/PhoneInfoLGT;->DBG:Z

    .line 87
    sget-boolean v0, Lcom/android/phone/PhoneInfoLGT;->DBG:Z

    sput-boolean v0, Lcom/android/phone/PhoneInfoLGT;->VDBG:Z

    .line 94
    sput-boolean v1, Lcom/android/phone/PhoneInfoLGT;->mIsStartVideoCallActivity:Z

    .line 96
    sput-wide v2, Lcom/android/phone/PhoneInfoLGT;->mPlaceCallTime:J

    .line 97
    sput-wide v2, Lcom/android/phone/PhoneInfoLGT;->durationTime:J

    .line 100
    sput-boolean v1, Lcom/android/phone/PhoneInfoLGT;->RoamingOTA:Z

    .line 101
    sput-boolean v1, Lcom/android/phone/PhoneInfoLGT;->OTACancel:Z

    .line 192
    sput-boolean v1, Lcom/android/phone/PhoneInfoLGT;->callEnd:Z

    .line 198
    sput-boolean v1, Lcom/android/phone/PhoneInfoLGT;->SEND_MY_NUMBER:Z

    .line 200
    sput-boolean v1, Lcom/android/phone/PhoneInfoLGT;->roamingDebug:Z

    .line 202
    sput-boolean v1, Lcom/android/phone/PhoneInfoLGT;->IsVTCallInRejectList:Z

    .line 367
    sput-boolean v1, Lcom/android/phone/PhoneInfoLGT;->isSendEmptyFlash:Z

    .line 369
    sput-boolean v1, Lcom/android/phone/PhoneInfoLGT;->isSendDtmf:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    sput-object p0, Lcom/android/phone/PhoneInfoLGT;->sMe:Lcom/android/phone/PhoneInfoLGT;

    .line 207
    return-void
.end method

.method public static setEmptyFlash(Z)V
    .locals 0
    .parameter "isSend"

    .prologue
    .line 377
    sput-boolean p0, Lcom/android/phone/PhoneInfoLGT;->isSendEmptyFlash:Z

    .line 378
    return-void
.end method

.method public static setPrlupdateSuccessString()V
    .locals 5

    .prologue
    .line 400
    sget-object v1, Lcom/android/phone/PhoneInfoLGT;->currentPrlVer:Ljava/lang/String;

    .line 401
    .local v1, lastest_prl:Ljava/lang/String;
    const-string v2, "ril.prl_ver_3"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, current_prl:Ljava/lang/String;
    const-string v2, "PhoneInfoLGT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastest_prl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , current_prl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d03fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/PhoneInfoLGT;->PrlupdateSuccessString:Ljava/lang/String;

    .line 409
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d03fd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/PhoneInfoLGT;->PrlupdateSuccessString:Ljava/lang/String;

    .line 407
    sput-object v0, Lcom/android/phone/PhoneInfoLGT;->currentPrlVer:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setSendDtmf(Z)V
    .locals 0
    .parameter "isSend"

    .prologue
    .line 386
    sput-boolean p0, Lcom/android/phone/PhoneInfoLGT;->isSendDtmf:Z

    .line 387
    return-void
.end method
