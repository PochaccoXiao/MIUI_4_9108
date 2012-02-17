.class final Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$TimeupdateTask;
.super Ljava/util/TimerTask;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeupdateTask"
.end annotation


# instance fields
.field private mProxy:Landroid/webkit/HTML5VideoViewProxy;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$TimeupdateTask;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 117
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$TimeupdateTask;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->onTimeupdate()V

    .line 121
    return-void
.end method
