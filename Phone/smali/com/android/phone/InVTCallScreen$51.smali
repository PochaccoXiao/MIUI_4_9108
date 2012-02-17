.class Lcom/android/phone/InVTCallScreen$51;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 10783
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setBrightness(I)V
    .locals 5
    .parameter "brightness"

    .prologue
    const-wide/high16 v3, 0x4024

    .line 10874
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 10875
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    .line 10877
    int-to-double v1, p1

    div-double/2addr v1, v3

    const-wide v3, 0x3f94141414141414L

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 10883
    :goto_0
    const-string v1, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lp.screenBrightness Changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10884
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10886
    return-void

    .line 10881
    :cond_0
    int-to-double v1, p1

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x5

    const-string v5, "InVTCallScreen"

    .line 10787
    const-string v3, "InVTCallScreen"

    const-string v3, "Inside OnSeekBarChangeListener :: onProgressChanged"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10789
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$10400(Lcom/android/phone/InVTCallScreen;)I

    move-result v3

    if-nez v3, :cond_1

    .line 10790
    const-string v3, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Zoom control Progress Changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10791
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10792
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 10856
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$10900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->cancel()V

    .line 10857
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$10900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->start()Landroid/os/CountDownTimer;

    .line 10858
    return-void

    .line 10794
    :cond_1
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$10400(Lcom/android/phone/InVTCallScreen;)I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 10795
    const-string v3, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Brightness control Progress Changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10797
    const/16 v3, 0xa

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 10798
    .local v1, brightnessval:[I
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 10799
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    aget v4, v1, p2

    invoke-virtual {v3, v7, v4}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 10801
    :cond_2
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mCameraBrightness:I
    invoke-static {v3, p2}, Lcom/android/phone/InVTCallScreen;->access$10502(Lcom/android/phone/InVTCallScreen;I)I

    goto :goto_0

    .line 10806
    .end local v1           #brightnessval:[I
    :cond_3
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$10400(Lcom/android/phone/InVTCallScreen;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 10808
    const-string v3, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LCD brightness control Progress Changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10810
    invoke-direct {p0, p2}, Lcom/android/phone/InVTCallScreen$51;->setBrightness(I)V

    .line 10811
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->bchangebrightness:Z
    invoke-static {v3, v7}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_0

    .line 10816
    :cond_4
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$10400(Lcom/android/phone/InVTCallScreen;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 10818
    const-string v3, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contrast control Progress Changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10819
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10821
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$10700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 10823
    new-array v2, v6, [I

    fill-array-data v2, :array_1

    .line 10826
    .local v2, frontcontraval:[I
    if-lt p2, v6, :cond_6

    .line 10828
    const/4 p2, 0x4

    .line 10834
    :cond_5
    :goto_1
    const-string v3, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++++++++++++++++++Front camera Contrast control value is  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10835
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    aget v4, v2, p2

    invoke-virtual {v3, v8, v4}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 10852
    .end local v2           #frontcontraval:[I
    :goto_2
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mCameraContrast:I
    invoke-static {v3, p2}, Lcom/android/phone/InVTCallScreen;->access$10802(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_0

    .line 10830
    .restart local v2       #frontcontraval:[I
    :cond_6
    if-gez p2, :cond_5

    .line 10832
    const/4 p2, 0x0

    goto :goto_1

    .line 10840
    .end local v2           #frontcontraval:[I
    :cond_7
    new-array v0, v6, [I

    fill-array-data v0, :array_2

    .line 10841
    .local v0, backcontraval:[I
    if-lt p2, v6, :cond_9

    .line 10843
    const/4 p2, 0x4

    .line 10849
    :cond_8
    :goto_3
    const-string v3, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++++++++++++++++++back camera Contrast control value is  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10850
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    aget v4, v0, p2

    invoke-virtual {v3, v8, v4}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_2

    .line 10845
    :cond_9
    if-gez p2, :cond_8

    .line 10847
    const/4 p2, 0x0

    goto :goto_3

    .line 10797
    :array_0
    .array-data 0x4
        0xfct 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
        0xfet 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 10823
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 10840
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 10863
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->brightOwnImage()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$11000(Lcom/android/phone/InVTCallScreen;)V

    .line 10864
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->cancel()V

    .line 10866
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 10869
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$51;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10900(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->start()Landroid/os/CountDownTimer;

    .line 10870
    return-void
.end method
