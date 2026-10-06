.class public final Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;
.super Lfast/dic/dict/presentation/word_result_screen/Hilt_WordResultFragment;
.source "WordResultFragment.kt"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWordResultFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WordResultFragment.kt\nfast/dic/dict/presentation/word_result_screen/WordResultFragment\n+ 2 FragmentNavArgsLazy.kt\nandroidx/navigation/fragment/FragmentNavArgsLazyKt\n+ 3 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 4 ColorDrawable.kt\nandroidx/core/graphics/drawable/ColorDrawableKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,980:1\n42#2,3:981\n110#3,15:984\n32#4:999\n1#5:1000\n37#6,2:1001\n37#6,2:1003\n*S KotlinDebug\n*F\n+ 1 WordResultFragment.kt\nfast/dic/dict/presentation/word_result_screen/WordResultFragment\n*L\n106#1:981,3\n108#1:984,15\n276#1:999\n725#1:1001,2\n733#1:1003,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a1\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002*\u0001A\u0008\u0007\u0018\u0000 _2\u00020\u00012\u00020\u0002:\u0001_B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J$\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016J\u0008\u0010(\u001a\u00020)H\u0016J\u001a\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020!2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016J\u0008\u0010,\u001a\u00020)H\u0016J\u0008\u0010-\u001a\u00020)H\u0016J\u0008\u0010.\u001a\u00020)H\u0002J\u0008\u0010/\u001a\u00020)H\u0002J\u0008\u00100\u001a\u00020)H\u0002J\u0008\u00101\u001a\u00020)H\u0002J\u0008\u00102\u001a\u00020)H\u0002J\u0006\u00103\u001a\u00020)J\u0008\u00104\u001a\u00020)H\u0002J\u0012\u00105\u001a\u00020)2\u0008\u00106\u001a\u0004\u0018\u000107H\u0002J\u0012\u00108\u001a\u00020)2\u0008\u00109\u001a\u0004\u0018\u00010:H\u0002J\u0012\u0010;\u001a\u00020)2\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0002J\u0008\u0010>\u001a\u00020?H\u0002J\u0010\u0010E\u001a\u00020)2\u0006\u0010F\u001a\u00020:H\u0002J\u0010\u0010G\u001a\u00020?2\u0006\u0010F\u001a\u00020:H\u0002J\u0010\u0010H\u001a\u00020)2\u0006\u0010F\u001a\u00020:H\u0002J\u0010\u0010I\u001a\u00020?2\u0006\u0010F\u001a\u00020:H\u0002J\u0018\u0010J\u001a\u00020)2\u0006\u0010K\u001a\u00020:2\u0006\u0010L\u001a\u00020?H\u0002J\u0008\u0010M\u001a\u00020)H\u0002J\u0008\u0010N\u001a\u00020?H\u0002J\u0008\u0010O\u001a\u00020)H\u0002J\u0010\u0010P\u001a\u00020)2\u0006\u0010F\u001a\u00020:H\u0002J\u0008\u0010Q\u001a\u00020)H\u0002J\u0008\u0010R\u001a\u00020)H\u0002J\u0006\u0010S\u001a\u00020?J\u0018\u0010T\u001a\u00020)2\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u0016J\u0010\u0010Y\u001a\u00020?2\u0006\u0010Z\u001a\u00020[H\u0016J\u0010\u0010\\\u001a\u00020)2\u0006\u0010]\u001a\u00020^H\u0016R#\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\u000b\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001a\u0010\u001bR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010@\u001a\u00020A8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010\u001d\u001a\u0004\u0008B\u0010C\u00ca\u0001\u0002\u0008a\u00a8\u0006`"
    }
    d2 = {
        "Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "Landroidx/core/view/MenuProvider;",
        "<init>",
        "()V",
        "offlinePlayer",
        "Lfast/dic/dict/helpers/FDOfflinePlayer;",
        "getOfflinePlayer",
        "()Lfast/dic/dict/helpers/FDOfflinePlayer;",
        "setOfflinePlayer",
        "(Lfast/dic/dict/helpers/FDOfflinePlayer;)V",
        "Ljavax/inject/Inject;",
        "args",
        "Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;",
        "getArgs",
        "()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;",
        "args$delegate",
        "Landroidx/navigation/NavArgsLazy;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentWordResultBinding;",
        "getBinding",
        "()Lfast/dic/dict/databinding/FragmentWordResultBinding;",
        "setBinding",
        "(Lfast/dic/dict/databinding/FragmentWordResultBinding;)V",
        "viewModel",
        "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "resultWebView",
        "Lim/delight/android/webview/AdvancedWebView;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "",
        "onViewCreated",
        "view",
        "onResume",
        "onDestroyView",
        "showResultOrderModal",
        "optimizeSizeForModal",
        "handleAudioPlayer",
        "onClearNavigation",
        "onFocusedNavigation",
        "getResult",
        "requestInterstitialAfterResult",
        "uiStateChanged",
        "wordResultViewModelUIState",
        "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;",
        "loadHtml",
        "html",
        "",
        "favoriteStateChanged",
        "state",
        "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState;",
        "checkUserIsLoginThenShowLoginPage",
        "",
        "lazyWebClient",
        "fast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1",
        "getLazyWebClient",
        "()Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;",
        "lazyWebClient$delegate",
        "handleSentencePronunciation",
        "url",
        "isSentencePronunciation",
        "handleWordPronunciation",
        "noPronunciation",
        "speakOut",
        "wordToSpeech",
        "isBritish",
        "diactiveSound",
        "checkLimitation",
        "decreaseLimitation",
        "audioSentenceClickedOnline",
        "copyTranslation",
        "shareAction",
        "handlePlanErrorForShareExtension",
        "onCreateMenu",
        "menu",
        "Landroid/view/Menu;",
        "menuInflater",
        "Landroid/view/MenuInflater;",
        "onMenuItemSelected",
        "menuItem",
        "Landroid/view/MenuItem;",
        "onDismiss",
        "dialog",
        "Landroid/content/DialogInterface;",
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
.field public static final Companion:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$Companion;

.field public static final DISMISS_KEY:Ljava/lang/String; = "word_result_modal_dismissed"


# instance fields
.field private final args$delegate:Landroidx/navigation/NavArgsLazy;

.field public binding:Lfast/dic/dict/databinding/FragmentWordResultBinding;

.field private final lazyWebClient$delegate:Lkotlin/Lazy;

.field public offlinePlayer:Lfast/dic/dict/helpers/FDOfflinePlayer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private resultWebView:Lim/delight/android/webview/AdvancedWebView;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$3NQMr3YEAxU7kgJA90oFjL0Kebs(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->handleSentencePronunciation$lambda$1$0(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gqhaz2xgiUYnziI_aaKeyYo9j9U(Lfast/dic/dict/activities/MainActivity;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->onCreateView$lambda$1$0(Lfast/dic/dict/activities/MainActivity;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->Companion:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 101
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/Hilt_WordResultFragment;-><init>()V

    .line 106
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 981
    new-instance v1, Landroidx/navigation/NavArgsLazy;

    const-class v2, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$special$$inlined$navArgs$1;

    invoke-direct {v3, v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$special$$inlined$navArgs$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v2, v3}, Landroidx/navigation/NavArgsLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    .line 106
    iput-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    .line 985
    new-instance v1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 989
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 990
    const-class v2, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 108
    iput-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 511
    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda6;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->lazyWebClient$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$copyTranslation(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->copyTranslation()V

    return-void
.end method

.method public static final synthetic access$favoriteStateChanged(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->favoriteStateChanged(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState;)V

    return-void
.end method

.method public static final synthetic access$getArgs(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;
    .locals 0

    .line 101
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;
    .locals 0

    .line 101
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleSentencePronunciation(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->handleSentencePronunciation(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$handleWordPronunciation(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->handleWordPronunciation(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$isSentencePronunciation(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Ljava/lang/String;)Z
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->isSentencePronunciation(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$uiStateChanged(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->uiStateChanged(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;)V

    return-void
.end method

.method private final audioSentenceClickedOnline(Ljava/lang/String;)V
    .locals 20

    .line 808
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "sentence-en-br://"

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 809
    const-string v2, "sentence-fa-br://"

    check-cast v2, Ljava/lang/CharSequence;

    .line 808
    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 811
    :cond_0
    const-string/jumbo v2, "us"

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo v2, "uk"

    :goto_1
    move-object v6, v2

    .line 812
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 813
    const-string v1, "sentence-en-am://"

    check-cast v1, Ljava/lang/CharSequence;

    .line 812
    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 818
    :cond_2
    const-string v0, "persian-sentence"

    goto :goto_3

    .line 816
    :cond_3
    :goto_2
    const-string v0, "english-sentence"

    :goto_3
    move-object v7, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 821
    const-string v1, "sentence-en-br://"

    const-string v2, ""

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 822
    const-string v9, "sentence-en-am://"

    const-string v10, ""

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x4

    const/16 v19, 0x0

    .line 823
    const-string v15, "sentence-fa-br://"

    const-string v16, ""

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 824
    const-string v9, "sentence-fa-am://"

    const-string v10, ""

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://cdn.fastdic.com/s-en-audios/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 828
    invoke-direct/range {p0 .. p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->decreaseLimitation()V

    .line 829
    sget-object v2, Lfast/dic/dict/utils/FDAudioPlayerManager;->Companion:Lfast/dic/dict/utils/FDAudioPlayerManager$Companion;

    invoke-virtual {v2}, Lfast/dic/dict/utils/FDAudioPlayerManager$Companion;->getGet()Lfast/dic/dict/utils/FDAudioPlayerManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda11;

    move-object/from16 v5, p0

    invoke-direct {v4, v0, v5}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    invoke-virtual {v2, v1, v3, v4}, Lfast/dic/dict/utils/FDAudioPlayerManager;->audioPlayerAsync(Ljava/lang/String;Landroid/content/Context;Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method static final audioSentenceClickedOnline$lambda$0(Ljava/lang/String;Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Landroid/media/MediaPlayer;)V
    .locals 1

    .line 830
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p2

    const-string v0, "Playing %s audio is completed."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 831
    iget-object p0, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->resultWebView:Lim/delight/android/webview/AdvancedWebView;

    if-eqz p0, :cond_0

    const-string p1, "sounddiactive();"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lim/delight/android/webview/AdvancedWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private final checkLimitation()Z
    .locals 4

    .line 784
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    .line 785
    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getSentencePronunciationLimitation()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gtz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 786
    :goto_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    instance-of v3, v2, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v3, :cond_1

    check-cast v2, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    return p0

    :cond_2
    if-eqz p0, :cond_3

    .line 788
    invoke-virtual {v2}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2Or3()Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method private final checkUserIsLoginThenShowLoginPage()Z
    .locals 5

    .line 504
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentWordResultBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const-string v1, "loadingSpinner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 506
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget v0, Lfast/dic/dict/R$id;->loginSignupFragment:I

    const/4 v1, 0x2

    invoke-static {p0, v0, v4, v1, v4}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method private final copyTranslation()V
    .locals 3

    .line 836
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->triggerTapHaptic()V

    .line 838
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;

    if-eqz v0, :cond_0

    .line 839
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type fast.dic.dict.presentation.word_result_screen.WordResultViewModelUIState.TranslatorHtmlResult"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;

    .line 842
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 843
    const-class v2, Landroid/content/ClipboardManager;

    .line 841
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/ClipboardManager;

    .line 846
    const-string v2, "Fast Dictionary"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->getMeaning()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfast/dic/dict/utils/StringExtKt;->removeHtmlBreakingLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    const-string v2, "newPlainText(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 850
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 851
    sget v1, Lfast/dic/dict/R$string;->translated_content_successfully_copied:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 849
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 853
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private final decreaseLimitation()V
    .locals 2

    .line 792
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

    .line 793
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2Or3()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 797
    :cond_1
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    .line 798
    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getSentencePronunciationLimitation()I

    move-result p0

    if-gtz p0, :cond_2

    const/4 p0, 0x0

    .line 800
    invoke-virtual {v0, p0}, Lfast/dic/dict/database/LocalStorage;->setSentencePronunciationLimitation(I)V

    return-void

    :cond_2
    add-int/lit8 p0, p0, -0x1

    .line 803
    invoke-virtual {v0, p0}, Lfast/dic/dict/database/LocalStorage;->setSentencePronunciationLimitation(I)V

    return-void
.end method

.method private final diactiveSound()V
    .locals 2

    .line 779
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->resultWebView:Lim/delight/android/webview/AdvancedWebView;

    if-eqz p0, :cond_0

    const-string v0, "sounddiactive();"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lim/delight/android/webview/AdvancedWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private final favoriteStateChanged(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState;)V
    .locals 5

    .line 454
    instance-of v0, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$Loading;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->setLoading(Ljava/lang/Boolean;)V

    return-void

    .line 460
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->setLoading(Ljava/lang/Boolean;)V

    .line 462
    instance-of v0, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$RemoveFromFavorite;

    const-string v1, "deselectFav();"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 463
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->resultWebView:Lim/delight/android/webview/AdvancedWebView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1, v2}, Lim/delight/android/webview/AdvancedWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 471
    :cond_1
    instance-of v0, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$AddToFavorite;

    const-string v3, ""

    if-eqz v0, :cond_6

    .line 472
    check-cast p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$AddToFavorite;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$AddToFavorite;->getFolder()Lfast/dic/dict/models/database/FolderModel;

    move-result-object p1

    .line 474
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->isModal()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    .line 475
    :goto_0
    sget v1, Lfast/dic/dict/R$string;->add_to_x_directory:I

    invoke-virtual {p1}, Lfast/dic/dict/models/database/FolderModel;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v4

    :goto_1
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    new-instance v3, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v4, "getRoot(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    move-object v4, p0

    check-cast v4, Landroidx/fragment/app/Fragment;

    invoke-direct {v3, v0, v1, p1, v4}, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;-><init>(Landroid/view/View;Ljava/lang/String;Lfast/dic/dict/models/database/FolderModel;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v3}, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;->show()V

    .line 477
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->resultWebView:Lim/delight/android/webview/AdvancedWebView;

    if-eqz p0, :cond_9

    .line 478
    invoke-virtual {p1}, Lfast/dic/dict/models/database/FolderModel;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "selectFav(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\');"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 477
    invoke-virtual {p0, p1, v2}, Lim/delight/android/webview/AdvancedWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 484
    :cond_6
    instance-of v0, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$SelectFolder;

    if-eqz v0, :cond_9

    .line 485
    check-cast p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$SelectFolder;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$SelectFolder;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    .line 487
    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->resultWebView:Lim/delight/android/webview/AdvancedWebView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1, v2}, Lim/delight/android/webview/AdvancedWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 492
    :cond_7
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 493
    :cond_8
    new-instance p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;

    invoke-direct {p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;-><init>()V

    .line 494
    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;->setWordId(Ljava/lang/String;)V

    if-eqz v2, :cond_9

    .line 495
    invoke-virtual {p0, v2, v3}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private final getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;
    .locals 0

    .line 106
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    check-cast p0, Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    return-object p0
.end method

.method private final getLazyWebClient()Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;
    .locals 0

    .line 511
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->lazyWebClient$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;

    return-object p0
.end method

.method private final getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;
    .locals 0

    .line 108
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    return-object p0
.end method

.method private final handleAudioPlayer()V
    .locals 2

    .line 292
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getOfflinePlayer()Lfast/dic/dict/helpers/FDOfflinePlayer;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1}, Lfast/dic/dict/helpers/FDOfflinePlayer;->setLifecycle(Landroidx/lifecycle/LifecycleOwner;)V

    .line 293
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getOfflinePlayer()Lfast/dic/dict/helpers/FDOfflinePlayer;

    move-result-object v0

    new-instance v1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/helpers/FDOfflinePlayer;->setOnFinishPlayer(Lkotlin/jvm/functions/Function0;)V

    .line 296
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getOfflinePlayer()Lfast/dic/dict/helpers/FDOfflinePlayer;

    move-result-object v0

    new-instance v1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda7;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/helpers/FDOfflinePlayer;->setOnErrorPlayer(Lkotlin/jvm/functions/Function0;)V

    .line 299
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getOfflinePlayer()Lfast/dic/dict/helpers/FDOfflinePlayer;

    move-result-object v0

    new-instance v1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda8;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/helpers/FDOfflinePlayer;->setOnStartPlayer(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static final handleAudioPlayer$lambda$0(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lkotlin/Unit;
    .locals 0

    .line 294
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->diactiveSound()V

    .line 295
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final handleAudioPlayer$lambda$1(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lkotlin/Unit;
    .locals 0

    .line 297
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->diactiveSound()V

    .line 298
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final handleAudioPlayer$lambda$2(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lkotlin/Unit;
    .locals 0

    .line 300
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->diactiveSound()V

    .line 301
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final handleSentencePronunciation(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 627
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    instance-of v2, v1, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v2, :cond_0

    check-cast v1, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 629
    :goto_0
    const-string v2, ""

    const-string v3, "getSupportFragmentManager(...)"

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lfast/dic/dict/services/parse/FDParseUser;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 644
    :cond_1
    invoke-direct {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->checkLimitation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    invoke-direct {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->validRewardedAdsForSentencePronunciation()Z

    .line 648
    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    new-instance v4, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    .line 651
    sget v3, Lfast/dic/dict/R$string;->pronunciation_of_sample_sentences_title:I

    invoke-virtual {v0, v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 653
    sget v3, Lfast/dic/dict/R$string;->pronunciation_of_sample_sentences_limitation_desc:I

    .line 652
    invoke-virtual {v0, v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 655
    sget v3, Lfast/dic/dict/R$string;->pronunciation_of_sample_sentences_cta_title:I

    invoke-virtual {v0, v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v14, 0x20

    const/4 v15, 0x0

    const/4 v5, 0x1

    .line 649
    const-string v9, "PRICING"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v15}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/services/FDAds$AdForFeature;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 661
    invoke-virtual {v4, v1, v2}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 663
    new-instance v1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, v4}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda12;-><init>(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;)V

    invoke-virtual {v4, v1}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->setOnDismissed(Lkotlin/jvm/functions/Function1;)V

    .line 669
    invoke-direct {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->diactiveSound()V

    return-void

    .line 674
    :cond_2
    invoke-direct {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->isInternetAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 675
    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 676
    :cond_3
    sget-object v2, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {v2, v1}, Lfast/dic/dict/utils/FDAlertManger;->showNotConnectedToInternetAlert(Landroid/content/Context;)V

    .line 678
    invoke-direct {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->diactiveSound()V

    return-void

    .line 682
    :cond_4
    invoke-direct/range {p0 .. p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->audioSentenceClickedOnline(Ljava/lang/String;)V

    return-void

    .line 630
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    new-instance v4, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    .line 633
    sget v3, Lfast/dic/dict/R$string;->pronunciation_of_sample_sentences_title:I

    invoke-virtual {v0, v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 634
    sget v3, Lfast/dic/dict/R$string;->pronunciation_of_sample_sentences_desc:I

    invoke-virtual {v0, v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 635
    sget v3, Lfast/dic/dict/R$string;->login_or_signup:I

    invoke-virtual {v0, v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v14, 0x1f0

    const/4 v15, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 631
    invoke-direct/range {v4 .. v15}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/services/FDAds$AdForFeature;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 637
    invoke-virtual {v4, v1, v2}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 639
    invoke-direct {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->diactiveSound()V

    return-void
.end method

.method private static final handleSentencePronunciation$lambda$1$0(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Z)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    .line 665
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->newPricingFragment:I

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 667
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final handleWordPronunciation(Ljava/lang/String;)V
    .locals 13

    .line 699
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "sound-br://"

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    .line 700
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->isOfflineSpeech()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 701
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v5, v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->speakOut(Ljava/lang/String;Z)V

    return-void

    .line 706
    :cond_1
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlNumberResult;

    if-eqz v2, :cond_4

    .line 707
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type fast.dic.dict.presentation.word_result_screen.WordResultViewModelUIState.HtmlNumberResult"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlNumberResult;

    .line 708
    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlNumberResult;->getWord()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p1, v5

    :cond_3
    invoke-direct {p0, p1, v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->speakOut(Ljava/lang/String;Z)V

    return-void

    .line 712
    :cond_4
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->noPronunciation(Ljava/lang/String;)Z

    move-result v2

    const-string v4, ""

    if-nez v2, :cond_b

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "sound-am://"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_1

    .line 723
    :cond_5
    const-string v1, ".mp3"

    const-string v2, "__________"

    const/4 v5, 0x1

    if-eqz v0, :cond_7

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 724
    const-string v7, "sound-br://"

    const-string v8, ""

    const/4 v9, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 725
    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    new-array v8, v5, [Ljava/lang/String;

    aput-object v2, v8, v3

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 1002
    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 726
    array-length v0, p1

    if-le v0, v5, :cond_6

    .line 727
    aget-object v4, p1, v5

    .line 730
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "http://cdn.fastdic.com/c-en-audios/uk/mp3/"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    move-object v6, p1

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 732
    const-string v7, "sound-am://"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 733
    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    new-array v8, v5, [Ljava/lang/String;

    aput-object v2, v8, v3

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 1004
    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 734
    array-length v0, p1

    if-le v0, v5, :cond_8

    .line 735
    aget-object v4, p1, v5

    .line 738
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "http://cdn.fastdic.com/c-en-audios/us/mp3/"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 741
    :goto_0
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->isInternetAvailable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 742
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 743
    :cond_9
    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/utils/FDAlertManger;->showNotConnectedToInternetAlert(Landroid/content/Context;)V

    .line 745
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->diactiveSound()V

    return-void

    .line 749
    :cond_a
    sget-object v0, Lfast/dic/dict/utils/FDAudioPlayerManager;->Companion:Lfast/dic/dict/utils/FDAudioPlayerManager$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/utils/FDAudioPlayerManager$Companion;->getGet()Lfast/dic/dict/utils/FDAudioPlayerManager;

    move-result-object v0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda13;

    invoke-direct {v2, v6, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    invoke-virtual {v0, p1, v1, v2}, Lfast/dic/dict/utils/FDAudioPlayerManager;->audioPlayerAsync(Ljava/lang/String;Landroid/content/Context;Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void

    .line 713
    :cond_b
    :goto_1
    sget-object p1, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v5

    :cond_c
    invoke-virtual {p1, v5}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isEnglish(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 714
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_2

    .line 716
    :cond_d
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_2

    :cond_e
    move-object v4, p1

    .line 718
    :cond_f
    :goto_2
    invoke-direct {p0, v4, v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->speakOut(Ljava/lang/String;Z)V

    return-void
.end method

.method static final handleWordPronunciation$lambda$0(Ljava/lang/String;Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Landroid/media/MediaPlayer;)V
    .locals 1

    .line 750
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p2

    const-string v0, "Playing %s audio is completed."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    invoke-direct {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->diactiveSound()V

    return-void
.end method

.method private final isSentencePronunciation(Ljava/lang/String;)Z
    .locals 3

    .line 686
    check-cast p1, Ljava/lang/CharSequence;

    const-string p0, "sentence-en-br://"

    check-cast p0, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 687
    const-string p0, "sentence-en-am://"

    check-cast p0, Ljava/lang/CharSequence;

    .line 686
    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 689
    const-string p0, "sentence-fa-br://"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 690
    const-string p0, "sentence-fa-am://"

    check-cast p0, Ljava/lang/CharSequence;

    .line 689
    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static final lazyWebClient_delegate$lambda$0(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;
    .locals 1

    .line 512
    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    return-object v0
.end method

.method private final loadHtml(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lfast/dic/dict/utils/ContextExtKt;->isDarkThemeOn(Landroid/content/Context;)Z

    move-result v0

    .line 444
    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->resultWebView:Lim/delight/android/webview/AdvancedWebView;

    if-eqz v1, :cond_1

    .line 446
    invoke-static {p1, v0}, Lfast/dic/dict/utils/StringExtKt;->changeHtmlThemeMode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 448
    const-string v5, "UTF-8"

    .line 449
    const-string v6, "about:blank"

    const/4 v2, 0x0

    .line 444
    const-string v4, "text/html"

    invoke-virtual/range {v1 .. v6}, Lim/delight/android/webview/AdvancedWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final noPronunciation(Ljava/lang/String;)Z
    .locals 3

    .line 758
    check-cast p1, Ljava/lang/CharSequence;

    const-string p0, "-1__________"

    check-cast p0, Ljava/lang/CharSequence;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p0, v2, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final onClearNavigation()V
    .locals 7

    .line 305
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->isModal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-static {p0, v0}, Lfast/dic/dict/utils/FragmentExtensionKt;->search(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 310
    :try_start_0
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    sget v2, Lfast/dic/dict/R$id;->searchFragment:I

    invoke-virtual {v1, v2}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v1

    const-string v2, "SearchBarStatus"

    .line 311
    new-instance v3, Lfast/dic/dict/models/eventbus/SearchBarStatus;

    sget-object v4, Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;->Cleared:Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v6}, Lfast/dic/dict/models/eventbus/SearchBarStatus;-><init>(Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 310
    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    sget-object v1, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p0}, Landroidx/navigation/fragment/NavHostFragment$Companion;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget v1, Lfast/dic/dict/R$id;->searchFragment:I

    invoke-virtual {p0, v1, v0}, Landroidx/navigation/NavController;->popBackStack(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 315
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not pop to root in onFocusedNavigation. e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/activities/MainActivity;Landroid/view/View;IIII)V
    .locals 0

    sub-int/2addr p3, p5

    .line 148
    sget-object p1, Lfast/dic/dict/utils/AnyDebounce;->INSTANCE:Lfast/dic/dict/utils/AnyDebounce;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/activities/MainActivity;)V

    const-wide/16 p4, 0x32

    invoke-virtual {p1, p2, p4, p5, p3}, Lfast/dic/dict/utils/AnyDebounce;->debounce(Ljava/lang/Object;JLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final onCreateView$lambda$1$0(Lfast/dic/dict/activities/MainActivity;I)Lkotlin/Unit;
    .locals 0

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 149
    :goto_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/activities/MainActivity;->changeFloatingButtonVisibility(Z)V

    .line 150
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreateView$lambda$2(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lkotlin/Unit;
    .locals 0

    .line 154
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->onFocusedNavigation()V

    .line 155
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreateView$lambda$3(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;ZLjava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 157
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->onFocusedNavigation()V

    .line 158
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreateView$lambda$4(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Z
    .locals 1

    .line 160
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->onClearNavigation()V

    .line 161
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lfast/dic/dict/models/database/ListModel;->setWord(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final onFocusedNavigation()V
    .locals 7

    .line 321
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->isModal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 322
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lfast/dic/dict/utils/FragmentExtensionKt;->search(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 326
    :try_start_0
    move-object v2, p0

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-static {v2}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v2

    sget v3, Lfast/dic/dict/R$id;->searchFragment:I

    invoke-virtual {v2, v3}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v2

    const-string v3, "SearchBarStatus"

    .line 327
    new-instance v4, Lfast/dic/dict/models/eventbus/SearchBarStatus;

    sget-object v5, Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;->Focused:Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v6

    invoke-virtual {v6}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-direct {v4, v5, v1}, Lfast/dic/dict/models/eventbus/SearchBarStatus;-><init>(Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    sget-object v1, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p0}, Landroidx/navigation/fragment/NavHostFragment$Companion;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget v1, Lfast/dic/dict/R$id;->searchFragment:I

    invoke-virtual {p0, v1, v0}, Landroidx/navigation/NavController;->popBackStack(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 331
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not pop to root in onFocusedNavigation. e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final onViewCreated$lambda$0(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Landroid/view/View;)V
    .locals 0

    .line 191
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->dismiss()V

    return-void
.end method

.method static final onViewCreated$lambda$1(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    .line 204
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 205
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->setLoading(Ljava/lang/Boolean;)V

    .line 206
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p1

    instance-of v0, p1, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v0, :cond_0

    check-cast p1, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 208
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->isAuthenticated()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getResult()V

    goto :goto_2

    .line 209
    :cond_2
    :goto_1
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()Z

    .line 214
    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final optimizeSizeForModal()V
    .locals 4

    .line 265
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getFromShare()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->setEnableSearchBar(Ljava/lang/Boolean;)V

    .line 267
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentWordResultBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-virtual {v0, v2}, Lfast/dic/dict/views/SearchBarView;->setReadOnlyMode(Z)V

    .line 270
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->setEnableToolbar(Ljava/lang/Boolean;)V

    .line 273
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object v0

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v3

    invoke-virtual {v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getEnableSearchbar()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->setEnableSearchBar(Ljava/lang/Boolean;)V

    .line 274
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentWordResultBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v3

    invoke-virtual {v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getEnableSearchbar()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lfast/dic/dict/views/SearchBarView;->setReadOnlyMode(Z)V

    .line 275
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v2, Lfast/dic/dict/R$style;->DialogTheme:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 276
    :cond_2
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 999
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 276
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    :cond_3
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 281
    :cond_4
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_5

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private final requestInterstitialAfterResult()V
    .locals 7

    .line 360
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final shareAction()V
    .locals 11

    .line 860
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 863
    :cond_1
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlResult;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 864
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type fast.dic.dict.presentation.word_result_screen.WordResultViewModelUIState.HtmlResult"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlResult;

    invoke-virtual {v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlResult;->getResult()Lfast/dic/dict/models/database/SearchResultModel;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 866
    invoke-virtual {v2}, Lfast/dic/dict/models/database/SearchResultModel;->getEnglishSearchResultModel()Lfast/dic/dict/models/database/EnglishSearchResultModel;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    const/4 v5, 0x0

    const-string v6, " "

    const/4 v7, 0x1

    const-string v8, "\n"

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Lfast/dic/dict/models/database/SearchResultModel;->getEnglishSearchResultModel()Lfast/dic/dict/models/database/EnglishSearchResultModel;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getWord()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_9

    .line 867
    invoke-virtual {v2}, Lfast/dic/dict/models/database/SearchResultModel;->getEnglishSearchResultModel()Lfast/dic/dict/models/database/EnglishSearchResultModel;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getMeanings()Ljava/util/List;

    move-result-object v3

    .line 869
    :cond_5
    sget v2, Lfast/dic/dict/R$string;->the_meaning_of_words:I

    invoke-virtual {p0, v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_8

    .line 874
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfast/dic/dict/models/database/EnglishMeaningModel;

    .line 875
    invoke-virtual {v4}, Lfast/dic/dict/models/database/EnglishMeaningModel;->getPos()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v7, :cond_7

    .line 876
    invoke-virtual {v4}, Lfast/dic/dict/models/database/EnglishMeaningModel;->getPos()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfast/dic/dict/models/database/PosModel;

    .line 877
    invoke-virtual {v9}, Lfast/dic/dict/models/database/PosModel;->getPos()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6

    invoke-virtual {v9}, Lfast/dic/dict/models/database/PosModel;->getPosEquivalent()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6

    move-object v10, v1

    .line 878
    :cond_6
    move-object v9, v10

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 879
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 883
    :cond_7
    invoke-virtual {v4}, Lfast/dic/dict/models/database/EnglishMeaningModel;->getMeaning()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v1, v2

    goto/16 :goto_7

    :cond_9
    if-eqz v2, :cond_a

    .line 887
    invoke-virtual {v2}, Lfast/dic/dict/models/database/SearchResultModel;->getPersianSearchResultModel()Lfast/dic/dict/models/database/PersianSearchResultModel;

    move-result-object v4

    goto :goto_4

    :cond_a
    move-object v4, v3

    :goto_4
    if-eqz v4, :cond_11

    invoke-virtual {v2}, Lfast/dic/dict/models/database/SearchResultModel;->getPersianSearchResultModel()Lfast/dic/dict/models/database/PersianSearchResultModel;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lfast/dic/dict/models/database/PersianSearchResultModel;->getWordDetails()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_11

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v7

    if-ne v4, v7, :cond_11

    .line 889
    invoke-virtual {v2}, Lfast/dic/dict/models/database/SearchResultModel;->getPersianSearchResultModel()Lfast/dic/dict/models/database/PersianSearchResultModel;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lfast/dic/dict/models/database/PersianSearchResultModel;->getWord()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    move-object v0, v1

    .line 890
    :cond_c
    invoke-virtual {v2}, Lfast/dic/dict/models/database/SearchResultModel;->getPersianSearchResultModel()Lfast/dic/dict/models/database/PersianSearchResultModel;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lfast/dic/dict/models/database/PersianSearchResultModel;->getWordDetails()Ljava/util/List;

    move-result-object v3

    .line 892
    :cond_d
    sget v2, Lfast/dic/dict/R$string;->the_meaning_of_words:I

    invoke-virtual {p0, v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 894
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_8

    .line 897
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfast/dic/dict/models/database/PersianWordDetail;

    .line 898
    invoke-virtual {v4}, Lfast/dic/dict/models/database/PersianWordDetail;->getPos()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v7, :cond_10

    .line 899
    invoke-virtual {v4}, Lfast/dic/dict/models/database/PersianWordDetail;->getPos()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfast/dic/dict/models/database/PosModel;

    .line 900
    invoke-virtual {v6}, Lfast/dic/dict/models/database/PosModel;->getPos()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_e

    invoke-virtual {v6}, Lfast/dic/dict/models/database/PosModel;->getPosEquivalent()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_e

    move-object v9, v1

    .line 901
    :cond_e
    move-object v6, v9

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 902
    invoke-virtual {v4}, Lfast/dic/dict/models/database/PersianWordDetail;->getPersianMeanings()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 904
    :cond_f
    invoke-virtual {v4}, Lfast/dic/dict/models/database/PersianWordDetail;->getPersianMeanings()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 907
    :cond_10
    :goto_6
    invoke-virtual {v4}, Lfast/dic/dict/models/database/PersianWordDetail;->getMeaning()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 913
    :cond_11
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "https://fastdic.com/word/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 915
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_12

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, v0, v1}, Lfast/dic/dict/utils/FragmentExtensionKt;->shareString(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method private final showResultOrderModal()V
    .locals 5

    .line 234
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    instance-of v1, v0, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v0, v2}, Lfast/dic/dict/utils/FragmentExtensionKt;->openResultOrderModal(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 243
    new-instance v2, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda4;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    .line 240
    const-string p0, "bottom_sheet_result"

    invoke-virtual {v0, p0, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void

    .line 252
    :cond_2
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 253
    sget v1, Lfast/dic/dict/R$string;->sort_the_result_title:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    sget v3, Lfast/dic/dict/R$string;->sort_the_result_desc:I

    invoke-virtual {p0, v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    sget v4, Lfast/dic/dict/R$string;->login_or_signup:I

    invoke-virtual {p0, v4}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    new-instance v2, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda5;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    invoke-static {v0, v1, v3, v4, v2}, Lfast/dic/dict/utils/FragmentExtensionKt;->showBeforeLoginScreen(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final showResultOrderModal$lambda$0(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bundle"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    const-string p1, "orderChanged"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getResult()V

    :cond_0
    return-void
.end method

.method static final showResultOrderModal$lambda$1(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Z)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    .line 258
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->checkUserIsLoginThenShowLoginPage()Z

    .line 260
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final speakOut(Ljava/lang/String;Z)V
    .locals 1

    .line 763
    :try_start_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getOfflinePlayer()Lfast/dic/dict/helpers/FDOfflinePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDOfflinePlayer;->stop()V

    .line 764
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->diactiveSound()V

    if-eqz p2, :cond_0

    .line 767
    const-string p2, "br"

    goto :goto_0

    .line 769
    :cond_0
    const-string/jumbo p2, "us"

    .line 771
    :goto_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getOfflinePlayer()Lfast/dic/dict/helpers/FDOfflinePlayer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/helpers/FDOfflinePlayer;->speak(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 773
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 774
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error play sound "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final uiStateChanged(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;)V
    .locals 3

    .line 389
    instance-of v0, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$Loading;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->setLoading(Ljava/lang/Boolean;)V

    return-void

    .line 395
    :cond_0
    instance-of v0, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 396
    check-cast p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->loadHtml(Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->getMeaning()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    .line 399
    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->setLoading(Ljava/lang/Boolean;)V

    .line 400
    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isNoInternetMessage()Z

    move-result p1

    if-nez p1, :cond_f

    .line 401
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requestInterstitialAfterResult()V

    return-void

    .line 406
    :cond_2
    instance-of v0, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlResult;

    if-eqz v0, :cond_b

    .line 407
    check-cast p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlResult;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlResult;->getResult()Lfast/dic/dict/models/database/SearchResultModel;

    move-result-object v0

    .line 408
    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlResult;->getHtml()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->loadHtml(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0}, Lfast/dic/dict/models/database/SearchResultModel;->getEnglishSearchResultModel()Lfast/dic/dict/models/database/EnglishSearchResultModel;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getWordId()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_5

    .line 410
    invoke-virtual {v0}, Lfast/dic/dict/models/database/SearchResultModel;->getPersianSearchResultModel()Lfast/dic/dict/models/database/PersianSearchResultModel;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lfast/dic/dict/models/database/PersianSearchResultModel;->getWordId()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v1

    .line 411
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lfast/dic/dict/models/database/SearchResultModel;->getPersianSearchResultModel()Lfast/dic/dict/models/database/PersianSearchResultModel;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lfast/dic/dict/models/database/PersianSearchResultModel;->getWordDetails()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfast/dic/dict/models/database/PersianWordDetail;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lfast/dic/dict/models/database/PersianWordDetail;->getMeaning()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_7

    .line 412
    invoke-virtual {v0}, Lfast/dic/dict/models/database/SearchResultModel;->getEnglishSearchResultModel()Lfast/dic/dict/models/database/EnglishSearchResultModel;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getMeanings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/models/database/EnglishMeaningModel;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lfast/dic/dict/models/database/EnglishMeaningModel;->getMeaning()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    move-object v1, v2

    .line 414
    :cond_8
    :goto_3
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lfast/dic/dict/models/database/ListModel;->setWordId(Ljava/lang/Integer;)V

    .line 415
    :cond_9
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    .line 416
    :cond_a
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requestInterstitialAfterResult()V

    return-void

    .line 420
    :cond_b
    instance-of v0, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlNumberResult;

    if-eqz v0, :cond_d

    .line 421
    check-cast p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlNumberResult;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlNumberResult;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->loadHtml(Ljava/lang/String;)V

    .line 422
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlNumberResult;->getMeaning()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    .line 423
    :cond_c
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->setLoading(Ljava/lang/Boolean;)V

    .line 424
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requestInterstitialAfterResult()V

    return-void

    .line 428
    :cond_d
    instance-of v0, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorResult;

    if-eqz v0, :cond_e

    .line 429
    check-cast p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorResult;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorResult;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->loadHtml(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->setLoading(Ljava/lang/Boolean;)V

    return-void

    .line 434
    :cond_e
    instance-of p1, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorUnauthorized;

    if-eqz p1, :cond_f

    .line 435
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->checkUserIsLoginThenShowLoginPage()Z

    :cond_f
    return-void
.end method


# virtual methods
.method public final getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;
    .locals 0

    .line 107
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->binding:Lfast/dic/dict/databinding/FragmentWordResultBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOfflinePlayer()Lfast/dic/dict/helpers/FDOfflinePlayer;
    .locals 0

    .line 105
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->offlinePlayer:Lfast/dic/dict/helpers/FDOfflinePlayer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "offlinePlayer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getResult()V
    .locals 4

    .line 337
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->handlePlanErrorForShareExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 343
    :cond_2
    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->isTranslator()Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object p0

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->getTranslatorResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 346
    :cond_3
    sget-object v2, Lcom/fastdic/android/modules/fdnumberstowords/utils/FDNumberUtil;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/utils/FDNumberUtil;

    invoke-virtual {v2, v1}, Lcom/fastdic/android/modules/fdnumberstowords/utils/FDNumberUtil;->isNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 347
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object p0

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->getNumberResult(Ljava/lang/String;)V

    return-void

    .line 349
    :cond_4
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object p0

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWordId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->getWordResult(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final handlePlanErrorForShareExtension()Z
    .locals 6

    .line 919
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getFromShare()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 923
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    instance-of v2, v0, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    const/4 v2, 0x1

    .line 925
    const-string v4, "getString(...)"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2Or3()Z

    move-result v5

    if-nez v5, :cond_2

    .line 926
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v0

    .line 927
    sget v1, Lfast/dic/dict/R$string;->share_extension_error_title:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 928
    sget v3, Lfast/dic/dict/R$string;->force_to_have_plan2_for_share_extension:I

    invoke-virtual {p0, v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    invoke-virtual {v0, v1, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->generateErrorHtml(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    if-eqz v0, :cond_3

    .line 931
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    .line 932
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v0

    .line 933
    sget v1, Lfast/dic/dict/R$string;->share_extension_error_title:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    sget v3, Lfast/dic/dict/R$string;->share_extension_session_error:I

    invoke-virtual {p0, v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    invoke-virtual {v0, v1, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->generateErrorHtml(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    return v1
.end method

.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    const-string p0, "menu"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "menuInflater"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    sget p0, Lfast/dic/dict/R$menu;->word_result_menu:I

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 119
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->setBinding(Lfast/dic/dict/databinding/FragmentWordResultBinding;)V

    .line 121
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->setEnableSearchBar(Ljava/lang/Boolean;)V

    .line 122
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 125
    :try_start_0
    new-instance p1, Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lim/delight/android/webview/AdvancedWebView;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Lim/delight/android/webview/AdvancedWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getLazyWebClient()Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, p2}, Lim/delight/android/webview/AdvancedWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 125
    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->resultWebView:Lim/delight/android/webview/AdvancedWebView;

    .line 132
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentWordResultBinding;->webViewContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->resultWebView:Lim/delight/android/webview/AdvancedWebView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 134
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 137
    :goto_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    const-string p2, "getViewLifecycleOwner(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$onCreateView$2;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$onCreateView$2;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 142
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->getFavoriteStatus()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p3

    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$onCreateView$3;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$onCreateView$3;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance v1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p3, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 143
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentWordResultBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object p3

    invoke-virtual {p3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    const-string p3, ""

    :cond_1
    invoke-virtual {p1, p3}, Lfast/dic/dict/views/SearchBarView;->setCurrentWord(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p3, p1, Lfast/dic/dict/activities/MainActivity;

    if-eqz p3, :cond_2

    move-object p2, p1

    check-cast p2, Lfast/dic/dict/activities/MainActivity;

    .line 146
    :cond_2
    iget-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->resultWebView:Lim/delight/android/webview/AdvancedWebView;

    if-eqz p1, :cond_3

    new-instance p3, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda14;

    invoke-direct {p3, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda14;-><init>(Lfast/dic/dict/activities/MainActivity;)V

    invoke-virtual {p1, p3}, Lim/delight/android/webview/AdvancedWebView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 153
    :cond_3
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentWordResultBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    new-instance p2, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda15;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/views/SearchBarView;->setOnClickedListener(Lkotlin/jvm/functions/Function0;)V

    .line 156
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentWordResultBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    new-instance p2, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/views/SearchBarView;->setStateChangeListener(Lkotlin/jvm/functions/Function2;)V

    .line 159
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentWordResultBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    new-instance p2, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/views/SearchBarView;->setClearButtonClickedListener(Lkotlin/jvm/functions/Function0;)V

    .line 164
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->handleAudioPlayer()V

    .line 166
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 3

    .line 225
    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->resultWebView:Lim/delight/android/webview/AdvancedWebView;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object v1

    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentWordResultBinding;->webViewContainer:Landroid/widget/FrameLayout;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 227
    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->resultWebView:Lim/delight/android/webview/AdvancedWebView;

    .line 230
    invoke-super {p0}, Lfast/dic/dict/presentation/word_result_screen/Hilt_WordResultFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 968
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getPreviousBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 970
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "word_result_modal_dismissed"

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 972
    :cond_0
    invoke-super {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/Hilt_WordResultFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 947
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 949
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->dismiss()V

    return v1

    .line 953
    :cond_0
    sget v0, Lfast/dic/dict/R$id;->shareItem:I

    if-ne p1, v0, :cond_1

    .line 954
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->shareAction()V

    return v1

    .line 958
    :cond_1
    sget v0, Lfast/dic/dict/R$id;->resultOrderItem:I

    if-ne p1, v0, :cond_2

    .line 959
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->showResultOrderModal()V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 218
    invoke-super {p0}, Lfast/dic/dict/presentation/word_result_screen/Hilt_WordResultFragment;->onResume()V

    .line 220
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->optimizeSizeForModal()V

    .line 221
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewModel()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->updateContext(Landroid/content/Context;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 170
    invoke-super {p0}, Lfast/dic/dict/presentation/word_result_screen/Hilt_WordResultFragment;->onStart()V

    .line 172
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 174
    :cond_1
    sget v0, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 176
    invoke-static {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    const-string v0, "from(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 179
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/word_result_screen/Hilt_WordResultFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->isModal()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentWordResultBinding;->toolbarTop:Landroidx/appcompat/widget/Toolbar;

    move-object v0, p0

    check-cast v0, Landroidx/core/view/MenuProvider;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V

    .line 190
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentWordResultBinding;->toolbarTop:Landroidx/appcompat/widget/Toolbar;

    sget v0, Lfast/dic/dict/R$drawable;->ic_close:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 191
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentWordResultBinding;->toolbarTop:Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda9;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 193
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Landroidx/core/view/MenuHost;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/core/view/MenuHost;

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_2

    move-object v0, p0

    check-cast v0, Landroidx/core/view/MenuProvider;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/core/view/MenuHost;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V

    .line 196
    :cond_2
    :goto_1
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    .line 197
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getFromShare()Z

    move-result v0

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, p2

    :goto_2
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lfast/dic/dict/models/database/ListModel;->isTranslator()Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, p2

    :goto_3
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getArgs()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v3

    invoke-virtual {v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->isNumber()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Showing result for word ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTranslator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getResult()V

    .line 200
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 201
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 202
    const-string p2, "login_dialog_dismissed"

    invoke-virtual {p1, p2}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 203
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$$ExternalSyntheticLambda10;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    new-instance p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_6
    return-void
.end method

.method public final setBinding(Lfast/dic/dict/databinding/FragmentWordResultBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->binding:Lfast/dic/dict/databinding/FragmentWordResultBinding;

    return-void
.end method

.method public final setOfflinePlayer(Lfast/dic/dict/helpers/FDOfflinePlayer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->offlinePlayer:Lfast/dic/dict/helpers/FDOfflinePlayer;

    return-void
.end method
