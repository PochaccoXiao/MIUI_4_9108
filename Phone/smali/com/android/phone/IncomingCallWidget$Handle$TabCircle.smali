.class public Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;
.super Landroid/view/View;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallWidget$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabCircle"
.end annotation


# instance fields
.field private mLinePaint:Landroid/graphics/Paint;

.field private mRadius:F

.field final synthetic this$1:Lcom/android/phone/IncomingCallWidget$Handle;


# direct methods
.method public constructor <init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "radius"

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    .line 737
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 738
    invoke-direct {p0, p3}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->init(F)V

    .line 739
    return-void
.end method

.method private init(F)V
    .locals 2
    .parameter "radius"

    .prologue
    .line 747
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    .line 748
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 749
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I
    invoke-static {v1}, Lcom/android/phone/IncomingCallWidget$Handle;->access$1100(Lcom/android/phone/IncomingCallWidget$Handle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 750
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 751
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget;->access$500(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 757
    :goto_0
    iput p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mRadius:F

    .line 758
    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0
.end method


# virtual methods
.method public isInCircle(FF)Z
    .locals 20
    .parameter "x"
    .parameter "y"

    .prologue
    .line 764
    const-wide v3, 0x3ff4cccccccccccdL

    .line 766
    .local v3, ACTIVE_RATIO:D
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v15, v0

    .line 767
    .local v15, tmpPos:[I
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->getLocationOnScreen([I)V

    .line 769
    const/16 v16, 0x0

    aget v16, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move v9, v0

    .line 770
    .local v9, pivotX:F
    const/16 v16, 0x1

    aget v16, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->getHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I
    invoke-static/range {v17 .. v17}, Lcom/android/phone/IncomingCallWidget$Handle;->access$1200(Lcom/android/phone/IncomingCallWidget$Handle;)I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move v10, v0

    .line 772
    .local v10, pivotY:F
    sub-float v16, p1, v9

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 773
    .local v5, dx:D
    sub-float v16, p2, v10

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    .line 775
    .local v7, dy:D
    mul-double v16, v5, v5

    mul-double v18, v7, v7

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    .line 777
    .local v11, posLength:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mRadius:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v13, v11, v16

    .line 779
    .local v13, ratio:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isInCircle - x : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " y : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ratio : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 781
    const-wide v16, 0x3ff4cccccccccccdL

    cmpg-double v16, v13, v16

    if-gez v16, :cond_0

    .line 782
    const/16 v16, 0x1

    .line 784
    :goto_0
    return v16

    :cond_0
    const/16 v16, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mRadius:F

    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 791
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 744
    :cond_0
    return-void
.end method
