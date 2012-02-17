.class public Landroid/hardware/TvOut;
.super Ljava/lang/Object;
.source "TvOut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/TvOut$EventHandler;
    }
.end annotation


# static fields
.field private static final ITVOUT:Ljava/lang/String; = "android.hardware.tvout"

.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "TvOut-Client"

.field private static final TVOUT_COMPLETE:I = 0x2

.field private static final TVOUT_NOP:I = 0x0

.field private static final TVOUT_PREPARED:I = 0x1


# instance fields
.field private mEventHandler:Landroid/hardware/TvOut$EventHandler;

.field private mListenerContext:I

.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "tvout_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/hardware/TvOut;->_native_setup(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method private native _DisableTvOut()V
.end method

.method private native _EnableTvOut()V
.end method

.method private native _GetSuspendString()Ljava/lang/String;
.end method

.method private native _SetOrientation(I)V
.end method

.method private native _SetTvScreenSize(I)V
.end method

.method private native _SetTvSystem(I)V
.end method

.method private native _SetTvoutHdmiDualStatus(I)V
.end method

.method private native _SetTvoutHdmiStatus(I)Z
.end method

.method private native _TvOutDisableHDMISubtitleOn(I)V
.end method

.method private native _TvOutEnableHDMISubtitleOn(I)Z
.end method

.method private native _TvOutHdmiSuspend(Ljava/lang/String;)V
.end method

.method private native _TvOutPostHDMIBitmap(Landroid/graphics/Bitmap;)V
.end method

.method private native _TvOutPostHDMISubtitle(Ljava/lang/String;)V
.end method

.method private native _TvOutResume(I)V
.end method

.method private native _TvOutSetImageString(Ljava/lang/String;)V
.end method

.method private native _TvOutSuspend(Ljava/lang/String;)V
.end method

.method private native _TvoutGetHDCPStatus()Z
.end method

.method private native _TvoutSetHDCPStatus(Z)Z
.end method

.method private native _enableEdid(I)V
.end method

.method private native _getSubtitleHDMIHeight()I
.end method

.method private native _getSubtitleHDMIWidth()I
.end method

.method private native _isEnabled()Z
.end method

.method private native _isHDMISubtitleOn()Z
.end method

.method private native _isHdmiCableConnected()Z
.end method

.method private native _isHdmiDualEnabled()Z
.end method

.method private native _isHdmiEnabled()Z
.end method

.method private native _isHdmiSuspended()Z
.end method

.method private native _isSuspended()Z
.end method

.method private native _isTvoutCableConnected()Z
.end method

.method private final native _native_setup(Ljava/lang/Object;)V
.end method

.method private native _postSubtitleString(Ljava/lang/String;)V
.end method

.method private final native _release()V
.end method

.method private native _setHdmiCableConnected(I)V
.end method

.method private native _setHdmiResolutionAndOutputType(II)V
.end method

.method private native _setOverlayType(I)V
.end method

.method private native _setTvoutCableConnected(I)V
.end method

.method private native _setVideoScaleType(I)V
.end method

