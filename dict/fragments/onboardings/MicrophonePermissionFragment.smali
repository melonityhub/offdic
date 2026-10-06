.class public final Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;
.super Lfast/dic/dict/fragments/onboardings/Hilt_MicrophonePermissionFragment;
.source "MicrophonePermissionFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMicrophonePermissionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MicrophonePermissionFragment.kt\nfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,74:1\n1939#2,3:75\n*S KotlinDebug\n*F\n+ 1 MicrophonePermissionFragment.kt\nfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment\n*L\n26#1:75,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0017H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R-\u0010\u0008\u001a!\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u000b \u000c*\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n0\n0\t\u00a2\u0006\u0002\u0008\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\u001d\u00a8\u0006\u001c"
    }
    d2 = {
        "Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;",
        "Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;",
        "<init>",
        "()V",
        "binding",
        "Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;",
        "granted",
        "",
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
        "requestAudioPermissions",
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
.field public static final Companion:Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment$Companion;

.field public static final PERMISSION_GRANTED_KEY:Ljava/lang/String; = "PERMISSION_GRANTED_KEY"


# instance fields
.field private binding:Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;

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
    .locals 2

    new-instance v0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->Companion:Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, v0}, Lfast/dic/dict/fragments/onboardings/Hilt_MicrophonePermissionFragment;-><init>(Z)V

    .line 25
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;)V

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->requestMultiplePermissions:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->dismiss()V

    return-void
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->requestAudioPermissions()V

    return-void
.end method

.method private final requestAudioPermissions()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lfast/dic/dict/utils/PermissionUtilsKt;->hasRecordAudioPermission(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 64
    iget-object p0, p0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->requestMultiplePermissions:Landroidx/activity/result/ActivityResultLauncher;

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_0
    iput-boolean v1, p0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->granted:Z

    .line 67
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->dismiss()V

    return-void
.end method

.method static final requestMultiplePermissions$lambda$0(Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;Ljava/util/Map;)V
    .locals 2

    .line 26
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 75
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 26
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->granted:Z

    .line 27
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 35
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->binding:Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;

    .line 38
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "requireContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lfast/dic/dict/utils/PermissionUtilsKt;->hasRecordAudioPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->granted:Z

    .line 40
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->dismiss()V

    .line 43
    :cond_0
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->binding:Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;

    const/4 p2, 0x0

    const-string v0, "binding"

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->rightToolbarButton:Landroid/widget/ImageButton;

    const-string v1, "rightToolbarButton"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lfast/dic/dict/utils/ViewExtKt;->hideMeNow(Landroid/view/View;)V

    .line 44
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->binding:Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->leftToolbarButton:Landroid/widget/Button;

    sget v1, Lfast/dic/dict/R$string;->close:I

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 45
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->binding:Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_3
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->leftToolbarButton:Landroid/widget/Button;

    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 46
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->binding:Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_4
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->leftToolbarButton:Landroid/widget/Button;

    new-instance p3, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->binding:Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_5
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->continueButton:Landroid/widget/Button;

    new-instance p3, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p0, p0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->binding:Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;

    if-nez p0, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    iget-boolean v1, p0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->granted:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MicrophonePermissionFragment onDismiss called with granted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
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

    .line 57
    iget-boolean v1, p0, Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;->granted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 55
    const-string v2, "PERMISSION_GRANTED_KEY"

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lfast/dic/dict/fragments/onboardings/Hilt_MicrophonePermissionFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
