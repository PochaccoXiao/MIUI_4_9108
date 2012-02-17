.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 68
    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 70
    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 76
    iput-object v2, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 77
    iput-object v2, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/GridView;->mGravity:I

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput v8, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 68
    iput v7, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 70
    iput v7, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 71
    iput v9, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 76
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 77
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 79
    iput v11, p0, Landroid/widget/GridView;->mGravity:I

    .line 81
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 94
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 99
    .local v2, hSpacing:I
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 101
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 103
    .local v5, vSpacing:I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 105
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 106
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 107
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 110
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 111
    .local v1, columnWidth:I
    if-lez v1, :cond_1

    .line 112
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 115
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 116
    .local v4, numColumns:I
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 118
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 119
    if-ltz v3, :cond_2

    .line 120
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setGravity(I)V

    .line 123
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 722
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 726
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 730
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 731
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 734
    .local v0, offset:I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 736
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 750
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 753
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 757
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 758
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 761
    .local v0, offset:I
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 763
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 1807
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 1809
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 1813
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 1816
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1817
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 1818
    .local v2, delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 1821
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 1823
    :cond_0
    if-gez v2, :cond_1

    .line 1825
    const/4 v2, 0x0

    .line 1844
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1845
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 1848
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 1829
    :cond_3
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1830
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 1832
    .restart local v2       #delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 1835
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 1838
    :cond_4
    if-lez v2, :cond_1

    .line 1840
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x82

    const/16 v4, 0x21

    const/4 v3, 0x1

    .line 1412
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    move v2, v6

    .line 1500
    :goto_0
    return v2

    .line 1416
    :cond_0
    iget-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 1417
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1420
    :cond_1
    const/4 v1, 0x0

    .line 1421
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1423
    .local v0, action:I
    if-eq v0, v3, :cond_3

    .line 1424
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v2, :cond_2

    .line 1425
    sparse-switch p1, :sswitch_data_0

    .line 1438
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 1485
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 1486
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1489
    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    .line 1490
    goto :goto_0

    .line 1433
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelection()Z

    move v2, v3

    .line 1434
    goto :goto_0

    .line 1440
    :sswitch_1
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    .line 1441
    goto :goto_1

    .line 1444
    :sswitch_2
    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    .line 1445
    goto :goto_1

    .line 1448
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1449
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1452
    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v1

    .line 1454
    goto :goto_1

    .line 1457
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1458
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1460
    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v1

    .line 1462
    goto :goto_1

    .line 1466
    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 1467
    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    :cond_7
    move v2, v3

    .line 1470
    goto :goto_0

    .line 1474
    :sswitch_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1475
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1476
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1478
    :cond_9
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1492
    :cond_a
    packed-switch v0, :pswitch_data_0

    move v2, v6

    .line 1500
    goto/16 :goto_0

    .line 1494
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1496
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1498
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1425
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1438
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 1492
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 10
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    const/4 v9, 0x1

    .line 534
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, p3

    sub-int v6, v7, v9

    .line 535
    .local v6, lastPosition:I
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v7, v9

    if-ne v6, v7, :cond_2

    if-lez p3, :cond_2

    .line 537
    sub-int v7, p3, v9

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 540
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 542
    .local v4, lastBottom:I
    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 546
    .local v1, end:I
    sub-int v0, v1, v4

    .line 548
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 549
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 553
    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 554
    :cond_0
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 556
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 560
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 561
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 564
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v8, :cond_3

    move v8, v9

    :goto_0
    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 567
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 571
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_2
    return-void

    .restart local v0       #bottomOffset:I
    .restart local v1       #end:I
    .restart local v2       #firstChild:Landroid/view/View;
    .restart local v3       #firstTop:I
    .restart local v4       #lastBottom:I
    .restart local v5       #lastChild:Landroid/view/View;
    :cond_3
    move v8, p1

    .line 564
    goto :goto_0
.end method

.method private correctTooLow(III)V
    .locals 11
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    const/4 v10, 0x1

    .line 574
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p3, :cond_2

    .line 576
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 579
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 582
    .local v2, firstTop:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 585
    .local v6, start:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 589
    .local v0, end:I
    sub-int v7, v2, v6

    .line 590
    .local v7, topOffset:I
    sub-int v8, p3, v10

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 591
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 592
    .local v3, lastBottom:I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, p3

    sub-int v5, v8, v10

    .line 596
    .local v5, lastPosition:I
    if-lez v7, :cond_2

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_2

    .line 597
    :cond_0
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_1

    .line 599
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 603
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 604
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ge v5, v8, :cond_2

    .line 607
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v8, :cond_3

    move v8, v10

    :goto_0
    add-int/2addr v8, v5

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 610
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 614
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_2
    return-void

    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_3
    move v8, p1

    .line 607
    goto :goto_0
.end method

