.class Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1$1;
.super Ljava/lang/Object;
.source "ClockWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1;

.field final synthetic val$timezoneChanged:Z

.field final synthetic val$tmpIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1;ZLandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1$1;->this$1:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 529
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1$1;->val$timezoneChanged:Z

    if-eqz v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1$1;->val$tmpIntent:Landroid/content/Intent;

    const-string v2, "time-zone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1$1;->this$1:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1;->this$0:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->access$302(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 536
    .end local v0           #tz:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1$1;->this$1:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$1;->this$0:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    #calls: Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->refreshTimeAndDate()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->access$400(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V

    .line 537
    return-void
.end method
