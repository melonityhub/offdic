.class public final Lfast/dic/dict/fragments/VoiceRecognitionFragment;
.super Lfast/dic/dict/fragments/Hilt_VoiceRecognitionFragment;
.source "VoiceRecognitionFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/fragments/VoiceRecognitionFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoiceRecognitionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoiceRecognitionFragment.kt\nfast/dic/dict/fragments/VoiceRecognitionFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,183:1\n110#2,15:184\n*S KotlinDebug\n*F\n+ 1 VoiceRecognitionFragment.kt\nfast/dic/dict/fragments/VoiceRecognitionFragment\n*L\n27#1:184,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u0001$B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000f2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u0019\u001a\u00020\u0017H\u0016J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0017H\u0002J\u0010\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010!\u001a\u00020\u0017H\u0002J\u0008\u0010\"\u001a\u00020\u0017H\u0002J\u0008\u0010#\u001a\u00020\u0017H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00ca\u0001\u0002\u0008&\u00a8\u0006%"
    }
    d2 = {
        "Lfast/dic/dict/fragments/VoiceRecognitionFragment;",
        "Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;",
        "<init>",
        "()V",
        "sentence",
        "",
        "binding",
        "Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;",
        "viewModel",
        "Lfast/dic/dict/fragments/VoiceRecognitionViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/fragments/VoiceRecognitionViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "onDestroy",
        "onDismiss",
        "dialog",
        "Landroid/content/DialogInterface;",
        "loadWaveView",
        "updateWaveView",
        "value",
        "",
        "configureLanguageView",
        "startListening",
        "checkMicPermissionAndStart",
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
.field public static final Companion:Lfast/dic/dict/fragments/VoiceRecognitionFragment$Companion;

.field public static final DETECTED_SENTENCE_KEY:Ljava/lang/String; = "detected_sentence_key"


# instance fields
.field private binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

.field private sentence:Ljava/lang/String;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Og8QgSiTeWX_Gz0cI-hT0P1_9Ac(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)V
    .locals 0

    invoke-static {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->onViewCreated$lambda$2$0(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/fragments/VoiceRecognitionFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->Companion:Lfast/dic/dict/fragments/VoiceRecognitionFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, v0}, Lfast/dic/dict/fragments/Hilt_VoiceRecognitionFragment;-><init>(Z)V

    .line 27
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 185
    new-instance v1, Lfast/dic/dict/fragments/VoiceRecognitionFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 189
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/fragments/VoiceRecognitionFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 190
    const-class v2, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/fragments/VoiceRecognitionFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/fragments/VoiceRecognitionFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/fragments/VoiceRecognitionFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;
    .locals 0

    .line 22
    iget-object p0, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)Lfast/dic/dict/fragments/VoiceRecognitionViewModel;
    .locals 0

    .line 22
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getViewModel()Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startListening(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->startListening()V

    return-void
.end method

.method private final checkMicPermissionAndStart()V
    .locals 3

    .line 171
    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lfast/dic/dict/utils/PermissionUtilsKt;->hasRecordAudioPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->startListening()V

    return-void

    .line 177
    :cond_0
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget v0, Lfast/dic/dict/R$id;->microphonePermissionFragment:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method private final configureLanguageView()V
    .locals 6

    .line 141
    iget-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->segmentedView:Lcom/trinnguyen/SegmentView;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_1

    sget v5, Lfast/dic/dict/R$string;->english:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    move-object v3, v4

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Lcom/trinnguyen/SegmentView;->setText(ILjava/lang/String;)V

    .line 142
    iget-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->segmentedView:Lcom/trinnguyen/SegmentView;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_5

    sget v5, Lfast/dic/dict/R$string;->persian:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move-object v4, v3

    :cond_5
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/trinnguyen/SegmentView;->setText(ILjava/lang/String;)V

    .line 144
    iget-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->segmentedView:Lcom/trinnguyen/SegmentView;

    new-instance v1, Lfast/dic/dict/fragments/VoiceRecognitionFragment$configureLanguageView$1;

    invoke-direct {v1, p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$configureLanguageView$1;-><init>(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)V

    check-cast v1, Lcom/trinnguyen/SegmentView$OnSegmentItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/trinnguyen/SegmentView;->setOnSegmentItemSelectedListener(Lcom/trinnguyen/SegmentView$OnSegmentItemSelectedListener;)V

    return-void
.end method

.method private final getViewModel()Lfast/dic/dict/fragments/VoiceRecognitionViewModel;
    .locals 0

    .line 27
    iget-object p0, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    return-object p0
.end method

.method private final loadWaveView()V
    .locals 3

    .line 124
    iget-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->waveView:Lfast/dic/dict/views/SiriVisualView;

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1}, Lfast/dic/dict/views/SiriVisualView;->updateSpeaking(Z)V

    .line 126
    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfast/dic/dict/R$color;->fdSecondary:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/views/SiriVisualView;->updatePrimaryViewColor(I)V

    .line 127
    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lfast/dic/dict/R$color;->fdPrimary:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lfast/dic/dict/views/SiriVisualView;->updateSecondaryViewColor(I)V

    const/4 p0, 0x0

    .line 128
    invoke-virtual {v0, p0}, Lfast/dic/dict/views/SiriVisualView;->updateAmplitude(F)V

    const p0, -0x42333333    # -0.1f

    .line 129
    invoke-virtual {v0, p0}, Lfast/dic/dict/views/SiriVisualView;->updateSpeed(F)V

    return-void
.end method

.method static final onViewCreated$lambda$0(Lfast/dic/dict/fragments/VoiceRecognitionFragment;Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->dismiss()V

    return-void
.end method

.method static final onViewCreated$lambda$1(Lfast/dic/dict/fragments/VoiceRecognitionFragment;Landroid/view/View;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getViewModel()Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->isListening()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 55
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getViewModel()Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->stop()V

    return-void

    .line 57
    :cond_1
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->startListening()V

    return-void
.end method

.method static final onViewCreated$lambda$2(Lfast/dic/dict/fragments/VoiceRecognitionFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 3

    .line 65
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VoiceRecognitionFragment observe on mic permission called with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lfast/dic/dict/fragments/VoiceRecognitionFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lfast/dic/dict/utils/PermissionUtilsKt;->hasRecordAudioPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->startListening()V

    .line 80
    :cond_1
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 81
    const-string p1, "PERMISSION_GRANTED_KEY"

    .line 80
    invoke-virtual {p0, p1}, Landroidx/lifecycle/SavedStateHandle;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 83
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onViewCreated$lambda$2$0(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()Z

    :cond_0
    return-void
.end method

.method static final onViewCreated$lambda$3(Lfast/dic/dict/fragments/VoiceRecognitionFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 87
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iput-object p1, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->sentence:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->dismiss()V

    .line 91
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onViewCreated$lambda$4(Lfast/dic/dict/fragments/VoiceRecognitionFragment;Ljava/lang/Float;)Lkotlin/Unit;
    .locals 0

    .line 95
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->updateWaveView(F)V

    .line 96
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onViewCreated$lambda$5(Lfast/dic/dict/fragments/VoiceRecognitionFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 4

    .line 100
    iget-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->micButtonFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->waveView:Lfast/dic/dict/views/SiriVisualView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lfast/dic/dict/views/SiriVisualView;->updateSpeaking(Z)V

    .line 102
    iget-object p0, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->micButtonFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lfast/dic/dict/R$drawable;->stop_icon:I

    goto :goto_1

    :cond_3
    sget p1, Lfast/dic/dict/R$drawable;->mic_light:I

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 103
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final startListening()V
    .locals 2

    .line 166
    iget-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->segmentedView:Lcom/trinnguyen/SegmentView;

    invoke-virtual {v0}, Lcom/trinnguyen/SegmentView;->getSelectedIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "fa-IR"

    goto :goto_0

    :cond_1
    const-string v0, "en-US"

    .line 167
    :goto_0
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getViewModel()Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    move-result-object p0

    invoke-virtual {p0, v0}, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->start(Ljava/lang/String;)V

    return-void
.end method

.method private final updateWaveView(F)V
    .locals 1

    .line 134
    iget-object p0, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->waveView:Lfast/dic/dict/views/SiriVisualView;

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p0, v0}, Lfast/dic/dict/views/SiriVisualView;->updateSpeaking(Z)V

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    .line 136
    invoke-virtual {p0, p1}, Lfast/dic/dict/views/SiriVisualView;->updateAmplitude(F)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 33
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    if-nez p1, :cond_0

    .line 37
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 108
    invoke-super {p0}, Lfast/dic/dict/fragments/Hilt_VoiceRecognitionFragment;->onDestroy()V

    .line 109
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getViewModel()Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->stop()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getViewModel()Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->stop()V

    .line 114
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/navigation/NavController;->getPreviousBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object v2

    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/navigation/NavController;->getPreviousBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onDismiss called findNavController().previousBackStackEntry="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", findNavController().previousBackStackEntry?.savedStateHandle="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getPreviousBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    const-string v1, "detected_sentence_key"

    .line 117
    iget-object v2, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->sentence:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    :cond_1
    invoke-super {p0, p1}, Lfast/dic/dict/fragments/Hilt_VoiceRecognitionFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1, p2}, Lfast/dic/dict/fragments/Hilt_VoiceRecognitionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->loadWaveView()V

    .line 44
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->configureLanguageView()V

    .line 45
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->checkMicPermissionAndStart()V

    .line 47
    iget-object p1, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    const/4 p2, 0x0

    const-string v0, "binding"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->rightToolbarButton:Landroid/widget/ImageButton;

    const-string v1, "rightToolbarButton"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lfast/dic/dict/utils/ViewExtKt;->hideMeNow(Landroid/view/View;)V

    .line 48
    iget-object p1, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->leftToolbarButton:Landroid/widget/Button;

    new-instance v1, Lfast/dic/dict/fragments/VoiceRecognitionFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->micButtonFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->binding:Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p1

    :goto_0
    iget-object p1, p2, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->micButtonFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p2, Lfast/dic/dict/fragments/VoiceRecognitionFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->getPreviousBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 62
    const-string p2, "PERMISSION_GRANTED_KEY"

    .line 61
    invoke-virtual {p1, p2}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 63
    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/fragments/VoiceRecognitionFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)V

    new-instance v1, Lfast/dic/dict/fragments/VoiceRecognitionFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 86
    :cond_4
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getViewModel()Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->getDetectedSentence()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/fragments/VoiceRecognitionFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$$ExternalSyntheticLambda4;-><init>(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)V

    new-instance v1, Lfast/dic/dict/fragments/VoiceRecognitionFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 94
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getViewModel()Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->getRms()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/fragments/VoiceRecognitionFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$$ExternalSyntheticLambda5;-><init>(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)V

    new-instance v1, Lfast/dic/dict/fragments/VoiceRecognitionFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 99
    invoke-direct {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getViewModel()Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->isListening()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/fragments/VoiceRecognitionFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$$ExternalSyntheticLambda6;-><init>(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)V

    new-instance p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
