.class public final Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;
.super Lfast/dic/dict/fragments/onboardings/Hilt_CameraPermissionFragment;
.source "CameraPermissionFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraPermissionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraPermissionFragment.kt\nfast/dic/dict/fragments/onboardings/CameraPermissionFragment\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,125:1\n14266#2,2:126\n37#3,2:128\n*S KotlinDebug\n*F\n+ 1 CameraPermissionFragment.kt\nfast/dic/dict/fragments/onboardings/CameraPermissionFragment\n*L\n29#1:126,2\n98#1:128,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0017H\u0002J\u0006\u0010\u001b\u001a\u00020\u0017J\u0008\u0010\u001c\u001a\u00020\u0017H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R-\u0010\u0008\u001a!\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u000b \u000c*\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n0\n0\t\u00a2\u0006\u0002\u0008\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\u001f\u00a8\u0006\u001e"
    }
    d2 = {
        "Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;",
        "Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;",
        "<init>",
        "()V",
        "granted",
        "",
        "binding",
        "Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;",
        "requestMultiplePermissions",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "Lorg/jspecify/annotations/NonNull;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDismiss",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "requestForCameraPermission",
        "notifyDismiss",
        "askPermissionForReadStorage",
        "Companion",
        "app",
        "Ldagger/hilt/android/AndroidEntryPoint;"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;

.field public static final PERMISSION_GRANTED_KEY:Ljava/lang/String; = "camera_permission_granted"

.field private static final REQUIRED_PERMISSIONS:[Ljava/lang/String;


# instance fields
.field private binding:Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;

.field private granted:Z

.field private final requestMultiplePermissions:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->Companion:Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;

    const/4 v0, 0x1

    .line 97
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 96
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 129
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 98
    sput-object v0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lfast/dic/dict/fragments/onboardings/Hilt_CameraPermissionFragment;-><init>(Z)V

    .line 26
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;)V

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->requestMultiplePermissions:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$getREQUIRED_PERMISSIONS$cp()[Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method private final askPermissionForReadStorage()V
    .locals 3

    .line 85
    sget-object v0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->Companion:Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;->isStoragePermissionGranted(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object p0, p0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->requestMultiplePermissions:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {v0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;->access$readImagePermission(Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->notifyDismiss()V

    return-void
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->notifyDismiss()V

    return-void
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->requestForCameraPermission()V

    return-void
.end method

.method private final requestForCameraPermission()V
    .locals 3

    .line 69
    sget-object v0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->Companion:Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;->isCameraPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->askPermissionForReadStorage()V

    return-void

    .line 72
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->requestMultiplePermissions:Landroidx/activity/result/ActivityResultLauncher;

    sget-object v0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method static final requestMultiplePermissions$lambda$0(Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;Ljava/util/Map;)V
    .locals 6

    .line 27
    sget-object v0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->askPermissionForReadStorage()V

    return-void

    .line 29
    :cond_0
    sget-object v0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->Companion:Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;

    invoke-static {v0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;->access$readImagePermission(Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;)[Ljava/lang/String;

    move-result-object v0

    .line 126
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 29
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 30
    iput-boolean v1, p0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->granted:Z

    .line 31
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->notifyDismiss()V

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 33
    :cond_2
    iput-boolean v3, p0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->granted:Z

    .line 34
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->notifyDismiss()V

    return-void
.end method


# virtual methods
.method public final notifyDismiss()V
    .locals 3

    .line 77
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavController;->getPreviousBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    iget-boolean p0, p0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->granted:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 77
    const-string v2, "camera_permission_granted"

    invoke-virtual {v1, v2, p0}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    :cond_0
    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 42
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->binding:Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;

    .line 44
    sget-object p1, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->Companion:Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "requireContext(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;->isCameraPermissionGranted(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "requireActivity(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;->isStoragePermissionGranted(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->granted:Z

    .line 46
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->notifyDismiss()V

    .line 49
    :cond_0
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->binding:Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    new-instance v0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->setOnBackListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->binding:Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->continueButton:Landroid/widget/Button;

    new-instance v0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p0, p0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->binding:Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;

    if-nez p0, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getPreviousBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-boolean v1, p0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->granted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 61
    const-string v2, "camera_permission_granted"

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lfast/dic/dict/fragments/onboardings/Hilt_CameraPermissionFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
