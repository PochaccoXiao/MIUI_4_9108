.class final Landroid/preference/ProfileVolumePreference$SavedState$1;
.super Ljava/lang/Object;
.source "ProfileVolumePreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/ProfileVolumePreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/preference/ProfileVolumePreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/preference/ProfileVolumePreference$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 279
    new-instance v0, Landroid/preference/ProfileVolumePreference$SavedState;

    invoke-direct {v0, p1}, Landroid/preference/ProfileVolumePreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Landroid/preference/ProfileVolumePreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/preference/ProfileVolumePreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/preference/ProfileVolumePreference$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 283
    new-array v0, p1, [Landroid/preference/ProfileVolumePreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Landroid/preference/ProfileVolumePreference$SavedState$1;->newArray(I)[Landroid/preference/ProfileVolumePreference$SavedState;

    move-result-object v0

    return-object v0
.end method