.class final Landroid/view/ViewRoot$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final MAX_ACCELERATION:F = 20.0f


# instance fields
.field absPosition:F

.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 3284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3307
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3308
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .locals 8
    .parameter "off"
    .parameter "time"
    .parameter "axis"

    .prologue
    .line 3333
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_3

    .line 3334
    const/high16 v6, 0x4316

    mul-float/2addr v6, p1

    float-to-long v3, v6

    .line 3335
    .local v3, normTime:J
    iget v6, p0, Landroid/view/ViewRoot$TrackballAxis;->dir:I

    if-gez v6, :cond_0

    .line 3337
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3338
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    .line 3339
    const/high16 v6, 0x3f80

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3340
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    .line 3342
    :cond_0
    const/4 v6, 0x1

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->dir:I

    .line 3360
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_2

    .line 3361
    iget-wide v6, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    sub-long v1, p2, v6

    .line 3362
    .local v1, delta:J
    iput-wide p2, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    .line 3363
    iget v0, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3364
    .local v0, acc:F
    cmp-long v6, v1, v3

    if-gez v6, :cond_7

    .line 3366
    sub-long v6, v3, v1

    long-to-float v6, v6

    const v7, 0x3ccccccd

    mul-float v5, v6, v7

    .line 3367
    .local v5, scale:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    mul-float/2addr v0, v5

    .line 3371
    :cond_1
    const/high16 v6, 0x41a0

    cmpg-float v6, v0, v6

    if-gez v6, :cond_6

    move v6, v0

    :goto_1
    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3382
    .end local v0           #acc:F
    .end local v1           #delta:J
    .end local v5           #scale:F
    :cond_2
    :goto_2
    iget v6, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    add-float/2addr v6, p1

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3383
    iget v6, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    return v6

    .line 3343
    .end local v3           #normTime:J
    :cond_3
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_5

    .line 3344
    neg-float v6, p1

    const/high16 v7, 0x4316

    mul-float/2addr v6, v7

    float-to-long v3, v6

    .line 3345
    .restart local v3       #normTime:J
    iget v6, p0, Landroid/view/ViewRoot$TrackballAxis;->dir:I

    if-lez v6, :cond_4

    .line 3347
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3348
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    .line 3349
    const/high16 v6, 0x3f80

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3350
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    .line 3352
    :cond_4
    const/4 v6, -0x1

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->dir:I

    goto :goto_0

    .line 3354
    .end local v3           #normTime:J
    :cond_5
    const-wide/16 v3, 0x0

    .restart local v3       #normTime:J
    goto :goto_0

    .line 3371
    .restart local v0       #acc:F
    .restart local v1       #delta:J
    .restart local v5       #scale:F
    :cond_6
    const/high16 v6, 0x41a0

    goto :goto_1

    .line 3374
    .end local v5           #scale:F
    :cond_7
    sub-long v6, v1, v3

    long-to-float v6, v6

    const v7, 0x3ccccccd

    mul-float v5, v6, v7

    .line 3375
    .restart local v5       #scale:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-lez v6, :cond_8

    div-float/2addr v0, v5

    .line 3379
    :cond_8
    const/high16 v6, 0x3f80

    cmpl-float v6, v0, v6

    if-lez v6, :cond_9

    move v6, v0

    :goto_3
    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    goto :goto_2

    :cond_9
    const/high16 v6, 0x3f80

    goto :goto_3
.end method

.method generate(F)I
    .locals 8
    .parameter "precision"

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    .line 3398
    const/4 v2, 0x0

    .line 3399
    .local v2, movement:I
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->nonAccelMovement:I

    .line 3401
    :goto_0
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    move v1, v7

    .line 3402
    .local v1, dir:I
    :goto_1
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    packed-switch v3, :pswitch_data_0

    .line 3435
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    .line 3436
    :cond_0
    return v2

    .line 3401
    .end local v1           #dir:I
    :cond_1
    const/4 v3, -0x1

    move v1, v3

    goto :goto_1

    .line 3407
    .restart local v1       #dir:I
    :pswitch_0
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    cmpg-float v3, v3, p1

    if-ltz v3, :cond_0

    .line 3410
    add-int/2addr v2, v1

    .line 3411
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->nonAccelMovement:I

    .line 3412
    iput v7, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    goto :goto_0

    .line 3418
    :pswitch_1
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    cmpg-float v3, v3, v6

    if-ltz v3, :cond_0

    .line 3421
    add-int/2addr v2, v1

    .line 3422
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->nonAccelMovement:I

    .line 3423
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    if-lez v1, :cond_2

    const/high16 v4, -0x4000

    :goto_2
    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3424
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    .line 3425
    const/4 v3, 0x2

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    goto :goto_0

    :cond_2
    move v4, v6

    .line 3423
    goto :goto_2

    .line 3438
    :cond_3
    add-int/2addr v2, v1

    .line 3439
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    if-ltz v1, :cond_4

    const/high16 v4, -0x4080

    :goto_3
    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3440
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    .line 3441
    iget v0, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3442
    .local v0, acc:F
    const v3, 0x3f8ccccd

    mul-float/2addr v0, v3

    .line 3443
    const/high16 v3, 0x41a0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5

    move v3, v0

    :goto_4
    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    goto :goto_0

    .end local v0           #acc:F
    :cond_4
    move v4, v5

    .line 3439
    goto :goto_3

    .line 3443
    .restart local v0       #acc:F
    :cond_5
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    goto :goto_4

    .line 3402
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method reset(I)V
    .locals 2
    .parameter "_step"

    .prologue
    .line 3314
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3315
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3316
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    .line 3317
    iput p1, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    .line 3318
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRoot$TrackballAxis;->dir:I

    .line 3319
    return-void
.end method