.method static synthetic access$000(Landroid/hardware/TvOut;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/hardware/TvOut;->mNativeContext:I

    return v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "tvout_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 132
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/TvOut;

    .line 133
    .local v1, tvout:Landroid/hardware/TvOut;
    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v2, v1, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, v1, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/TvOut$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 139
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    invoke-virtual {v2, v0}, Landroid/hardware/TvOut$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public DisableTvOut()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/hardware/TvOut;->_DisableTvOut()V

    .line 180
    return-void
.end method

.method public EnableTvOut()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/hardware/TvOut;->_EnableTvOut()V

    .line 161
    return-void
.end method

.method public GetSuspendString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    invoke-direct {p0}, Landroid/hardware/TvOut;->_GetSuspendString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 242
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetOrientation(I)V

    .line 246
    return-void
.end method

.method public SetTvScreenSize(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetTvScreenSize(I)V

    .line 206
    return-void
.end method

.method public SetTvSystem(I)V
    .locals 0
    .parameter "system"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetTvSystem(I)V

    .line 223
    return-void
.end method

.method public SetTvoutHdmiDualStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 425
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetTvoutHdmiDualStatus(I)V

    .line 426
    return-void
.end method

.method public SetTvoutHdmiStatus(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 364
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetTvoutHdmiStatus(I)Z

    move-result v0

    return v0
.end method

.method public TvOutDisableHDMISubtitleOn(I)V
    .locals 0
    .parameter "mSubTitleOn"

    .prologue
    .line 407
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutDisableHDMISubtitleOn(I)V

    .line 408
    return-void
.end method

.method public TvOutEnableHDMISubtitleOn(I)Z
    .locals 1
    .parameter "mSubTitleOn"

    .prologue
    .line 386
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutEnableHDMISubtitleOn(I)Z

    move-result v0

    return v0
.end method

.method public TvOutHdmiSuspend(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "tvText"

    .prologue
    .line 273
    const v2, 0x10403e5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, text:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 278
    .local v0, resources:Landroid/content/res/Resources;
    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    invoke-direct {p0, v1}, Landroid/hardware/TvOut;->_TvOutSetImageString(Ljava/lang/String;)V

    .line 282
    invoke-direct {p0, p2}, Landroid/hardware/TvOut;->_TvOutHdmiSuspend(Ljava/lang/String;)V

    .line 290
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-direct {p0, p2}, Landroid/hardware/TvOut;->_TvOutHdmiSuspend(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TvOutPostHDMIBitmap(Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "bitmap"
    .parameter "chroma_key"

    .prologue
    .line 415
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutPostHDMIBitmap(Landroid/graphics/Bitmap;)V

    .line 416
    return-void
.end method

.method public TvOutPostHDMISubtitle(Ljava/lang/String;)V
    .locals 0
    .parameter "mSubTitleText"

    .prologue
    .line 393
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutPostHDMISubtitle(Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public TvOutResume(I)V
    .locals 0
    .parameter "tvoutTime"

    .prologue
    .line 296
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutResume(I)V

    .line 298
    return-void
.end method

.method public TvOutSetImageString(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 317
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutSetImageString(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public TvOutSuspend(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "tvText"

    .prologue
    .line 251
    const v2, 0x10403e4

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, text:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 256
    .local v0, resources:Landroid/content/res/Resources;
    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-direct {p0, v1}, Landroid/hardware/TvOut;->_TvOutSetImageString(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0, p2}, Landroid/hardware/TvOut;->_TvOutSuspend(Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-direct {p0, p2}, Landroid/hardware/TvOut;->_TvOutSuspend(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TvoutGetHDCPStatus()Z
    .locals 2

    .prologue
    .line 470
    const-string v0, "TvOut-Client"

    const-string v1, "TvoutGetHDCPStatus -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-direct {p0}, Landroid/hardware/TvOut;->_TvoutGetHDCPStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutSetHDCPStatus(Z)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 467
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvoutSetHDCPStatus(Z)Z

    move-result v0

    return v0
.end method

.method public enableEdid(I)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_enableEdid(I)V

    .line 441
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/hardware/TvOut;->_release()V

    .line 63
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 64
    return-void
.end method

.method public getSubtitleHDMIHeight()I
    .locals 1

    .prologue
    .line 435
    invoke-direct {p0}, Landroid/hardware/TvOut;->_getSubtitleHDMIHeight()I

    move-result v0

    return v0
.end method

.method public getSubtitleHDMIWidth()I
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0}, Landroid/hardware/TvOut;->_getSubtitleHDMIWidth()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isEnabled()Z

    move-result v0

    return v0
.end method

.method public isHDMISubtitleOn()Z
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isHDMISubtitleOn()Z

    move-result v0

    return v0
.end method

.method public isHdmiCableConnected()Z
    .locals 1

    .prologue
    .line 356
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isHdmiCableConnected()Z

    move-result v0

    return v0
.end method

.method public isHdmiDualEnabled()Z
    .locals 1

    .prologue
    .line 420
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isHdmiDualEnabled()Z

    move-result v0

    return v0
.end method

.method public isHdmiEnabled()Z
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isHdmiEnabled()Z

    move-result v0

    return v0
.end method

.method public isHdmiSuspended()Z
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isHdmiSuspended()Z

    move-result v0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isSuspended()Z

    move-result v0

    return v0
.end method

.method public isTvoutCableConnected()Z
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isTvoutCableConnected()Z

    move-result v0

    return v0
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 70
    .local v0, parcel:Landroid/os/Parcel;
    const-string v1, "android.hardware.tvout"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 72
    return-object v0
.end method

.method public postSubtitleString(Ljava/lang/String;)V
    .locals 0
    .parameter "subtitle"

    .prologue
    .line 460
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_postSubtitleString(Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/hardware/TvOut;->_release()V

    .line 98
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public setHdmiCableConnected(I)V
    .locals 0
    .parameter "hdmiCableConnected"

    .prologue
    .line 377
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_setHdmiCableConnected(I)V

    .line 378
    return-void
.end method

.method public setHdmiResolutionAndOutputType(II)V
    .locals 0
    .parameter "resolution"
    .parameter "outputType"

    .prologue
    .line 445
    invoke-direct {p0, p1, p2}, Landroid/hardware/TvOut;->_setHdmiResolutionAndOutputType(II)V

    .line 446
    return-void
.end method

.method public setOverlayType(I)V
    .locals 0
    .parameter "overlayType"

    .prologue
    .line 455
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_setOverlayType(I)V

    .line 456
    return-void
.end method

.method public setTvoutCableConnected(I)V
    .locals 0
    .parameter "tvoutCableConnected"

    .prologue
    .line 371
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_setTvoutCableConnected(I)V

    .line 372
    return-void
.end method

.method public setVideoScaleType(I)V
    .locals 0
    .parameter "scaleType"

    .prologue
    .line 450
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_setVideoScaleType(I)V

    .line 451
    return-void
.end method