.method private determineColumns(I)V
    .locals 7
    .parameter "availableSpace"

    .prologue
    const/4 v6, 0x1

    .line 863
    iget v1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 864
    .local v1, requestedHorizontalSpacing:I
    iget v3, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 865
    .local v3, stretchMode:I
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 867
    .local v0, requestedColumnWidth:I
    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 868
    if-lez v0, :cond_1

    .line 870
    add-int v4, p1, v1

    add-int v5, v0, v1

    div-int/2addr v4, v5

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 881
    :goto_0
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    if-gtz v4, :cond_0

    .line 882
    iput v6, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 885
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 893
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v5, v6

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    .line 895
    .local v2, spaceLeftOver:I
    packed-switch v3, :pswitch_data_1

    .line 927
    .end local v2           #spaceLeftOver:I
    :goto_1
    return-void

    .line 874
    :cond_1
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    .line 878
    :cond_2
    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    .line 888
    :pswitch_0
    iput v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 889
    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 898
    .restart local v2       #spaceLeftOver:I
    :pswitch_1
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v4, v2, v4

    add-int/2addr v4, v0

    iput v4, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 899
    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 904
    :pswitch_2
    iput v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 905
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v4, v6, :cond_3

    .line 906
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v4, v6

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 909
    :cond_3
    add-int v4, v1, v2

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 915
    :pswitch_3
    iput v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 916
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v4, v6, :cond_4

    .line 917
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v4, v4, 0x1

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 920
    :cond_4
    add-int v4, v1, v2

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 885
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 895
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 5
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 239
    .local v1, selectedView:Landroid/view/View;
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 241
    .local v0, end:I
    :goto_0
    if-ge p2, v0, :cond_1

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v3, :cond_1

    .line 242
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 243
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 244
    move-object v1, v2

    .line 249
    :cond_0
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 251
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 252
    goto :goto_0

    .line 254
    .end local v2           #temp:Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .parameter "lastPosition"
    .parameter "nextBottom"

    .prologue
    const/4 v2, 0x1

    .line 365
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 366
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 368
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v2

    sub-int v0, v1, p1

    .line 369
    .local v0, invertedPosition:I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 371
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 18
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 627
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 628
    .local v6, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v13, v0

    .line 629
    .local v13, selectedPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v8, v0

    .line 630
    .local v8, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move v15, v0

    .line 633
    .local v15, verticalSpacing:I
    const/4 v10, -0x1

    .line 635
    .local v10, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 636
    rem-int v16, v13, v8

    sub-int v11, v13, v16

    .line 647
    .local v11, rowStart:I
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v6

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v14

    .line 648
    .local v14, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v6

    move v3, v8

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v5

    .line 651
    .local v5, bottomSelectionPixel:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move/from16 v16, v10

    :goto_1
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p1

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v12

    .line 653
    .local v12, sel:Landroid/view/View;
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v9, v0

    .line 656
    .local v9, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v14

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 657
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v14

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 659
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 660
    sub-int v16, v11, v8

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 661
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 662
    add-int v16, v11, v8

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v17

    add-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 670
    :goto_2
    return-object v12

    .line 638
    .end local v5           #bottomSelectionPixel:I
    .end local v9           #referenceView:Landroid/view/View;
    .end local v11           #rowStart:I
    .end local v12           #sel:Landroid/view/View;
    .end local v14           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    sub-int v7, v16, v13

    .line 640
    .local v7, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    rem-int v17, v7, v8

    sub-int v17, v7, v17

    sub-int v10, v16, v17

    .line 641
    const/16 v16, 0x0

    sub-int v17, v10, v8

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v11

    .restart local v11       #rowStart:I
    goto/16 :goto_0

    .end local v7           #invertedSelection:I
    .restart local v5       #bottomSelectionPixel:I
    .restart local v14       #topSelectionPixel:I
    :cond_1
    move/from16 v16, v11

    .line 651
    goto :goto_1

    .line 664
    .restart local v9       #referenceView:Landroid/view/View;
    .restart local v12       #sel:Landroid/view/View;
    :cond_2
    add-int v16, v10, v8

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v17

    add-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 665
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 666
    const/16 v16, 0x1

    sub-int v16, v11, v16

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .parameter "nextTop"

    .prologue
    .line 355
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 356
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 357
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 360
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 361
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 19
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 375
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v14

    .line 376
    .local v14, selectedPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v8, v0

    .line 377
    .local v8, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v16, v0

    .line 380
    .local v16, verticalSpacing:I
    const/4 v11, -0x1

    .line 382
    .local v11, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 383
    rem-int v17, v14, v8

    sub-int v12, v14, v17

    .line 391
    .local v12, rowStart:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 392
    .local v6, fadingEdgeLength:I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v6

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v15

    .line 394
    .local v15, topSelectionPixel:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move/from16 v17, v11

    :goto_1
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v13

    .line 395
    .local v13, sel:Landroid/view/View;
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v10, v0

    .line 399
    .local v10, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 400
    add-int v17, v12, v8

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v18

    add-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 401
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/GridView;->pinToBottom(I)V

    .line 402
    sub-int v17, v12, v8

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 403
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 415
    :goto_2
    return-object v13

    .line 385
    .end local v6           #fadingEdgeLength:I
    .end local v10           #referenceView:Landroid/view/View;
    .end local v12           #rowStart:I
    .end local v13           #sel:Landroid/view/View;
    .end local v15           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    sub-int v7, v17, v14

    .line 387
    .local v7, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    rem-int v18, v7, v8

    sub-int v18, v7, v18

    sub-int v11, v17, v18

    .line 388
    const/16 v17, 0x0

    sub-int v18, v11, v8

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v12

    .restart local v12       #rowStart:I
    goto/16 :goto_0

    .end local v7           #invertedSelection:I
    .restart local v6       #fadingEdgeLength:I
    .restart local v15       #topSelectionPixel:I
    :cond_1
    move/from16 v17, v12

    .line 394
    goto :goto_1

    .line 405
    .restart local v10       #referenceView:Landroid/view/View;
    .restart local v13       #sel:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v6

    move v3, v8

    move v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v5

    .line 407
    .local v5, bottomSelectionPixel:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v17

    sub-int v9, v5, v17

    .line 408
    .local v9, offset:I
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 409
    const/16 v17, 0x1

    sub-int v17, v12, v17

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 410
    invoke-direct/range {p0 .. p1}, Landroid/widget/GridView;->pinToTop(I)V

    .line 411
    add-int v17, v11, v8

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v18

    add-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 412
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v12, 0x1

    .line 473
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 476
    .local v6, numColumns:I
    const/4 v4, -0x1

    .line 478
    .local v4, motionRowEnd:I
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_0

    .line 479
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 487
    .local v5, motionRowStart:I
    :goto_0
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_1

    move v10, v4

    :goto_1
    invoke-direct {p0, v10, p2, v12}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 490
    .local v8, temp:Landroid/view/View;
    iput v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 492
    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 494
    .local v7, referenceView:Landroid/view/View;
    if-nez v7, :cond_2

    .line 495
    const/4 v10, 0x0

    .line 528
    :goto_2
    return-object v10

    .line 481
    .end local v5           #motionRowStart:I
    .end local v7           #referenceView:Landroid/view/View;
    .end local v8           #temp:Landroid/view/View;
    :cond_0
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v10, v12

    sub-int v3, v10, p1

    .line 483
    .local v3, invertedSelection:I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v10, v12

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 484
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #motionRowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    :cond_1
    move v10, v5

    .line 487
    goto :goto_1

    .line 498
    .restart local v7       #referenceView:Landroid/view/View;
    .restart local v8       #temp:Landroid/view/View;
    :cond_2
    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 503
    .local v9, verticalSpacing:I
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_4

    .line 504
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 505
    .local v0, above:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 506
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 508
    .local v1, below:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 509
    .local v2, childCount:I
    if-lez v2, :cond_3

    .line 510
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 523
    :cond_3
    :goto_3
    if-eqz v8, :cond_5

    move-object v10, v8

    .line 524
    goto :goto_2

    .line 513
    .end local v0           #above:Landroid/view/View;
    .end local v1           #below:Landroid/view/View;
    .end local v2           #childCount:I
    :cond_4
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 514
    .restart local v1       #below:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 515
    sub-int v10, v5, v12

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 517
    .restart local v0       #above:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 518
    .restart local v2       #childCount:I
    if-lez v2, :cond_3

    .line 519
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_3

    .line 525
    :cond_5
    if-eqz v0, :cond_6

    move-object v10, v0

    .line 526
    goto :goto_2

    :cond_6
    move-object v10, v1

    .line 528
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v5, 0x0

    .line 321
    const/4 v1, 0x0

    .line 323
    .local v1, selectedView:Landroid/view/View;
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 325
    .local v0, end:I
    :goto_0
    if-le p2, v0, :cond_1

    if-ltz p1, :cond_1

    .line 327
    invoke-direct {p0, p1, p2, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 328
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 329
    move-object v1, v2

    .line 332
    :cond_0
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 334
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 336
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 337
    goto :goto_0

    .line 339
    .end local v2           #temp:Landroid/view/View;
    :cond_1
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_2

    .line 340
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 343
    :cond_2
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 4
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "numColumns"
    .parameter "rowStart"

    .prologue
    const/4 v3, 0x1

    .line 685
    move v0, p1

    .line 686
    .local v0, bottomSelectionPixel:I
    add-int v1, p4, p3

    sub-int/2addr v1, v3

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 687
    sub-int/2addr v0, p2

    .line 689
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "rowStart"

    .prologue
    .line 702
    move v0, p1

    .line 703
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 704
    add-int/2addr v0, p2

    .line 706
    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .parameter "childIndex"
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1674
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 1675
    .local v0, count:I
    sub-int v4, v0, v6

    sub-int v1, v4, p1

    .line 1680
    .local v1, invertedIndex:I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v4, :cond_0

    .line 1681
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v4, p1, v4

    sub-int v3, p1, v4

    .line 1682
    .local v3, rowStart:I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v4, v3

    sub-int/2addr v4, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1688
    .local v2, rowEnd:I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 1703
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1684
    .end local v2           #rowEnd:I
    .end local v3           #rowStart:I
    :cond_0
    sub-int v4, v0, v6

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v5, v1, v5

    sub-int v5, v1, v5

    sub-int v2, v4, v5

    .line 1685
    .restart local v2       #rowEnd:I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #rowStart:I
    goto :goto_0

    .line 1692
    :sswitch_0
    if-ne p1, v3, :cond_1

    move v4, v6

    .line 1701
    :goto_1
    return v4

    :cond_1
    move v4, v7

    .line 1692
    goto :goto_1

    .line 1695
    :sswitch_1
    if-nez v3, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v7

    goto :goto_1

    .line 1698
    :sswitch_2
    if-ne p1, v2, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v7

    goto :goto_1

    .line 1701
    :sswitch_3
    sub-int v4, v0, v6

    if-ne v2, v4, :cond_4

    move v4, v6

    goto :goto_1

    :cond_4
    move v4, v7

    goto :goto_1

    .line 1688
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "where"

    .prologue
    .line 1230
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1232
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1233
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1236
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1248
    .end local v1           #child:Landroid/view/View;
    .local v9, child:Landroid/view/View;
    :goto_0
    return-object v9

    .line 1243
    .end local v9           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1246
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1248
    .end local v1           #child:Landroid/view/View;
    .restart local v9       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 15
    .parameter "startPos"
    .parameter "y"
    .parameter "flow"

    .prologue
    .line 258
    iget v8, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 259
    .local v8, columnWidth:I
    iget v10, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 262
    .local v10, horizontalSpacing:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    move v1, v10

    :goto_0
    add-int v4, v0, v1

    .line 265
    .local v4, nextLeft:I
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_5

    .line 266
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int v0, v0, p1

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 276
    .local v12, last:I
    :cond_0
    :goto_1
    const/4 v14, 0x0

    .line 278
    .local v14, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v9

    .line 279
    .local v9, hasFocus:Z
    invoke-virtual {p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v11

    .line 280
    .local v11, inClick:Z
    iget v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 282
    .local v13, selectedPosition:I
    const/4 v7, 0x0

    .line 283
    .local v7, child:Landroid/view/View;
    move/from16 v1, p1

    .local v1, pos:I
    :goto_2
    if-ge v1, v12, :cond_8

    .line 285
    if-ne v1, v13, :cond_6

    const/4 v0, 0x1

    move v5, v0

    .line 288
    .local v5, selected:Z
    :goto_3
    if-eqz p3, :cond_7

    const/4 v0, -0x1

    move v6, v0

    .local v6, where:I
    :goto_4
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 289
    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    .line 291
    add-int/2addr v4, v8

    .line 292
    const/4 v0, 0x1

    sub-int v0, v12, v0

    if-ge v1, v0, :cond_1

    .line 293
    add-int/2addr v4, v10

    .line 296
    :cond_1
    if-eqz v5, :cond_3

    if-nez v9, :cond_2

    if-eqz v11, :cond_3

    .line 297
    :cond_2
    move-object v14, v7

    .line 283
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 262
    .end local v1           #pos:I
    .end local v4           #nextLeft:I
    .end local v5           #selected:Z
    .end local v6           #where:I
    .end local v7           #child:Landroid/view/View;
    .end local v9           #hasFocus:Z
    .end local v11           #inClick:Z
    .end local v12           #last:I
    .end local v13           #selectedPosition:I
    .end local v14           #selectedView:Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 268
    .restart local v4       #nextLeft:I
    :cond_5
    add-int/lit8 v12, p1, 0x1

    .line 269
    .restart local v12       #last:I
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 271
    sub-int v0, v12, p1

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    if-ge v0, v1, :cond_0

    .line 272
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v1, v12, p1

    sub-int/2addr v0, v1

    add-int v1, v8, v10

    mul-int/2addr v0, v1

    add-int/2addr v4, v0

    goto :goto_1

    .line 285
    .restart local v1       #pos:I
    .restart local v7       #child:Landroid/view/View;
    .restart local v9       #hasFocus:Z
    .restart local v11       #inClick:Z
    .restart local v13       #selectedPosition:I
    .restart local v14       #selectedView:Landroid/view/View;
    :cond_6
    const/4 v0, 0x0

    move v5, v0

    goto :goto_3

    .line 288
    .restart local v5       #selected:Z
    :cond_7
    sub-int v0, v1, p1

    move v6, v0

    goto :goto_4

    .line 301
    .end local v5           #selected:Z
    :cond_8
    iput-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 303
    if-eqz v14, :cond_9

    .line 304
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 307
    :cond_9
    return-object v14
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 23
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 779
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 780
    .local v6, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 781
    .local v17, selectedPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v8, v0

    .line 782
    .local v8, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v19, v0

    .line 786
    .local v19, verticalSpacing:I
    const/4 v14, -0x1

    .line 788
    .local v14, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 789
    sub-int v20, v17, p1

    sub-int v21, v17, p1

    rem-int v21, v21, v8

    sub-int v10, v20, v21

    .line 791
    .local v10, oldRowStart:I
    rem-int v20, v17, v8

    sub-int v15, v17, v20

    .line 803
    .local v15, rowStart:I
    :goto_0
    sub-int v13, v15, v10

    .line 805
    .local v13, rowDelta:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v6

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v18

    .line 806
    .local v18, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v6

    move v3, v8

    move v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v5

    .line 810
    .local v5, bottomSelectionPixel:I
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 815
    if-lez v13, :cond_3

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    const/16 v20, 0x0

    move/from16 v9, v20

    .line 823
    .local v9, oldBottom:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move/from16 v20, v14

    :goto_2
    add-int v21, v9, v19

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v16

    .line 824
    .local v16, sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v12, v0

    .line 826
    .local v12, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v18

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 849
    .end local v9           #oldBottom:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    .line 850
    sub-int v20, v15, v8

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 851
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 852
    add-int v20, v15, v8

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v21

    add-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 859
    :goto_4
    return-object v16

    .line 793
    .end local v5           #bottomSelectionPixel:I
    .end local v10           #oldRowStart:I
    .end local v12           #referenceView:Landroid/view/View;
    .end local v13           #rowDelta:I
    .end local v15           #rowStart:I
    .end local v16           #sel:Landroid/view/View;
    .end local v18           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    sub-int v7, v20, v17

    .line 795
    .local v7, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    rem-int v21, v7, v8

    sub-int v21, v7, v21

    sub-int v14, v20, v21

    .line 796
    const/16 v20, 0x0

    sub-int v21, v14, v8

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 798
    .restart local v15       #rowStart:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    sub-int v21, v17, p1

    sub-int v7, v20, v21

    .line 799
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    rem-int v21, v7, v8

    sub-int v21, v7, v21

    sub-int v10, v20, v21

    .line 800
    .restart local v10       #oldRowStart:I
    const/16 v20, 0x0

    sub-int v21, v10, v8

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_0

    .line 820
    .end local v7           #invertedSelection:I
    .restart local v5       #bottomSelectionPixel:I
    .restart local v13       #rowDelta:I
    .restart local v18       #topSelectionPixel:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v20

    move/from16 v9, v20

    goto/16 :goto_1

    .restart local v9       #oldBottom:I
    :cond_2
    move/from16 v20, v15

    .line 823
    goto/16 :goto_2

    .line 827
    .end local v9           #oldBottom:I
    :cond_3
    if-gez v13, :cond_6

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    const/16 v20, 0x0

    move/from16 v11, v20

    .line 834
    .local v11, oldTop:I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move/from16 v20, v14

    :goto_6
    sub-int v21, v11, v19

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v16

    .line 835
    .restart local v16       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v12, v0

    .line 837
    .restart local v12       #referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v18

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 831
    .end local v11           #oldTop:I
    .end local v12           #referenceView:Landroid/view/View;
    .end local v16           #sel:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v11, v20

    goto :goto_5

    .restart local v11       #oldTop:I
    :cond_5
    move/from16 v20, v15

    .line 834
    goto :goto_6

    .line 842
    .end local v11           #oldTop:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    const/16 v20, 0x0

    move/from16 v11, v20

    .line 845
    .restart local v11       #oldTop:I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move/from16 v20, v14

    :goto_8
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v11

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v16

    .line 846
    .restart local v16       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v12, v0

    .restart local v12       #referenceView:Landroid/view/View;
    goto/16 :goto_3

    .line 842
    .end local v11           #oldTop:I
    .end local v12           #referenceView:Landroid/view/View;
    .end local v16           #sel:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v11, v20

    goto :goto_7

    .restart local v11       #oldTop:I
    :cond_8
    move/from16 v20, v15

    .line 845
    goto :goto_8

    .line 854
    .end local v11           #oldTop:I
    .restart local v12       #referenceView:Landroid/view/View;
    .restart local v16       #sel:Landroid/view/View;
    :cond_9
    add-int v20, v14, v8

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v21

    add-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 855
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 856
    const/16 v20, 0x1

    sub-int v20, v15, v20

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5
    .parameter "childrenBottom"

    .prologue
    .line 429
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 430
    .local v1, count:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 431
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 432
    .local v0, bottom:I
    sub-int v2, p1, v0

    .line 433
    .local v2, offset:I
    if-lez v2, :cond_0

    .line 434
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 437
    .end local v0           #bottom:I
    .end local v2           #offset:I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3
    .parameter "childrenTop"

    .prologue
    .line 419
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 420
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 421
    .local v1, top:I
    sub-int v0, p1, v1

    .line 422
    .local v0, offset:I
    if-gez v0, :cond_0

    .line 423
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 426
    .end local v0           #offset:I
    .end local v1           #top:I
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 23
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"
    .parameter "where"

    .prologue
    .line 1269
    if-eqz p6, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v20, 0x1

    move/from16 v13, v20

    .line 1270
    .local v13, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v20

    move v0, v13

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    const/16 v20, 0x1

    move/from16 v18, v20

    .line 1271
    .local v18, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v14, v0

    .line 1272
    .local v14, mode:I
    if-lez v14, :cond_7

    const/16 v20, 0x3

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    const/16 v20, 0x1

    move/from16 v12, v20

    .line 1274
    .local v12, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v20

    move v0, v12

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    const/16 v20, 0x1

    move/from16 v17, v20

    .line 1276
    .local v17, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v20

    if-eqz v20, :cond_9

    :cond_0
    const/16 v20, 0x1

    move/from16 v15, v20

    .line 1280
    .local v15, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1281
    .local v16, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v16, :cond_1

    .line 1282
    new-instance v16, Landroid/widget/AbsListView$LayoutParams;

    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1285
    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1287
    if-eqz p7, :cond_a

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 1288
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1294
    :goto_5
    if-eqz v18, :cond_2

    .line 1295
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1296
    if-eqz v13, :cond_2

    .line 1297
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    .line 1301
    :cond_2
    if-eqz v17, :cond_3

    .line 1302
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1305
    :cond_3
    if-eqz v15, :cond_b

    .line 1306
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 1309
    .local v6, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    const/high16 v21, 0x4000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    .line 1311
    .local v10, childWidthSpec:I
    move-object/from16 v0, p1

    move v1, v10

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1316
    .end local v6           #childHeightSpec:I
    .end local v10           #childWidthSpec:I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1317
    .local v19, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 1320
    .local v11, h:I
    if-eqz p4, :cond_c

    move/from16 v9, p3

    .line 1322
    .local v9, childTop:I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mGravity:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x7

    packed-switch v20, :pswitch_data_0

    .line 1333
    :pswitch_0
    move/from16 v7, p5

    .line 1337
    .local v7, childLeft:I
    :goto_8
    if-eqz v15, :cond_d

    .line 1338
    add-int v8, v7, v19

    .line 1339
    .local v8, childRight:I
    add-int v5, v9, v11

    .line 1340
    .local v5, childBottom:I
    move-object/from16 v0, p1

    move v1, v7

    move v2, v9

    move v3, v8

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1346
    .end local v5           #childBottom:I
    .end local v8           #childRight:I
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1347
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1349
    :cond_4
    return-void

    .line 1269
    .end local v7           #childLeft:I
    .end local v9           #childTop:I
    .end local v11           #h:I
    .end local v12           #isPressed:Z
    .end local v13           #isSelected:Z
    .end local v14           #mode:I
    .end local v15           #needToMeasure:Z
    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v17           #updateChildPressed:Z
    .end local v18           #updateChildSelected:Z
    .end local v19           #w:I
    :cond_5
    const/16 v20, 0x0

    move/from16 v13, v20

    goto/16 :goto_0

    .line 1270
    .restart local v13       #isSelected:Z
    :cond_6
    const/16 v20, 0x0

    move/from16 v18, v20

    goto/16 :goto_1

    .line 1272
    .restart local v14       #mode:I
    .restart local v18       #updateChildSelected:Z
    :cond_7
    const/16 v20, 0x0

    move/from16 v12, v20

    goto/16 :goto_2

    .line 1274
    .restart local v12       #isPressed:Z
    :cond_8
    const/16 v20, 0x0

    move/from16 v17, v20

    goto/16 :goto_3

    .line 1276
    .restart local v17       #updateChildPressed:Z
    :cond_9
    const/16 v20, 0x0

    move/from16 v15, v20

    goto/16 :goto_4

    .line 1290
    .restart local v15       #needToMeasure:Z
    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_a
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1291
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v16

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    .line 1313
    :cond_b
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_6

    .line 1320
    .restart local v11       #h:I
    .restart local v19       #w:I
    :cond_c
    sub-int v20, p3, v11

    move/from16 v9, v20

    goto :goto_7

    .line 1324
    .restart local v9       #childTop:I
    :pswitch_1
    move/from16 v7, p5

    .line 1325
    .restart local v7       #childLeft:I
    goto :goto_8

    .line 1327
    .end local v7           #childLeft:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v19

    div-int/lit8 v20, v20, 0x2

    add-int v7, p5, v20

    .line 1328
    .restart local v7       #childLeft:I
    goto :goto_8

    .line 1330
    .end local v7           #childLeft:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    add-int v20, v20, p5

    sub-int v7, v20, v19

    .line 1331
    .restart local v7       #childLeft:I
    goto :goto_8

    .line 1342
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    sub-int v20, v7, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1343
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v9, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_9

    .line 1322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x6

    const/4 v8, 0x1

    .line 1567
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1568
    .local v4, selectedPosition:I
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1573
    .local v3, numColumns:I
    const/4 v2, 0x0

    .line 1575
    .local v2, moved:Z
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    .line 1576
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1577
    .local v5, startOfRowPos:I
    add-int v6, v5, v3

    sub-int/2addr v6, v8

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1584
    .local v0, endOfRowPos:I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1615
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1616
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1617
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1620
    :cond_1
    if-eqz v2, :cond_2

    .line 1621
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1624
    :cond_2
    return v2

    .line 1579
    .end local v0           #endOfRowPos:I
    .end local v5           #startOfRowPos:I
    :cond_3
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v6, v8

    sub-int v1, v6, v4

    .line 1580
    .local v1, invertedSelection:I
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v6, v8

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1581
    .restart local v0       #endOfRowPos:I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #startOfRowPos:I
    goto :goto_0

    .line 1586
    .end local v1           #invertedSelection:I
    :sswitch_0
    if-lez v5, :cond_0

    .line 1587
    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1588
    sub-int v6, v4, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1589
    const/4 v2, 0x1

    goto :goto_1

    .line 1593
    :sswitch_1
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v6, v8

    if-ge v0, v6, :cond_0

    .line 1594
    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1595
    add-int v6, v4, v3

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1596
    const/4 v2, 0x1

    goto :goto_1

    .line 1600
    :sswitch_2
    if-le v4, v5, :cond_0

    .line 1601
    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1602
    sub-int v6, v4, v8

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1603
    const/4 v2, 0x1

    goto :goto_1

    .line 1607
    :sswitch_3
    if-ge v4, v0, :cond_0

    .line 1608
    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1609
    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1610
    const/4 v2, 0x1

    goto :goto_1

    .line 1584
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 5
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    .line 1010
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1013
    .local v0, animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 1014
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1015
    .restart local v0       #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1018
    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 1019
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 1020
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1021
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1023
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1024
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1025
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1032
    :goto_0
    return-void

    .line 1027
    :cond_1
    sub-int v2, p4, v4

    sub-int v1, v2, p3

    .line 1029
    .local v1, invertedIndex:I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v2, v4

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1030
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    sub-int/2addr v2, v4

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1852
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 1853
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1854
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1855
    .local v4, numColumns:I
    add-int v10, v1, v4

    sub-int/2addr v10, v12

    div-int v7, v10, v4

    .line 1857
    .local v7, rowCount:I
    mul-int/lit8 v2, v7, 0x64

    .line 1859
    .local v2, extent:I
    invoke-virtual {p0, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1860
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1861
    .local v8, top:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1862
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1863
    mul-int/lit8 v10, v8, 0x64

    div-int/2addr v10, v3

    add-int/2addr v2, v10

    .line 1866
    :cond_0
    sub-int v10, v1, v12

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1867
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1868
    .local v0, bottom:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1869
    if-lez v3, :cond_1

    .line 1870
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v10

    sub-int v10, v0, v10

    mul-int/lit8 v10, v10, 0x64

    div-int/2addr v10, v3

    sub-int/2addr v2, v10

    .line 1873
    :cond_1
    move v6, v2

    .line 1874
    .local v6, retVal:I
    iget-object v10, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v10, v10, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->computeVerticalScrollRange()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 1875
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v11, v11, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v5, v10, v11

    .line 1877
    .local v5, ratio:F
    int-to-float v10, v6

    mul-float/2addr v10, v5

    float-to-int v6, v10

    .line 1879
    .end local v5           #ratio:F
    :cond_2
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1881
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #numColumns:I
    .end local v6           #retVal:I
    .end local v7           #rowCount:I
    .end local v8           #top:I
    .end local v9           #view:Landroid/view/View;
    :goto_0
    return v10

    :cond_3
    move v10, v11

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 14

    .prologue
    .line 1886
    iget v11, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v11, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v11

    if-lez v11, :cond_2

    .line 1887
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1888
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1889
    .local v8, top:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1890
    .local v1, height:I
    const/4 v4, 0x0

    .line 1891
    .local v4, retVal:I
    if-lez v1, :cond_0

    .line 1892
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1893
    .local v3, numColumns:I
    iget v11, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    div-int v10, v11, v3

    .line 1894
    .local v10, whichRow:I
    iget v11, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/2addr v11, v3

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    div-int v5, v11, v3

    .line 1897
    .local v5, rowCount:I
    mul-int/lit8 v11, v10, 0x64

    mul-int/lit8 v12, v8, 0x64

    div-int/2addr v12, v1

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/view/View;->mScrollY:I

    int-to-float v12, v12

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    int-to-float v13, v5

    mul-float/2addr v12, v13

    const/high16 v13, 0x42c8

    mul-float/2addr v12, v13

    float-to-int v12, v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1900
    .end local v3           #numColumns:I
    .end local v5           #rowCount:I
    .end local v10           #whichRow:I
    :cond_0
    iget-object v11, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v11, v11, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    .line 1901
    iget-object v11, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v6, v11, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1902
    .local v6, savedBounceExtent:F
    invoke-virtual {p0}, Landroid/widget/GridView;->computeVerticalScrollExtent()I

    move-result v7

    .line 1903
    .local v7, shrinkedScrollExtent:I
    iget-object v11, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    const/4 v12, 0x0

    iput v12, v11, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1904
    invoke-virtual {p0}, Landroid/widget/GridView;->computeVerticalScrollExtent()I

    move-result v2

    .line 1905
    .local v2, normalScrollExtent:I
    iget-object v11, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iput v6, v11, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1906
    sub-int v0, v2, v7

    .line 1907
    .local v0, delta:I
    add-int/2addr v4, v0

    .end local v0           #delta:I
    .end local v2           #normalScrollExtent:I
    .end local v6           #savedBounceExtent:F
    .end local v7           #shrinkedScrollExtent:I
    :cond_1
    move v11, v4

    .line 1911
    .end local v1           #height:I
    .end local v4           #retVal:I
    .end local v8           #top:I
    .end local v9           #view:Landroid/view/View;
    :goto_0
    return v11

    :cond_2
    const/4 v11, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    .line 1917
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1918
    .local v0, numColumns:I
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    div-int v2, v3, v0

    .line 1919
    .local v2, rowCount:I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1920
    .local v1, result:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    if-eqz v3, :cond_0

    .line 1922
    iget v3, p0, Landroid/view/View;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 1924
    :cond_0
    return v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1933
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1940
    return-void
.end method

.method fillGap(Z)V
    .locals 7
    .parameter "down"

    .prologue
    const/4 v6, 0x1

    .line 197
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 198
    .local v1, numColumns:I
    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 200
    .local v4, verticalSpacing:I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 202
    .local v0, count:I
    if-eqz p1, :cond_2

    .line 203
    if-lez v0, :cond_1

    sub-int v5, v0, v6

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v4

    move v3, v5

    .line 205
    .local v3, startOffset:I
    :goto_0
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v2, v5, v0

    .line 206
    .local v2, position:I
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_0

    .line 207
    sub-int v5, v1, v6

    add-int/2addr v2, v5

    .line 209
    :cond_0
    invoke-direct {p0, v2, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 210
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 223
    :goto_1
    return-void

    .line 203
    .end local v2           #position:I
    .end local v3           #startOffset:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v5

    move v3, v5

    goto :goto_0

    .line 212
    :cond_2
    if-lez v0, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v4

    move v3, v5

    .line 214
    .restart local v3       #startOffset:I
    :goto_2
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 215
    .restart local v2       #position:I
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v5, :cond_4

    .line 216
    sub-int/2addr v2, v1

    .line 220
    :goto_3
    invoke-direct {p0, v2, v3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 221
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_1

    .line 212
    .end local v2           #position:I
    .end local v3           #startOffset:I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    move v3, v5

    goto :goto_2

    .line 218
    .restart local v2       #position:I
    .restart local v3       #startOffset:I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 441
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 442
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 444
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 445
    .local v2, numColumns:I
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 446
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 447
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 448
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 459
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :goto_1
    return v3

    .line 446
    .restart local v1       #i:I
    .restart local v2       #numColumns:I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 452
    .end local v1           #i:I
    :cond_1
    const/4 v3, 0x1

    sub-int v1, v0, v3

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 453
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 454
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 452
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 459
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x2

    .line 1538
    const/4 v0, 0x0

    .line 1539
    .local v0, moved:Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    .line 1540
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1541
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1542
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1543
    const/4 v0, 0x1

    .line 1551
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1552
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1555
    :cond_1
    return v0

    .line 1544
    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 1545
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1546
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1547
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1548
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 1771
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 22

    .prologue
    .line 1036
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    move v4, v0

    .line 1037
    .local v4, blockLayoutRequests:Z
    if-nez v4, :cond_0

    .line 1038
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1042
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1044
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 1047
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1048
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    if-nez v4, :cond_1

    .line 1206
    :goto_0
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1209
    :cond_1
    return-void

    .line 1052
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    .line 1053
    .local v8, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v7, v20, v21

    .line 1055
    .local v7, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    .line 1057
    .local v6, childCount:I
    const/4 v10, 0x0

    .line 1060
    .local v10, delta:I
    const/16 v17, 0x0

    .line 1061
    .local v17, oldSel:Landroid/view/View;
    const/16 v16, 0x0

    .line 1062
    .local v16, oldFirst:Landroid/view/View;
    const/4 v15, 0x0

    .line 1065
    .local v15, newSel:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 1084
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .line 1085
    .local v13, index:I
    if-ltz v13, :cond_3

    if-ge v13, v6, :cond_3

    .line 1086
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1090
    :cond_3
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1093
    .end local v13           #index:I
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v9, v0

    .line 1094
    .local v9, dataChanged:Z
    if-eqz v9, :cond_5

    .line 1095
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V

    .line 1100
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 1101
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1102
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1205
    if-nez v4, :cond_1

    goto :goto_0

    .line 1067
    .end local v9           #dataChanged:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .line 1068
    .restart local v13       #index:I
    if-ltz v13, :cond_4

    if-ge v13, v6, :cond_4

    .line 1069
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    goto :goto_1

    .line 1078
    .end local v13           #index:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v20, v0

    if-ltz v20, :cond_4

    .line 1079
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v21, v0

    sub-int v10, v20, v21

    goto :goto_1

    .line 1106
    .restart local v9       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1110
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v11, v0

    .line 1111
    .local v11, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v18, v0

    .line 1113
    .local v18, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    if-eqz v9, :cond_7

    .line 1114
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v6, :cond_8

    .line 1115
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1114
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1118
    .end local v12           #i:I
    :cond_7
    move-object/from16 v0, v18

    move v1, v6

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1123
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    .line 1125
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    .line 1153
    if-nez v6, :cond_12

    .line 1154
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_f

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v20

    if-eqz v20, :cond_e

    :cond_9
    const/16 v20, -0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1157
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v19

    .line 1179
    .local v19, sel:Landroid/view/View;
    :goto_4
    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1181
    if-eqz v19, :cond_17

    .line 1182
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->positionSelector(Landroid/view/View;)V

    .line 1183
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1192
    :cond_a
    :goto_5
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1193
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1194
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1195
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1197
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    .line 1199
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    if-lez v20, :cond_b

    .line 1200
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 1203
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1205
    if-nez v4, :cond_1

    goto/16 :goto_0

    .line 1127
    .end local v19           #sel:Landroid/view/View;
    :pswitch_3
    if-eqz v15, :cond_c

    .line 1128
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v8

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto :goto_4

    .line 1130
    .end local v19           #sel:Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    move v1, v8

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v19

    .line 1132
    .restart local v19       #sel:Landroid/view/View;
    goto :goto_4

    .line 1134
    .end local v19           #sel:Landroid/view/View;
    :pswitch_4
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1135
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v19

    .line 1136
    .restart local v19       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1205
    .end local v6           #childCount:I
    .end local v7           #childrenBottom:I
    .end local v8           #childrenTop:I
    .end local v9           #dataChanged:Z
    .end local v10           #delta:I
    .end local v11           #firstPosition:I
    .end local v15           #newSel:Landroid/view/View;
    .end local v16           #oldFirst:Landroid/view/View;
    .end local v17           #oldSel:Landroid/view/View;
    .end local v18           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v19           #sel:Landroid/view/View;
    :catchall_0
    move-exception v20

    if-nez v4, :cond_d

    .line 1206
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1205
    :cond_d
    throw v20

    .line 1139
    .restart local v6       #childCount:I
    .restart local v7       #childrenBottom:I
    .restart local v8       #childrenTop:I
    .restart local v9       #dataChanged:Z
    .restart local v10       #delta:I
    .restart local v11       #firstPosition:I
    .restart local v15       #newSel:Landroid/view/View;
    .restart local v16       #oldFirst:Landroid/view/View;
    .restart local v17       #oldSel:Landroid/view/View;
    .restart local v18       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    :pswitch_5
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v19

    .line 1140
    .restart local v19       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1143
    .end local v19           #sel:Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .line 1144
    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1146
    .end local v19           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .line 1147
    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1150
    .end local v19           #sel:Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    move v1, v10

    move v2, v8

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v19

    .line 1151
    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1155
    .end local v19           #sel:Landroid/view/View;
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 1159
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v14, v20, v21

    .line 1160
    .local v14, last:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v20

    if-eqz v20, :cond_11

    :cond_10
    const/16 v20, -0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1162
    move-object/from16 v0, p0

    move v1, v14

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v19

    .line 1163
    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v19           #sel:Landroid/view/View;
    :cond_11
    move/from16 v20, v14

    .line 1160
    goto :goto_6

    .line 1165
    .end local v14           #last:I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    if-ltz v20, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_14

    .line 1166
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    if-nez v17, :cond_13

    move/from16 v21, v8

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v19           #sel:Landroid/view/View;
    :cond_13
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v21

    goto :goto_7

    .line 1168
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_16

    .line 1169
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v20, v0

    if-nez v16, :cond_15

    move/from16 v21, v8

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v19           #sel:Landroid/view/View;
    :cond_15
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v21

    goto :goto_8

    .line 1172
    :cond_16
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1184
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-lez v20, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_18

    .line 1185
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1186
    .local v5, child:Landroid/view/View;
    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    .line 1188
    .end local v5           #child:Landroid/view/View;
    :cond_18
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 1065
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1125
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 181
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 182
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    .line 189
    :goto_0
    return v1

    .line 186
    :cond_1
    if-ltz p1, :cond_2

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt p1, v1, :cond_3

    :cond_2
    move v1, v2

    .line 187
    goto :goto_0

    :cond_3
    move v1, p1

    .line 189
    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1629
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1631
    const/4 v1, -0x1

    .line 1632
    .local v1, closestChildIndex:I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1633
    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1637
    iget-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 1638
    .local v6, otherRect:Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1639
    .local v4, minDistance:I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 1640
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1642
    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1640
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1646
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1647
    .local v5, other:Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1648
    invoke-virtual {p0, v5, v6}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1649
    invoke-static {p3, v6, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1651
    .local v2, distance:I
    if-ge v2, v4, :cond_0

    .line 1652
    move v4, v2

    .line 1653
    move v1, v3

    goto :goto_1

    .line 1658
    .end local v0           #childCount:I
    .end local v2           #distance:I
    .end local v3           #i:I
    .end local v4           #minDistance:I
    .end local v5           #other:Landroid/view/View;
    .end local v6           #otherRect:Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    .line 1659
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelection(I)V

    .line 1663
    :goto_2
    return-void

    .line 1661
    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1398
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 1403
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1408
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 21
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 932
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 934
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 935
    .local v16, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 936
    .local v10, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 937
    .local v17, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 939
    .local v11, heightSize:I
    if-nez v16, :cond_0

    .line 940
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v18, v0

    if-lez v18, :cond_7

    .line 941
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v17, v18, v19

    .line 945
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v18

    add-int v17, v17, v18

    .line 948
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v18, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v7, v18, v19

    .line 949
    .local v7, childWidth:I
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Landroid/widget/GridView;->determineColumns(I)V

    .line 951
    const/4 v5, 0x0

    .line 953
    .local v5, childHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mItemCount:I

    .line 954
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v9, v0

    .line 955
    .local v9, count:I
    if-lez v9, :cond_2

    .line 956
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mIsScrap:[Z

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 958
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 959
    .local v15, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_1

    .line 960
    new-instance v15, Landroid/widget/AbsListView$LayoutParams;

    .end local v15           #p:Landroid/widget/AbsListView$LayoutParams;
    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x0

    move-object v0, v15

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 962
    .restart local v15       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v4, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 964
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v18

    move/from16 v0, v18

    move-object v1, v15

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 965
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object v1, v15

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 967
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/16 v19, 0x0

    move-object v0, v15

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v6

    .line 969
    .local v6, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v18, v0

    const/high16 v19, 0x4000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/16 v19, 0x0

    move-object v0, v15

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v8

    .line 971
    .local v8, childWidthSpec:I
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    .line 973
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v18, v0

    move-object v0, v15

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 980
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v15           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    if-nez v10, :cond_3

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int v18, v18, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    add-int v11, v18, v19

    .line 985
    :cond_3
    const/high16 v18, -0x8000

    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v14, v18, v19

    .line 988
    .local v14, ourSize:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v13, v0

    .line 989
    .local v13, numColumns:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v9, :cond_5

    .line 990
    add-int/2addr v14, v5

    .line 991
    add-int v18, v12, v13

    move/from16 v0, v18

    move v1, v9

    if-ge v0, v1, :cond_4

    .line 992
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v18, v0

    add-int v14, v14, v18

    .line 994
    :cond_4
    if-lt v14, v11, :cond_9

    .line 995
    move v14, v11

    .line 999
    :cond_5
    move v11, v14

    .line 1002
    .end local v12           #i:I
    .end local v13           #numColumns:I
    .end local v14           #ourSize:I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    .line 1003
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 1004
    return-void

    .line 943
    .end local v5           #childHeight:I
    .end local v7           #childWidth:I
    .end local v9           #count:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v17, v18, v19

    goto/16 :goto_0

    .line 953
    .restart local v5       #childHeight:I
    .restart local v7       #childWidth:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/widget/ListAdapter;->getCount()I

    move-result v18

    goto/16 :goto_1

    .line 989
    .restart local v9       #count:I
    .restart local v12       #i:I
    .restart local v13       #numColumns:I
    .restart local v14       #ourSize:I
    :cond_9
    add-int/2addr v12, v13

    goto :goto_2
.end method

.method pageScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1512
    const/4 v0, -0x1

    .line 1514
    .local v0, nextPage:I
    const/16 v1, 0x21

    if-ne p1, v1, :cond_1

    .line 1515
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1520
    :cond_0
    :goto_0
    if-ltz v0, :cond_2

    .line 1521
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1522
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1523
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    move v1, v4

    .line 1527
    :goto_1
    return v1

    .line 1516
    :cond_1
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 1517
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v4

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v5

    .line 1527
    goto :goto_1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 139
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    .line 144
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 145
    iput-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 148
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 150
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 151
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 152
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 153
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 154
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 156
    new-instance v1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    .line 157
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 159
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 162
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 163
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1, v4}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 167
    .local v0, position:I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 168
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 169
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 176
    .end local v0           #position:I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 177
    return-void

    .line 165
    :cond_1
    invoke-virtual {p0, v4, v3}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_0

    .line 171
    .end local v0           #position:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 173
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setColumnWidth(I)V
    .locals 1
    .parameter "columnWidth"

    .prologue
    .line 1782
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 1783
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 1784
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1786
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1716
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1717
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    .line 1718
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1720
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .parameter "horizontalSpacing"

    .prologue
    .line 1732
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 1733
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 1734
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1736
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .parameter "numColumns"

    .prologue
    .line 1796
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 1797
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 1798
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1800
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1361
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1362
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1366
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1367
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 1368
    return-void

    .line 1364
    :cond_0
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    .line 1377
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1379
    .local v4, previousSelectedPosition:I
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1380
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1382
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    sub-int/2addr v5, v6

    move v0, v5

    .line 1384
    .local v0, next:I
    :goto_0
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v5, v7

    sub-int/2addr v5, v4

    move v2, v5

    .line 1387
    .local v2, previous:I
    :goto_1
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, v0, v5

    .line 1388
    .local v1, nextRow:I
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v2, v5

    .line 1390
    .local v3, previousRow:I
    if-eq v1, v3, :cond_0

    .line 1391
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1394
    :cond_0
    return-void

    .line 1382
    .end local v0           #next:I
    .end local v1           #nextRow:I
    .end local v2           #previous:I
    .end local v3           #previousRow:I
    :cond_1
    iget v5, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move v0, v5

    goto :goto_0

    .restart local v0       #next:I
    :cond_2
    move v2, v4

    .line 1384
    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1
    .parameter "stretchMode"

    .prologue
    .line 1764
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 1765
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 1766
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1768
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .parameter "verticalSpacing"

    .prologue
    .line 1749
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 1750
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 1751
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1753
    :cond_0
    return-void
.end method
