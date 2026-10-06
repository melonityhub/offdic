.class public final Lfast/dic/dict/fragments/HelpFragment;
.super Lfast/dic/dict/fragments/Hilt_HelpFragment;
.source "HelpFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHelpFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HelpFragment.kt\nfast/dic/dict/fragments/HelpFragment\n+ 2 FragmentNavArgsLazy.kt\nandroidx/navigation/fragment/FragmentNavArgsLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n42#2,3:84\n1#3:87\n*S KotlinDebug\n*F\n+ 1 HelpFragment.kt\nfast/dic/dict/fragments/HelpFragment\n*L\n25#1:84,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\u001b\u00a8\u0006\u001a"
    }
    d2 = {
        "Lfast/dic/dict/fragments/HelpFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "<init>",
        "()V",
        "urlParam",
        "",
        "canRedirect",
        "",
        "args",
        "Lfast/dic/dict/fragments/HelpFragmentArgs;",
        "getArgs",
        "()Lfast/dic/dict/fragments/HelpFragmentArgs;",
        "args$delegate",
        "Landroidx/navigation/NavArgsLazy;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentHelpBinding;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "getWebViewClient",
        "Landroid/webkit/WebViewClient;",
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


# instance fields
.field private final args$delegate:Landroidx/navigation/NavArgsLazy;

.field private binding:Lfast/dic/dict/databinding/FragmentHelpBinding;

.field private canRedirect:Z

.field private urlParam:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 21
    invoke-direct {p0}, Lfast/dic/dict/fragments/Hilt_HelpFragment;-><init>()V

    .line 25
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 84
    new-instance v1, Landroidx/navigation/NavArgsLazy;

    const-class v2, Lfast/dic/dict/fragments/HelpFragmentArgs;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/fragments/HelpFragment$special$$inlined$navArgs$1;

    invoke-direct {v3, v0}, Lfast/dic/dict/fragments/HelpFragment$special$$inlined$navArgs$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v2, v3}, Landroidx/navigation/NavArgsLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    .line 25
    iput-object v1, p0, Lfast/dic/dict/fragments/HelpFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lfast/dic/dict/fragments/HelpFragment;)Lfast/dic/dict/databinding/FragmentHelpBinding;
    .locals 0

    .line 21
    iget-object p0, p0, Lfast/dic/dict/fragments/HelpFragment;->binding:Lfast/dic/dict/databinding/FragmentHelpBinding;

    return-object p0
.end method

.method public static final synthetic access$getCanRedirect$p(Lfast/dic/dict/fragments/HelpFragment;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lfast/dic/dict/fragments/HelpFragment;->canRedirect:Z

    return p0
.end method

.method private final getArgs()Lfast/dic/dict/fragments/HelpFragmentArgs;
    .locals 0

    .line 25
    iget-object p0, p0, Lfast/dic/dict/fragments/HelpFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    check-cast p0, Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/fragments/HelpFragmentArgs;

    return-object p0
.end method

.method private final getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .line 46
    new-instance v0, Lfast/dic/dict/fragments/HelpFragment$getWebViewClient$client$1;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/HelpFragment$getWebViewClient$client$1;-><init>(Lfast/dic/dict/fragments/HelpFragment;)V

    .line 81
    check-cast v0, Landroid/webkit/WebViewClient;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 32
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentHelpBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentHelpBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/fragments/HelpFragment;->binding:Lfast/dic/dict/databinding/FragmentHelpBinding;

    .line 34
    invoke-direct {p0}, Lfast/dic/dict/fragments/HelpFragment;->getArgs()Lfast/dic/dict/fragments/HelpFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/fragments/HelpFragmentArgs;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/fragments/HelpFragment;->urlParam:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lfast/dic/dict/fragments/HelpFragment;->getArgs()Lfast/dic/dict/fragments/HelpFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/fragments/HelpFragmentArgs;->getCanRedirect()Z

    move-result p1

    iput-boolean p1, p0, Lfast/dic/dict/fragments/HelpFragment;->canRedirect:Z

    .line 36
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Lfast/dic/dict/fragments/HelpFragment;->getArgs()Lfast/dic/dict/fragments/HelpFragmentArgs;

    move-result-object p2

    invoke-virtual {p2}, Lfast/dic/dict/fragments/HelpFragmentArgs;->getPageTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lfast/dic/dict/utils/ContextExtKt;->setToolbarTitle(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lfast/dic/dict/fragments/HelpFragment;->binding:Lfast/dic/dict/databinding/FragmentHelpBinding;

    const/4 p2, 0x0

    const-string v0, "binding"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentHelpBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-virtual {p1, p3}, Lfast/dic/dict/views/CustomProgressbar;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lfast/dic/dict/fragments/HelpFragment;->binding:Lfast/dic/dict/databinding/FragmentHelpBinding;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentHelpBinding;->helpWebView:Lim/delight/android/webview/AdvancedWebView;

    invoke-direct {p0}, Lfast/dic/dict/fragments/HelpFragment;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object p3

    invoke-virtual {p1, p3}, Lim/delight/android/webview/AdvancedWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 40
    iget-object p1, p0, Lfast/dic/dict/fragments/HelpFragment;->urlParam:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p3, p0, Lfast/dic/dict/fragments/HelpFragment;->binding:Lfast/dic/dict/databinding/FragmentHelpBinding;

    if-nez p3, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p2

    :cond_2
    iget-object p3, p3, Lfast/dic/dict/databinding/FragmentHelpBinding;->helpWebView:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {p3, p1}, Lim/delight/android/webview/AdvancedWebView;->loadUrl(Ljava/lang/String;)V

    .line 42
    :cond_3
    iget-object p0, p0, Lfast/dic/dict/fragments/HelpFragment;->binding:Lfast/dic/dict/databinding/FragmentHelpBinding;

    if-nez p0, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentHelpBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method
