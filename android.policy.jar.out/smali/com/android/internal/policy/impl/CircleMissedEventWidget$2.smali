.class Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;
.super Ljava/lang/Object;
.source "CircleMissedEventWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 127
    const-string v0, "CircleMissedEventWidget"

    const-string v1, "onTouchEvent() in MissedEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$100(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/CircleUnlockView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->access$100(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/CircleUnlockView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/CircleUnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
