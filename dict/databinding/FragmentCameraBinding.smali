.class public final Lfast/dic/dict/databinding/FragmentCameraBinding;
.super Ljava/lang/Object;
.source "FragmentCameraBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cameraPreview:Landroidx/camera/view/PreviewView;

.field public final galleryIv:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final gridView:Lfast/dic/dict/views/CameraGridView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final shutterBt:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/camera/view/PreviewView;Lcom/google/android/material/imageview/ShapeableImageView;Lfast/dic/dict/views/CameraGridView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentCameraBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    iput-object p2, p0, Lfast/dic/dict/databinding/FragmentCameraBinding;->cameraPreview:Landroidx/camera/view/PreviewView;

    .line 42
    iput-object p3, p0, Lfast/dic/dict/databinding/FragmentCameraBinding;->galleryIv:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 43
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentCameraBinding;->gridView:Lfast/dic/dict/views/CameraGridView;

    .line 44
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentCameraBinding;->shutterBt:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentCameraBinding;
    .locals 8

    .line 74
    sget v0, Lfast/dic/dict/R$id;->camera_preview:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/camera/view/PreviewView;

    if-eqz v4, :cond_0

    .line 80
    sget v0, Lfast/dic/dict/R$id;->gallery_iv:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v5, :cond_0

    .line 86
    sget v0, Lfast/dic/dict/R$id;->gridView:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lfast/dic/dict/views/CameraGridView;

    if-eqz v6, :cond_0

    .line 92
    sget v0, Lfast/dic/dict/R$id;->shutter_bt:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v7, :cond_0

    .line 98
    new-instance v2, Lfast/dic/dict/databinding/FragmentCameraBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v7}, Lfast/dic/dict/databinding/FragmentCameraBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/camera/view/PreviewView;Lcom/google/android/material/imageview/ShapeableImageView;Lfast/dic/dict/views/CameraGridView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-object v2

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentCameraBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v0, v1}, Lfast/dic/dict/databinding/FragmentCameraBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentCameraBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentCameraBinding;
    .locals 2

    .line 61
    sget v0, Lfast/dic/dict/R$layout;->fragment_camera:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/databinding/FragmentCameraBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentCameraBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentCameraBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentCameraBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
