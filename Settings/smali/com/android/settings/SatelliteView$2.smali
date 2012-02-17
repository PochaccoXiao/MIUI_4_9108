.class Lcom/android/settings/SatelliteView$2;
.super Ljava/lang/Object;
.source "SatelliteView.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SatelliteView;


# direct methods
.method constructor <init>(Lcom/android/settings/SatelliteView;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/settings/SatelliteView$2;->this$0:Lcom/android/settings/SatelliteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 455
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 457
    iget-object v4, p0, Lcom/android/settings/SatelliteView$2;->this$0:Lcom/android/settings/SatelliteView;

    iget-object v4, v4, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 458
    .local v0, gs:Landroid/location/GpsStatus;
    iget-object v4, p0, Lcom/android/settings/SatelliteView$2;->this$0:Lcom/android/settings/SatelliteView;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v5

    #setter for: Lcom/android/settings/SatelliteView;->ttff:I
    invoke-static {v4, v5}, Lcom/android/settings/SatelliteView;->access$102(Lcom/android/settings/SatelliteView;I)I

    .line 497
    .end local v0           #gs:Landroid/location/GpsStatus;
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 464
    iget-object v4, p0, Lcom/android/settings/SatelliteView$2;->this$0:Lcom/android/settings/SatelliteView;

    iget-object v4, v4, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 465
    .restart local v0       #gs:Landroid/location/GpsStatus;
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 467
    .local v1, list:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    iget-object v4, p0, Lcom/android/settings/SatelliteView$2;->this$0:Lcom/android/settings/SatelliteView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/settings/SatelliteView;->sv_list_mask:I

    .line 469
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 470
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 471
    .local v3, sat:Landroid/location/GpsSatellite;
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v2

    .line 472
    .local v2, prn:I
    iget-object v4, p0, Lcom/android/settings/SatelliteView$2;->this$0:Lcom/android/settings/SatelliteView;

    iget-object v4, v4, Lcom/android/settings/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    sub-int v5, v2, v7

    aput-object v3, v4, v5

    .line 473
    iget-object v4, p0, Lcom/android/settings/SatelliteView$2;->this$0:Lcom/android/settings/SatelliteView;

    iget v5, v4, Lcom/android/settings/SatelliteView;->sv_list_mask:I

    sub-int v6, v2, v7

    shl-int v6, v7, v6

    or-int/2addr v5, v6

    iput v5, v4, Lcom/android/settings/SatelliteView;->sv_list_mask:I

    goto :goto_1

    .line 479
    .end local v2           #prn:I
    .end local v3           #sat:Landroid/location/GpsSatellite;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/SatelliteView$2;->this$0:Lcom/android/settings/SatelliteView;

    invoke-virtual {v4}, Lcom/android/settings/SatelliteView;->showSVStatus()V

    goto :goto_0
.end method
