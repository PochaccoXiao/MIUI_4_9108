.class public final Lcom/ti/omap/omap_mm_library/UiCloningService;
.super Ljava/lang/Object;
.source "UiCloningService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_HDMI_PLUG:Ljava/lang/String; = "android.intent.action.HDMI_PLUG"

.field private static final ACTION_TVOUT_SETTING:Ljava/lang/String; = "android.intent.action.ACTION_TVOUT_SETTING"

.field private static final DISPLAY_ROTATION_0:I = 0x0

.field private static final DISPLAY_ROTATION_180:I = 0x2

.field private static final DISPLAY_ROTATION_270:I = 0x3

.field private static final DISPLAY_ROTATION_90:I = 0x1

.field private static final DISPLAY_TYPE_HDMI_TV:I = 0x2

.field private static final DISPLAY_TYPE_LCD_SECONDARY:I = 0x1

.field private static final DISPLAY_TYPE_NONE:I = -0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDisplayId:I

.field mIWindowManager:Landroid/view/IWindowManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "omap_mm_library_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v3, "UiCloningService"

    iput-object v3, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->TAG:Ljava/lang/String;

    .line 53
    new-instance v3, Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/ti/omap/omap_mm_library/UiCloningService$UiCloningBroadcastReceiver;-><init>(Lcom/ti/omap/omap_mm_library/UiCloningService;Lcom/ti/omap/omap_mm_library/UiCloningService$1;)V

    iput-object v3, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    const/4 v3, -0x1

    iput v3, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mDisplayId:I

    .line 60
    const/4 v3, 0x0

    iput v3, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mRotation:I

    .line 63
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HDMI_PLUG"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_TVOUT_SETTING"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, intentFilterForHDMITEST:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 68
    iget-object v3, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mIWindowManager:Landroid/view/IWindowManager;

    if-eqz v3, :cond_0

    .line 70
    :try_start_0
    iget-object v3, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mIWindowManager:Landroid/view/IWindowManager;

    new-instance v4, Lcom/ti/omap/omap_mm_library/UiCloningService$1;

    invoke-direct {v4, p0}, Lcom/ti/omap/omap_mm_library/UiCloningService$1;-><init>(Lcom/ti/omap/omap_mm_library/UiCloningService;)V

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v3

    iput v3, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 78
    .local v0, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->TAG:Ljava/lang/String;

    const-string v4, "watchRotation():RemoteException in onRotationChanged()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native CloneUiSetDisplay(II)V
.end method

.method private native CloneUiSetRotation(II)V
.end method

.method private native TvOutPrefSetParameters(III)V
.end method

.method static synthetic access$100(Lcom/ti/omap/omap_mm_library/UiCloningService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ti/omap/omap_mm_library/UiCloningService;->onRotationChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/ti/omap/omap_mm_library/UiCloningService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ti/omap/omap_mm_library/UiCloningService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mDisplayId:I

    return v0
.end method

.method static synthetic access$302(Lcom/ti/omap/omap_mm_library/UiCloningService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mDisplayId:I

    return p1
.end method

.method static synthetic access$400(Lcom/ti/omap/omap_mm_library/UiCloningService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mRotation:I

    return v0
.end method

.method static synthetic access$500(Lcom/ti/omap/omap_mm_library/UiCloningService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/ti/omap/omap_mm_library/UiCloningService;->CloneUiSetDisplay(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/ti/omap/omap_mm_library/UiCloningService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/ti/omap/omap_mm_library/UiCloningService;->TvOutPrefSetParameters(III)V

    return-void
.end method

.method private onRotationChanged(I)V
    .locals 5
    .parameter "rotation"

    .prologue
    const-string v4, "persist.sys.GfxRotation"

    .line 85
    iget-object v1, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRotationChanged +: rotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, rotationDesired:I
    packed-switch p1, :pswitch_data_0

    .line 109
    const/4 v0, 0x0

    .line 113
    :goto_0
    iget v1, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mRotation:I

    if-eq v1, v0, :cond_1

    .line 114
    iput v0, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mRotation:I

    .line 116
    iget v1, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mDisplayId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 120
    :cond_0
    const-string v1, "persist.sys.GfxRotation"

    iget v1, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mRotation:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actual mRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and from sys prop mRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.GfxRotation"

    const/4 v3, 0x0

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRotationChanged -: mRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ti/omap/omap_mm_library/UiCloningService;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 93
    :pswitch_0
    const/4 v0, 0x0

    .line 94
    goto :goto_0

    .line 97
    :pswitch_1
    const/4 v0, 0x3

    .line 98
    goto :goto_0

    .line 101
    :pswitch_2
    const/4 v0, 0x2

    .line 102
    goto :goto_0

    .line 105
    :pswitch_3
    const/4 v0, 0x1

    .line 106
    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
