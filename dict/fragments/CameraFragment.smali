.class public final Lfast/dic/dict/fragments/CameraFragment;
.super Lfast/dic/dict/fragments/Hilt_CameraFragment;
.source "CameraFragment.kt"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/fragments/CameraFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u0000 >2\u00020\u00012\u00020\u0002:\u0001>B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J$\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\u0008\u0010\u001e\u001a\u00020\u001dH\u0016J\u0008\u0010$\u001a\u00020%H\u0002J\u0008\u0010&\u001a\u00020\u001dH\u0002J0\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020+H\u0003b\u0010\u0008,\u0012\u000c\u0008-\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(.b\u000c\u0008/\u0012\u0008\u0008-\u0012\u0004\u0008\u0003\u0010.J\u001a\u00100\u001a\u00020\u001dH\u0003b\u0010\u0008,\u0012\u000c\u0008-\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(.J\u001a\u00101\u001a\u00020\u001dH\u0003b\u0010\u0008,\u0012\u000c\u0008-\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(.J\u0008\u00102\u001a\u00020\u001dH\u0002J\u0008\u00103\u001a\u00020\u001dH\u0002J\u0008\u00104\u001a\u00020\u001dH\u0002J\u0008\u00105\u001a\u00020\u001dH\u0016J\u0018\u00106\u001a\u00020\u001d2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0016J\u0010\u0010;\u001a\u00020+2\u0006\u0010<\u001a\u00020=H\u0016R#\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\u000b\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R!\u0010\u001f\u001a\u0015\u0012\u000c\u0012\n \"*\u0004\u0018\u00010!0!0 \u00a2\u0006\u0002\u0008#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\'\u001a\u0015\u0012\u000c\u0012\n \"*\u0004\u0018\u00010(0(0 \u00a2\u0006\u0002\u0008#X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008@\u00a8\u0006?"
    }
    d2 = {
        "Lfast/dic/dict/fragments/CameraFragment;",
        "Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;",
        "Landroidx/core/view/MenuProvider;",
        "<init>",
        "()V",
        "soundEffect",
        "Lfast/dic/dict/helpers/FDSoundEffect;",
        "getSoundEffect",
        "()Lfast/dic/dict/helpers/FDSoundEffect;",
        "setSoundEffect",
        "(Lfast/dic/dict/helpers/FDSoundEffect;)V",
        "Ljavax/inject/Inject;",
        "cameraPreview",
        "Landroidx/camera/core/Preview;",
        "imageCapture",
        "Landroidx/camera/core/ImageCapture;",
        "cameraExecutor",
        "Ljava/util/concurrent/ExecutorService;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentCameraBinding;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "checkLimitation",
        "",
        "onResume",
        "startForResult",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "kotlin.jvm.PlatformType",
        "Lorg/jspecify/annotations/NonNull;",
        "getCropOptions",
        "Lcom/canhub/cropper/CropImageOptions;",
        "checkPermission",
        "cropImage",
        "Lcom/canhub/cropper/CropImageContractOptions;",
        "openFlashLight",
        "on",
        "",
        "Landroid/annotation/SuppressLint;",
        "value",
        "RestrictedApi",
        "Landroidx/annotation/RequiresApi;",
        "startCamera",
        "stopCamera",
        "changeFlashIcon",
        "takePhoto",
        "getLastImageFromGallery",
        "onDestroy",
        "onCreateMenu",
        "menu",
        "Landroid/view/Menu;",
        "menuInflater",
        "Landroid/view/MenuInflater;",
        "onMenuItemSelected",
        "menuItem",
        "Landroid/view/MenuItem;",
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
.field public static final Companion:Lfast/dic/dict/fragments/CameraFragment$Companion;

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd-HH-mm-ss-SSS"

.field private static final FILENAME:Ljava/lang/String; = "fast_dictionary_image_translator.jpg"


# instance fields
.field private binding:Lfast/dic/dict/databinding/FragmentCameraBinding;

.field private cameraExecutor:Ljava/util/concurrent/ExecutorService;

.field private cameraPreview:Landroidx/camera/core/Preview;

.field private final cropImage:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Lcom/canhub/cropper/CropImageContractOptions;",
            ">;"
        }
    .end annotation
.end field

.field private imageCapture:Landroidx/camera/core/ImageCapture;

.field public soundEffect:Lfast/dic/dict/helpers/FDSoundEffect;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final startForResult:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$WekDDr7N0D9JNxkpeYv995gvY1k(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/fragments/CameraFragment;->checkLimitation$lambda$0$0(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f3CutD5hLfT8Blfb2bWxVL59i6Q(Lfast/dic/dict/fragments/CameraFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lfast/dic/dict/fragments/CameraFragment;->cropImage$lambda$0$0$1(Lfast/dic/dict/fragments/CameraFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/fragments/CameraFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/fragments/CameraFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/fragments/CameraFragment;->Companion:Lfast/dic/dict/fragments/CameraFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0}, Lfast/dic/dict/fragments/Hilt_CameraFragment;-><init>(Z)V

    .line 151
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/fragments/CameraFragment;)V

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/fragments/CameraFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lfast/dic/dict/fragments/CameraFragment;->startForResult:Landroidx/activity/result/ActivityResultLauncher;

    .line 202
    new-instance v0, Lcom/canhub/cropper/CropImageContract;

    invoke-direct {v0}, Lcom/canhub/cropper/CropImageContract;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v2, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/fragments/CameraFragment;)V

    invoke-virtual {p0, v0, v2}, Lfast/dic/dict/fragments/CameraFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lfast/dic/dict/fragments/CameraFragment;->cropImage:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$getCropImage$p(Lfast/dic/dict/fragments/CameraFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 71
    iget-object p0, p0, Lfast/dic/dict/fragments/CameraFragment;->cropImage:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method public static final synthetic access$getCropOptions(Lfast/dic/dict/fragments/CameraFragment;)Lcom/canhub/cropper/CropImageOptions;
    .locals 0

    .line 71
    invoke-direct {p0}, Lfast/dic/dict/fragments/CameraFragment;->getCropOptions()Lcom/canhub/cropper/CropImageOptions;

    move-result-object p0

    return-object p0
.end method

.method private final changeFlashIcon()V
    .locals 4

    .line 298
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Lfast/dic/dict/utils/ContextExtKt;->requestForNewMenu(Landroidx/fragment/app/Fragment;)V

    return-void

    .line 305
    :cond_0
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    iget-object v1, p0, Lfast/dic/dict/fragments/CameraFragment;->imageCapture:Landroidx/camera/core/ImageCapture;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "########========>>>>> flashMode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Lfast/dic/dict/utils/ContextExtKt;->requestForNewMenu(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private final checkLimitation()V
    .locals 14

    .line 105
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    instance-of v1, v0, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v1, :cond_0

    check-cast v0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2Or3()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getImageTranslatorLimitation()I

    move-result v1

    if-gtz v1, :cond_2

    .line 113
    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->validRewardedAdsForImageTranslator()Z

    .line 115
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "getSupportFragmentManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v2, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    .line 118
    sget v1, Lfast/dic/dict/R$string;->image_translator:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/fragments/CameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 120
    sget v1, Lfast/dic/dict/R$string;->image_translator_limitation_desc:I

    .line 119
    invoke-virtual {p0, v1}, Lfast/dic/dict/fragments/CameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    sget v1, Lfast/dic/dict/R$string;->image_translator_limitation_cta_title:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/fragments/CameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0x20

    const/4 v13, 0x0

    const/4 v3, 0x1

    .line 116
    const-string v7, "PRICING"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/services/FDAds$AdForFeature;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    const-string p0, ""

    invoke-virtual {v2, v0, p0}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 130
    new-instance p0, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda4;

    invoke-direct {p0, v2}, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda4;-><init>(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;)V

    invoke-virtual {v2, p0}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->setOnDismissed(Lkotlin/jvm/functions/Function1;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static final checkLimitation$lambda$0$0(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Z)Lkotlin/Unit;
    .locals 2

    .line 131
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    if-eqz p1, :cond_0

    .line 134
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->newPricingFragment:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    .line 136
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final checkPermission()V
    .locals 5

    .line 174
    sget-object v0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->Companion:Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;->isStoragePermissionGranted(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lfast/dic/dict/fragments/CameraFragment;->getLastImageFromGallery()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 180
    :goto_0
    sget-object v2, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->Companion:Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;->isCameraPermissionGranted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    invoke-direct {p0}, Lfast/dic/dict/fragments/CameraFragment;->startCamera()V

    move v1, v0

    :cond_1
    if-eqz v1, :cond_3

    .line 187
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavController;->getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 188
    const-string v2, "camera_permission_granted"

    .line 187
    invoke-virtual {v1, v2}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/fragments/CameraFragment;)V

    new-instance p0, Lfast/dic/dict/fragments/CameraFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v3}, Lfast/dic/dict/fragments/CameraFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, p0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 197
    :cond_2
    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget v0, Lfast/dic/dict/R$id;->cameraPermissionFragment:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method static final checkPermission$lambda$0(Lfast/dic/dict/fragments/CameraFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 190
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 191
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()Z

    goto :goto_0

    .line 193
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/fragments/CameraFragment;->startCamera()V

    .line 195
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final cropImage$lambda$0(Lfast/dic/dict/fragments/CameraFragment;Lcom/canhub/cropper/CropImageView$CropResult;)V
    .locals 4

    .line 203
    invoke-virtual {p1}, Lcom/canhub/cropper/CropImageView$CropResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p1}, Lcom/canhub/cropper/CropImageView$CropResult;->getUriContent()Landroid/net/Uri;

    move-result-object p1

    .line 207
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "getSupportFragmentManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    new-instance v1, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;

    invoke-direct {v1}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;-><init>()V

    .line 209
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;->setImageUrl(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Landroidx/core/os/BundleKt;->bundleOf()Landroid/os/Bundle;

    move-result-object p1

    .line 212
    const-string v2, "IMAGE_URL"

    invoke-virtual {v1}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1, p1}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 214
    const-string p1, ""

    invoke-virtual {v1, v0, p1}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 215
    new-instance p1, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda5;-><init>(Lfast/dic/dict/fragments/CameraFragment;)V

    invoke-virtual {v1, p1}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;->setOnDismissed(Lkotlin/jvm/functions/Function0;)V

    .line 219
    invoke-direct {p0}, Lfast/dic/dict/fragments/CameraFragment;->stopCamera()V

    :cond_0
    return-void
.end method

.method private static final cropImage$lambda$0$0$1(Lfast/dic/dict/fragments/CameraFragment;)Lkotlin/Unit;
    .locals 0

    .line 216
    invoke-direct {p0}, Lfast/dic/dict/fragments/CameraFragment;->startCamera()V

    .line 217
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getCropOptions()Lcom/canhub/cropper/CropImageOptions;
    .locals 75

    .line 163
    new-instance v0, Lcom/canhub/cropper/CropImageOptions;

    const/16 v73, 0x3f

    const/16 v74, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, -0x1

    const/16 v72, -0x1

    invoke-direct/range {v0 .. v74}, Lcom/canhub/cropper/CropImageOptions;-><init>(ZZLcom/canhub/cropper/CropImageView$CropShape;Lcom/canhub/cropper/CropImageView$CropCornerShape;FFFLcom/canhub/cropper/CropImageView$Guidelines;Lcom/canhub/cropper/CropImageView$ScaleType;ZZZIZZZZIFZIIFIFFFIIFIIIIIIIILjava/lang/CharSequence;ILjava/lang/Integer;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;ZLandroid/graphics/Rect;IZZZIZZLjava/lang/CharSequence;IZZLjava/lang/String;Ljava/util/List;FILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x1

    .line 164
    iput-boolean v1, v0, Lcom/canhub/cropper/CropImageOptions;->allowFlipping:Z

    .line 166
    invoke-virtual/range {p0 .. p0}, Lfast/dic/dict/fragments/CameraFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "requireContext(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lfast/dic/dict/R$attr;->topBackground:I

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/canhub/cropper/CropImageOptions;->activityBackgroundColor:I

    .line 167
    invoke-virtual/range {p0 .. p0}, Lfast/dic/dict/fragments/CameraFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfast/dic/dict/R$color;->fdPrimary:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/canhub/cropper/CropImageOptions;->toolbarBackButtonColor:Ljava/lang/Integer;

    .line 168
    invoke-virtual/range {p0 .. p0}, Lfast/dic/dict/fragments/CameraFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfast/dic/dict/R$color;->fdSecondary:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/canhub/cropper/CropImageOptions;->activityMenuTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method private final getLastImageFromGallery()V
    .locals 10

    .line 366
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "EXTERNAL_CONTENT_URI"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 369
    new-array v2, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v2, v6

    .line 370
    const-string v0, "_data"

    const/4 v8, 0x1

    aput-object v0, v2, v8

    .line 371
    const-string v0, "bucket_display_name"

    const/4 v9, 0x2

    aput-object v0, v2, v9

    const/4 v0, 0x3

    .line 372
    const-string v3, "datetaken"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    .line 373
    const-string v3, "mime_type"

    aput-object v3, v2, v0

    .line 375
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    .line 376
    const-string v5, "datetaken DESC"

    const/4 v3, 0x0

    .line 375
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-ne v2, v8, :cond_1

    .line 380
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 381
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 384
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 385
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 386
    new-array v2, v9, [Lcom/bumptech/glide/load/Transformation;

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 387
    iget-object p0, p0, Lfast/dic/dict/fragments/CameraFragment;->binding:Lfast/dic/dict/databinding/FragmentCameraBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentCameraBinding;->galleryIv:Lcom/google/android/material/imageview/ShapeableImageView;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_1
    if-eqz v0, :cond_2

    .line 391
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/fragments/CameraFragment;Landroid/view/View;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lfast/dic/dict/fragments/CameraFragment;->takePhoto()V

    return-void
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/fragments/CameraFragment;Landroid/view/View;)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->getSoundEffect()Lfast/dic/dict/helpers/FDSoundEffect;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/helpers/FDSoundEffect;->tapVibration()V

    .line 93
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    iget-object p0, p0, Lfast/dic/dict/fragments/CameraFragment;->startForResult:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private final openFlashLight(Z)V
    .locals 2

    .line 229
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/fragments/CameraFragment;->cameraPreview:Landroidx/camera/core/Preview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/camera/core/Preview;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 234
    :cond_1
    iget-object p1, p0, Lfast/dic/dict/fragments/CameraFragment;->imageCapture:Landroidx/camera/core/ImageCapture;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 235
    iget-object p1, p0, Lfast/dic/dict/fragments/CameraFragment;->imageCapture:Landroidx/camera/core/ImageCapture;

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/camera/core/ImageCapture;->setFlashMode(I)V

    goto :goto_0

    .line 237
    :cond_2
    iget-object p1, p0, Lfast/dic/dict/fragments/CameraFragment;->imageCapture:Landroidx/camera/core/ImageCapture;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroidx/camera/core/ImageCapture;->setFlashMode(I)V

    .line 240
    :cond_3
    :goto_0
    invoke-direct {p0}, Lfast/dic/dict/fragments/CameraFragment;->changeFlashIcon()V

    return-void
.end method

.method private final startCamera()V
    .locals 3

    .line 245
    iget-object v0, p0, Lfast/dic/dict/fragments/CameraFragment;->binding:Lfast/dic/dict/databinding/FragmentCameraBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentCameraBinding;->cameraPreview:Landroidx/camera/view/PreviewView;

    sget-object v1, Landroidx/camera/view/PreviewView$ScaleType;->FILL_START:Landroidx/camera/view/PreviewView$ScaleType;

    invoke-virtual {v0, v1}, Landroidx/camera/view/PreviewView;->setScaleType(Landroidx/camera/view/PreviewView$ScaleType;)V

    .line 247
    new-instance v0, Landroidx/camera/core/ImageCapture$Builder;

    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$Builder;->build()Landroidx/camera/core/ImageCapture;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/fragments/CameraFragment;->imageCapture:Landroidx/camera/core/ImageCapture;

    .line 248
    sget-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->Companion:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 250
    new-instance v1, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/fragments/CameraFragment;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 288
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 250
    invoke-interface {v0, v1, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static final startCamera$lambda$0(Lfast/dic/dict/fragments/CameraFragment;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 6

    .line 253
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "get(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 260
    new-instance v0, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v0}, Landroidx/camera/core/Preview$Builder;-><init>()V

    .line 261
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview$Builder;->setTargetRotation(I)Landroidx/camera/core/Preview$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lfast/dic/dict/fragments/CameraFragment;->binding:Lfast/dic/dict/databinding/FragmentCameraBinding;

    if-nez v1, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentCameraBinding;->cameraPreview:Landroidx/camera/view/PreviewView;

    invoke-virtual {v1}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 260
    iput-object v0, p0, Lfast/dic/dict/fragments/CameraFragment;->cameraPreview:Landroidx/camera/core/Preview;

    .line 268
    sget-object v0, Landroidx/camera/core/CameraSelector;->DEFAULT_BACK_CAMERA:Landroidx/camera/core/CameraSelector;

    const-string v1, "DEFAULT_BACK_CAMERA"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 271
    :try_start_0
    iget-object v2, p0, Lfast/dic/dict/fragments/CameraFragment;->imageCapture:Landroidx/camera/core/ImageCapture;

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lfast/dic/dict/fragments/CameraFragment;->imageCapture:Landroidx/camera/core/ImageCapture;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 272
    :goto_0
    iget-object v2, p0, Lfast/dic/dict/fragments/CameraFragment;->imageCapture:Landroidx/camera/core/ImageCapture;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Landroidx/camera/core/ImageCapture;->setFlashMode(I)V

    .line 276
    :cond_3
    invoke-virtual {p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 280
    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    new-array v3, v3, [Landroidx/camera/core/UseCase;

    iget-object v4, p0, Lfast/dic/dict/fragments/CameraFragment;->cameraPreview:Landroidx/camera/core/Preview;

    aput-object v4, v3, v1

    iget-object v4, p0, Lfast/dic/dict/fragments/CameraFragment;->imageCapture:Landroidx/camera/core/ImageCapture;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 279
    invoke-virtual {p1, v2, v0, v3}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    .line 282
    invoke-direct {p0}, Lfast/dic/dict/fragments/CameraFragment;->changeFlashIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 285
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Use case binding failed "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final startForResult$lambda$0(Lfast/dic/dict/fragments/CameraFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 153
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lfast/dic/dict/fragments/CameraFragment;->cropImage:Landroidx/activity/result/ActivityResultLauncher;

    .line 156
    new-instance v1, Lcom/canhub/cropper/CropImageContractOptions;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0}, Lfast/dic/dict/fragments/CameraFragment;->getCropOptions()Lcom/canhub/cropper/CropImageOptions;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/canhub/cropper/CropImageContractOptions;-><init>(Landroid/net/Uri;Lcom/canhub/cropper/CropImageOptions;)V

    .line 155
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final stopCamera()V
    .locals 1

    .line 293
    iget-object v0, p0, Lfast/dic/dict/fragments/CameraFragment;->cameraPreview:Landroidx/camera/core/Preview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/camera/core/Preview;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->close()V

    .line 294
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/fragments/CameraFragment;->imageCapture:Landroidx/camera/core/ImageCapture;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->close()V

    :cond_1
    return-void
.end method

.method private final takePhoto()V
    .locals 5

    .line 311
    iget-object v0, p0, Lfast/dic/dict/fragments/CameraFragment;->imageCapture:Landroidx/camera/core/ImageCapture;

    if-nez v0, :cond_0

    return-void

    .line 313
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->getSoundEffect()Lfast/dic/dict/helpers/FDSoundEffect;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/helpers/FDSoundEffect;->tapVibration()V

    .line 314
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->getSoundEffect()Lfast/dic/dict/helpers/FDSoundEffect;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/helpers/FDSoundEffect;->playShutterSound()V

    .line 316
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss-SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 318
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fast_dictionary_image_translator.jpg-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_display_name"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v1, "mime_type"

    const-string v3, "image/jpeg"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-le v1, v3, :cond_1

    .line 322
    const-string v1, "relative_path"

    const-string v3, "Pictures/Fastdic-Image"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_1
    new-instance v1, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;

    .line 329
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 330
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 328
    invoke-direct {v1, v3, v4, v2}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 333
    invoke-virtual {v1}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;->build()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 340
    new-instance v3, Lfast/dic/dict/fragments/CameraFragment$takePhoto$1;

    invoke-direct {v3, p0}, Lfast/dic/dict/fragments/CameraFragment$takePhoto$1;-><init>(Lfast/dic/dict/fragments/CameraFragment;)V

    check-cast v3, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    .line 337
    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/core/ImageCapture;->takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method


# virtual methods
.method public final getSoundEffect()Lfast/dic/dict/helpers/FDSoundEffect;
    .locals 0

    .line 75
    iget-object p0, p0, Lfast/dic/dict/fragments/CameraFragment;->soundEffect:Lfast/dic/dict/helpers/FDSoundEffect;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "soundEffect"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menuInflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 406
    iget-object p0, p0, Lfast/dic/dict/fragments/CameraFragment;->imageCapture:Landroidx/camera/core/ImageCapture;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 407
    sget p0, Lfast/dic/dict/R$menu;->camera_menu_flash_on:I

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    .line 409
    :cond_0
    sget p0, Lfast/dic/dict/R$menu;->camera_menu_flash_off:I

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 85
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentCameraBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentCameraBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/fragments/CameraFragment;->binding:Lfast/dic/dict/databinding/FragmentCameraBinding;

    const/4 p2, 0x0

    .line 87
    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentCameraBinding;->shutterBt:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v0, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda6;-><init>(Lfast/dic/dict/fragments/CameraFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p1, p0, Lfast/dic/dict/fragments/CameraFragment;->binding:Lfast/dic/dict/databinding/FragmentCameraBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentCameraBinding;->galleryIv:Lcom/google/android/material/imageview/ShapeableImageView;

    new-instance v0, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda7;-><init>(Lfast/dic/dict/fragments/CameraFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string v0, "newSingleThreadExecutor(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/fragments/CameraFragment;->cameraExecutor:Ljava/util/concurrent/ExecutorService;

    .line 98
    invoke-direct {p0}, Lfast/dic/dict/fragments/CameraFragment;->checkPermission()V

    .line 99
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Lfast/dic/dict/utils/ContextExtKt;->requestForNewMenu(Landroidx/fragment/app/Fragment;)V

    .line 101
    iget-object p0, p0, Lfast/dic/dict/fragments/CameraFragment;->binding:Lfast/dic/dict/databinding/FragmentCameraBinding;

    if-nez p0, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentCameraBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 395
    invoke-super {p0}, Lfast/dic/dict/fragments/Hilt_CameraFragment;->onDestroy()V

    .line 398
    iget-object p0, p0, Lfast/dic/dict/fragments/CameraFragment;->cameraExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_1

    if-nez p0, :cond_0

    .line 399
    const-string p0, "cameraExecutor"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 415
    sget v0, Lfast/dic/dict/R$id;->flashOffItem:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->getSoundEffect()Lfast/dic/dict/helpers/FDSoundEffect;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/helpers/FDSoundEffect;->tapVibration()V

    .line 418
    invoke-direct {p0, v1}, Lfast/dic/dict/fragments/CameraFragment;->openFlashLight(Z)V

    goto :goto_0

    .line 421
    :cond_0
    sget v0, Lfast/dic/dict/R$id;->flashOnItem:I

    if-ne p1, v0, :cond_1

    .line 422
    invoke-virtual {p0}, Lfast/dic/dict/fragments/CameraFragment;->getSoundEffect()Lfast/dic/dict/helpers/FDSoundEffect;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/helpers/FDSoundEffect;->tapVibration()V

    const/4 p1, 0x0

    .line 424
    invoke-direct {p0, p1}, Lfast/dic/dict/fragments/CameraFragment;->openFlashLight(Z)V

    :cond_1
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 142
    invoke-super {p0}, Lfast/dic/dict/fragments/Hilt_CameraFragment;->onResume()V

    .line 144
    invoke-direct {p0}, Lfast/dic/dict/fragments/CameraFragment;->checkLimitation()V

    .line 146
    iget-object v0, p0, Lfast/dic/dict/fragments/CameraFragment;->imageCapture:Landroidx/camera/core/ImageCapture;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture;->setFlashMode(I)V

    .line 147
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/fragments/CameraFragment;->changeFlashIcon()V

    return-void
.end method

.method public final setSoundEffect(Lfast/dic/dict/helpers/FDSoundEffect;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lfast/dic/dict/fragments/CameraFragment;->soundEffect:Lfast/dic/dict/helpers/FDSoundEffect;

    return-void
.end method
