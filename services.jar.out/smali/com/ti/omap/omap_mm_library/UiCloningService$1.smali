.class Lcom/ti/omap/omap_mm_library/UiCloningService$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "UiCloningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ti/omap/omap_mm_library/UiCloningService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;


# direct methods
.method constructor <init>(Lcom/ti/omap/omap_mm_library/UiCloningService;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ti/omap/omap_mm_library/UiCloningService$1;->this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ti/omap/omap_mm_library/UiCloningService$1;->this$0:Lcom/ti/omap/omap_mm_library/UiCloningService;

    #calls: Lcom/ti/omap/omap_mm_library/UiCloningService;->onRotationChanged(I)V
    invoke-static {v0, p1}, Lcom/ti/omap/omap_mm_library/UiCloningService;->access$100(Lcom/ti/omap/omap_mm_library/UiCloningService;I)V

    .line 74
    return-void
.end method
