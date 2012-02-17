.class Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$2;
.super Landroid/database/ContentObserver;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$2;->this$0:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$2;->this$0:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    #calls: Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->refreshTimeAndDate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->access$400(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V

    .line 554
    return-void
.end method
