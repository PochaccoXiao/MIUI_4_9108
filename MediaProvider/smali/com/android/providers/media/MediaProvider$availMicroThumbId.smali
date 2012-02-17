.class Lcom/android/providers/media/MediaProvider$availMicroThumbId;
.super Ljava/lang/Object;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "availMicroThumbId"
.end annotation


# instance fields
.field availNextN:I

.field availStart:I

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;II)V
    .locals 0
    .parameter
    .parameter "availStart"
    .parameter "availNextN"

    .prologue
    .line 6394
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6395
    iput p2, p0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->availStart:I

    .line 6396
    iput p3, p0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->availNextN:I

    .line 6397
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 6401
    instance-of v2, p1, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    if-eqz v2, :cond_0

    .line 6402
    move-object v0, p1

    check-cast v0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;

    move-object v1, v0

    .line 6403
    .local v1, o:Lcom/android/providers/media/MediaProvider$availMicroThumbId;
    iget v2, p0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->availStart:I

    iget v3, v1, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->availStart:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->availNextN:I

    iget v3, v1, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->availNextN:I

    if-ne v2, v3, :cond_0

    .line 6404
    const/4 v2, 0x1

    .line 6407
    .end local v1           #o:Lcom/android/providers/media/MediaProvider$availMicroThumbId;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getAvailNextN()I
    .locals 1

    .prologue
    .line 6423
    iget v0, p0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->availNextN:I

    return v0
.end method

.method getAvailStart()I
    .locals 1

    .prologue
    .line 6419
    iget v0, p0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->availStart:I

    return v0
.end method

.method setAvailNextN(I)V
    .locals 0
    .parameter "availNextN"

    .prologue
    .line 6415
    iput p1, p0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->availNextN:I

    .line 6416
    return-void
.end method

.method setAvailStart(I)V
    .locals 0
    .parameter "availStart"

    .prologue
    .line 6411
    iput p1, p0, Lcom/android/providers/media/MediaProvider$availMicroThumbId;->availStart:I

    .line 6412
    return-void
.end method
