.class public interface abstract Landroid/view/GestureDetector$OnShapeGestureListener;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnShapeGestureListener"
.end annotation


# virtual methods
.method public abstract onHandTouched(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onLiftTap(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onMultiAction(I[F[F[F[F[F[FI[I[JI)Z
.end method

.method public abstract onPalm(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onShapeSweepLR(I)Z
.end method

.method public abstract onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
.end method
