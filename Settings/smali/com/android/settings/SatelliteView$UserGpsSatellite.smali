.class public Lcom/android/settings/SatelliteView$UserGpsSatellite;
.super Ljava/lang/Object;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserGpsSatellite"
.end annotation


# instance fields
.field private mSV:I

.field private mSat:Landroid/location/GpsSatellite;


# direct methods
.method public constructor <init>(Landroid/location/GpsSatellite;I)V
    .locals 0
    .parameter "sat"
    .parameter "j"

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/settings/SatelliteView$UserGpsSatellite;->setSat(Landroid/location/GpsSatellite;)V

    .line 362
    invoke-virtual {p0, p2}, Lcom/android/settings/SatelliteView$UserGpsSatellite;->setSV(I)V

    .line 363
    return-void
.end method


# virtual methods
.method public getSat()Landroid/location/GpsSatellite;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/settings/SatelliteView$UserGpsSatellite;->mSat:Landroid/location/GpsSatellite;

    return-object v0
.end method

.method public setSV(I)V
    .locals 0
    .parameter "mSV"

    .prologue
    .line 366
    iput p1, p0, Lcom/android/settings/SatelliteView$UserGpsSatellite;->mSV:I

    .line 367
    return-void
.end method

.method public setSat(Landroid/location/GpsSatellite;)V
    .locals 0
    .parameter "mSat"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/settings/SatelliteView$UserGpsSatellite;->mSat:Landroid/location/GpsSatellite;

    .line 375
    return-void
.end method
