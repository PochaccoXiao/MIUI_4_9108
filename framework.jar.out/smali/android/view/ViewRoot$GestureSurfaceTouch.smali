.class final Landroid/view/ViewRoot$GestureSurfaceTouch;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GestureSurfaceTouch"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Landroid/view/ViewRoot;


# direct methods
.method public constructor <init>(Landroid/view/ViewRoot;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "baseContext"

    .prologue
    .line 311
    iput-object p1, p0, Landroid/view/ViewRoot$GestureSurfaceTouch;->this$0:Landroid/view/ViewRoot;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 312
    iput-object p2, p0, Landroid/view/ViewRoot$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    .line 313
    return-void
.end method


# virtual methods
.method public onShapeSweepLR(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    .line 316
    const-string v0, "ViewRoot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Event] Shape Sweep LR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v0, 0x0

    return v0
.end method
