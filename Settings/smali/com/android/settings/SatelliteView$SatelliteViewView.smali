.class Lcom/android/settings/SatelliteView$SatelliteViewView;
.super Landroid/view/View;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SatelliteViewView"
.end annotation


# static fields
.field static sx:I

.field static sy:I


# instance fields
.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 667
    const/16 v0, 0xcb

    sput v0, Lcom/android/settings/SatelliteView$SatelliteViewView;->sx:I

    .line 668
    const/16 v0, 0x14d

    sput v0, Lcom/android/settings/SatelliteView$SatelliteViewView;->sy:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 675
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 669
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/SatelliteView$SatelliteViewView;->mState:I

    .line 676
    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/SatelliteView$SatelliteViewView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 666
    invoke-direct {p0, p1}, Lcom/android/settings/SatelliteView$SatelliteViewView;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 679
    iput p1, p0, Lcom/android/settings/SatelliteView$SatelliteViewView;->mState:I

    .line 680
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/16 v12, 0xf0

    const/16 v11, 0x9

    const/high16 v10, -0x1

    const v9, 0x441d8000

    const-wide/high16 v7, 0x4000

    .line 703
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    sget v0, Lcom/android/settings/SatelliteView;->mNoOfSat:I

    if-ge v6, v0, :cond_4

    .line 705
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1000()[F

    move-result-object v0

    aget v0, v0, v6

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 708
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1100()[I

    move-result-object v0

    aget v0, v0, v6

    sub-int/2addr v0, v12

    int-to-double v0, v0

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1200()[I

    move-result-object v2

    aget v2, v2, v6

    const/16 v3, 0x172

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4069

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 710
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1100()[I

    move-result-object v0

    aput v12, v0, v6

    .line 711
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1200()[I

    move-result-object v0

    const/16 v1, 0x172

    aput v1, v0, v6

    .line 714
    :cond_0
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 715
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 716
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1100()[I

    move-result-object v0

    aget v0, v0, v6

    int-to-float v0, v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1200()[I

    move-result-object v1

    aget v1, v1, v6

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 718
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 719
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 720
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 721
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 722
    if-ge v6, v11, :cond_2

    .line 723
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1100()[I

    move-result-object v1

    aget v1, v1, v6

    const/16 v2, 0xa

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1200()[I

    move-result-object v2

    aget v2, v2, v6

    add-int/lit8 v2, v2, 0xd

    int-to-float v2, v2

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 728
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 729
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 730
    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x5

    int-to-float v1, v0

    const/16 v0, 0x258

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1000()[F

    move-result-object v2

    aget v2, v2, v6

    float-to-int v2, v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x23

    int-to-float v3, v0

    const/high16 v4, 0x4416

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 733
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 734
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 735
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41b0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 736
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 739
    if-ge v6, v11, :cond_3

    .line 740
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x28

    add-int/lit8 v1, v1, 0xf

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 703
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 725
    :cond_2
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1100()[I

    move-result-object v1

    aget v1, v1, v6

    const/16 v2, 0xf

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1200()[I

    move-result-object v2

    aget v2, v2, v6

    add-int/lit8 v2, v2, 0xd

    int-to-float v2, v2

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 742
    :cond_3
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x28

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 751
    :cond_4
    return-void
.end method

.method public setPoint(DD)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v5, 0x4069

    const-wide/high16 v3, 0x4000

    .line 683
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 684
    .local v0, lengthPoint:F
    const/high16 v1, 0x4348

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 685
    mul-double v1, p1, v5

    float-to-double v3, v0

    div-double p1, v1, v3

    .line 686
    mul-double v1, p3, v5

    float-to-double v3, v0

    div-double p3, v1, v3

    .line 689
    :cond_0
    const-wide v1, 0x4069600000000000L

    add-double/2addr v1, p1

    double-to-int v1, v1

    sput v1, Lcom/android/settings/SatelliteView$SatelliteViewView;->sx:I

    .line 690
    const-wide v1, 0x4074d00000000000L

    sub-double/2addr v1, p3

    double-to-int v1, v1

    sput v1, Lcom/android/settings/SatelliteView$SatelliteViewView;->sy:I

    .line 692
    return-void
.end method
