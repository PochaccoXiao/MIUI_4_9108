.class public final Lcom/ti/omap/omap_mm_library/OmapMMLibrary;
.super Ljava/lang/Object;
.source "OmapMMLibrary.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "omap_mm_library_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "OmapMMJavaLib"

    iput-object v0, p0, Lcom/ti/omap/omap_mm_library/OmapMMLibrary;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private native deinit()V
.end method


# virtual methods
.method public native native_init()V
.end method

.method public native setDisplayId(I)V
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ti/omap/omap_mm_library/OmapMMLibrary;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 53
    return-void
.end method

.method public native setVideoISurface()V
.end method

.method public setVideoSurface(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "sh"

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/ti/omap/omap_mm_library/OmapMMLibrary;->mSurface:Landroid/view/Surface;

    .line 48
    invoke-virtual {p0}, Lcom/ti/omap/omap_mm_library/OmapMMLibrary;->setVideoISurface()V

    .line 49
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ti/omap/omap_mm_library/OmapMMLibrary;->mSurface:Landroid/view/Surface;

    goto :goto_0
.end method
