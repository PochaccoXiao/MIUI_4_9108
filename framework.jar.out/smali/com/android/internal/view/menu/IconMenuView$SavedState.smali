.class Lcom/android/internal/view/menu/IconMenuView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "IconMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/IconMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/view/menu/IconMenuView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field focusedPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 804
    new-instance v0, Lcom/android/internal/view/menu/IconMenuView$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/view/menu/IconMenuView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 794
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 795
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    .line 796
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/view/menu/IconMenuView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 779
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0
    .parameter "superState"
    .parameter "focusedPosition"

    .prologue
    .line 786
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 787
    iput p2, p0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    .line 788
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 800
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 801
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    return-void
.end method
