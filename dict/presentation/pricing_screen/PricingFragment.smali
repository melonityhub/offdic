.class public final Lfast/dic/dict/presentation/pricing_screen/PricingFragment;
.super Lfast/dic/dict/presentation/pricing_screen/Hilt_PricingFragment;
.source "PricingFragment.kt"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPricingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PricingFragment.kt\nfast/dic/dict/presentation/pricing_screen/PricingFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,537:1\n110#2,15:538\n110#2,15:553\n296#3,2:568\n1739#3:570\n1814#3,3:571\n1665#3:574\n1691#3,3:575\n1694#3,3:585\n2068#3:588\n1739#3:589\n1814#3,3:590\n1221#3:593\n1739#3:594\n1814#3,3:595\n1221#3:598\n2069#3:599\n460#4,7:578\n*S KotlinDebug\n*F\n+ 1 PricingFragment.kt\nfast/dic/dict/presentation/pricing_screen/PricingFragment\n*L\n62#1:538,15\n63#1:553,15\n406#1:568,2\n469#1:570\n469#1:571,3\n245#1:574\n245#1:575,3\n245#1:585,3\n252#1:588\n255#1:589\n255#1:590,3\n256#1:593\n259#1:594\n259#1:595,3\n260#1:598\n252#1:599\n245#1:578,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J$\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\u0008\u00109\u001a\u0004\u0018\u00010:2\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0016J\u001a\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u0002062\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0016J\u001d\u0010@\u001a\u00020>2\u0006\u0010A\u001a\u00020\u00062\u0006\u0010B\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008CJ\u0008\u0010D\u001a\u00020EH\u0002J\u0008\u0010F\u001a\u00020>H\u0002J\u0010\u0010G\u001a\u00020>2\u0006\u0010H\u001a\u00020IH\u0002J\u0008\u0010J\u001a\u00020>H\u0002J\u0008\u0010K\u001a\u00020>H\u0002J\u0012\u0010L\u001a\u00020>2\u0008\u0010M\u001a\u0004\u0018\u00010NH\u0016J\u0008\u0010O\u001a\u00020>H\u0002J \u0010P\u001a\u00020>2\u000e\u0008\u0002\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020R0-2\u0006\u0010S\u001a\u00020EH\u0002J\u0018\u0010T\u001a\u0004\u0018\u00010.2\u0006\u0010U\u001a\u00020V2\u0006\u0010\u0005\u001a\u00020\u0006J\u0008\u0010W\u001a\u00020>H\u0002J\u0012\u0010X\u001a\u00020>2\u0008\u0010M\u001a\u0004\u0018\u00010NH\u0016J\u0012\u0010Y\u001a\u00020>2\u0008\u0010M\u001a\u0004\u0018\u00010NH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR#\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\u0013\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001b\u0010 \u001a\u00020!8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008\"\u0010#R\u001b\u0010&\u001a\u00020\'8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010%\u001a\u0004\u0008(\u0010)R,\u0010+\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020.0-0,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u0010\u00103\u001a\u0004\u0018\u000104X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008[\u00a8\u0006Z"
    }
    d2 = {
        "Lfast/dic/dict/presentation/pricing_screen/PricingFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;",
        "<init>",
        "()V",
        "planType",
        "Lfast/dic/dict/models/PlanType;",
        "selectedMonth",
        "",
        "getSelectedMonth$app",
        "()I",
        "setSelectedMonth$app",
        "(I)V",
        "planAdapter",
        "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;",
        "getPlanAdapter",
        "()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;",
        "setPlanAdapter",
        "(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;)V",
        "Ljavax/inject/Inject;",
        "featureAdapter",
        "Lfast/dic/dict/adapters/PricingFeatureListAdapter;",
        "getFeatureAdapter",
        "()Lfast/dic/dict/adapters/PricingFeatureListAdapter;",
        "setFeatureAdapter",
        "(Lfast/dic/dict/adapters/PricingFeatureListAdapter;)V",
        "binding",
        "Lfast/dic/dict/databinding/FragmentPricingBinding;",
        "getBinding$app",
        "()Lfast/dic/dict/databinding/FragmentPricingBinding;",
        "setBinding$app",
        "(Lfast/dic/dict/databinding/FragmentPricingBinding;)V",
        "viewModel",
        "Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "googleViewModel",
        "Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;",
        "getGoogleViewModel",
        "()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;",
        "googleViewModel$delegate",
        "googlePlayPrices",
        "",
        "",
        "",
        "getGooglePlayPrices",
        "()Ljava/util/Map;",
        "setGooglePlayPrices",
        "(Ljava/util/Map;)V",
        "pricingResponse",
        "Lfast/dic/dict/domain/entity/pricing/PricingResponse;",
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
        "handlePaymentMethods",
        "type",
        "month",
        "handlePaymentMethods$app",
        "checkIfNotLoginOpenLoginModal",
        "",
        "fetchAndShowPricingPlan",
        "fetchPriceFromServer",
        "language",
        "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
        "observeToUpdatePlanType",
        "observeToUpdatePlanMonth",
        "onTabSelected",
        "tab",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        "updateModelForFeatureTable",
        "handleUIForActivePlan",
        "data",
        "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;",
        "firstTime",
        "getActivePlanDate",
        "user",
        "Lfast/dic/dict/services/parse/FDParseUser;",
        "showActivationAlert",
        "onTabUnselected",
        "onTabReselected",
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
.field public binding:Lfast/dic/dict/databinding/FragmentPricingBinding;

.field public featureAdapter:Lfast/dic/dict/adapters/PricingFeatureListAdapter;

.field private googlePlayPrices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lfast/dic/dict/models/PlanType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final googleViewModel$delegate:Lkotlin/Lazy;

.field public planAdapter:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private planType:Lfast/dic/dict/models/PlanType;

.field private pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

.field private selectedMonth:I

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$3m_v4P9FQsAHUX1t-MbG2p_EyxY(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->onViewCreated$lambda$2$0$0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$B2bkyU9_zVtPSqWpgporxQLkra8(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->handlePaymentMethods$lambda$0$0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gJ1F5jDHizd8iKzLIWl29e8FH-0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->handlePaymentMethods$lambda$1$0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 7

    .line 52
    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/Hilt_PricingFragment;-><init>()V

    .line 55
    sget-object v0, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    iput-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->planType:Lfast/dic/dict/models/PlanType;

    const/16 v0, 0xc

    .line 56
    iput v0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->selectedMonth:I

    .line 62
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 539
    new-instance v1, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 543
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 544
    const-class v2, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v6, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v6, v0, v1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v6}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 62
    iput-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 554
    new-instance v1, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$6;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$6;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 558
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$7;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$7;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 559
    const-class v2, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$8;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$8;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$9;

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$10;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$10;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->googleViewModel$delegate:Lkotlin/Lazy;

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->googlePlayPrices:Ljava/util/Map;

    return-void
.end method

.method private final checkIfNotLoginOpenLoginModal()Z
    .locals 3

    .line 205
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget v0, Lfast/dic/dict/R$id;->loginSignupFragmentDialog:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final fetchAndShowPricingPlan()V
    .locals 7

    .line 214
    sget-object v0, Lfast/dic/dict/helpers/FDInternetHelper;->INSTANCE:Lfast/dic/dict/helpers/FDInternetHelper;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/helpers/FDInternetHelper;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 215
    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isPlayStore()Z

    move-result v1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Pricing] fetchAndShowPricingPlan: internet="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isPlayStore="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " isPersian="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FD-HTTP"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 217
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/utils/FDAlertManger;->showNotConnectedToInternetAlert(Landroid/content/Context;)V

    .line 219
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()Z

    return-void

    .line 223
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object v0, v0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 224
    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object v0, v0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 227
    :cond_2
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    goto :goto_0

    :cond_3
    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    .line 229
    :goto_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v1

    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentPricingBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const-string v3, "loadingSpinner"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static {v1, v5, v6, v3, v4}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 231
    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isPlayStore()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v1

    if-nez v1, :cond_4

    .line 232
    const-string v1, "[Pricing] path=PlayStore+English \u2192 waiting for Google Play products"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v1, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda7;-><init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;)V

    invoke-static {p0, v1}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt;->getProductFromGooglePlay(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 267
    :cond_4
    const-string v1, "[Pricing] path=direct (Bazaar or Persian) \u2192 fetchPriceFromServer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->fetchPriceFromServer(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;)V

    return-void
.end method

.method static final fetchAndShowPricingPlan$lambda$0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Ljava/util/List;)Lkotlin/Unit;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 234
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Pricing] getProductFromGooglePlay callback fired, products="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FD-HTTP"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->fetchPriceFromServer(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;)V

    .line 237
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->planType:Lfast/dic/dict/models/PlanType;

    sget-object v1, Lfast/dic/dict/models/PlanType;->FREE:Lfast/dic/dict/models/PlanType;

    if-ne p1, v1, :cond_1

    .line 238
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    if-nez p2, :cond_2

    .line 242
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 245
    :cond_2
    check-cast p2, Ljava/lang/Iterable;

    .line 574
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    .line 575
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 576
    move-object v2, v1

    check-cast v2, Lfast/dic/dict/domain/billing/PurchaseListingDetails;

    .line 246
    invoke-virtual {v2}, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->getProductId()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, ".ai"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    sget-object v2, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    goto :goto_2

    .line 249
    :cond_3
    sget-object v2, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    .line 578
    :goto_2
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 577
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 581
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :cond_4
    check-cast v3, Ljava/util/List;

    .line 585
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    :cond_5
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 588
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/models/PlanType;

    .line 253
    sget-object v1, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    const-string v2, "-"

    const/16 v3, 0xa

    if-ne v0, v1, :cond_a

    .line 254
    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->googlePlayPrices:Ljava/util/Map;

    sget-object v4, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    .line 255
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_8

    check-cast v0, Ljava/lang/Iterable;

    .line 589
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 590
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 591
    check-cast v3, Lfast/dic/dict/domain/billing/PurchaseListingDetails;

    .line 255
    invoke-virtual {v3}, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    move-object v3, v2

    .line 591
    :cond_6
    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 592
    :cond_7
    check-cast v5, Ljava/util/List;

    .line 255
    check-cast v5, Ljava/lang/Iterable;

    .line 593
    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$fetchAndShowPricingPlan$lambda$0$1$$inlined$sortedBy$1;

    invoke-direct {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$fetchAndShowPricingPlan$lambda$0$1$$inlined$sortedBy$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    .line 256
    :cond_8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 254
    :cond_9
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 258
    :cond_a
    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->googlePlayPrices:Ljava/util/Map;

    sget-object v4, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    .line 259
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/Iterable;

    .line 594
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 595
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 596
    check-cast v3, Lfast/dic/dict/domain/billing/PurchaseListingDetails;

    .line 259
    invoke-virtual {v3}, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move-object v3, v2

    .line 596
    :cond_b
    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 597
    :cond_c
    check-cast v5, Ljava/util/List;

    .line 259
    check-cast v5, Ljava/lang/Iterable;

    .line 598
    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$fetchAndShowPricingPlan$lambda$0$1$$inlined$sortedBy$2;

    invoke-direct {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$fetchAndShowPricingPlan$lambda$0$1$$inlined$sortedBy$2;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 260
    :cond_d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 258
    :cond_e
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 264
    :cond_f
    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->updateModelForFeatureTable()V

    .line 265
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final fetchPriceFromServer(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;)V
    .locals 2

    .line 275
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->getPricingList(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda11;-><init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    new-instance p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method static final fetchPriceFromServer$lambda$0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState;)Lkotlin/Unit;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 279
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v2

    iget-object v2, v2, Lfast/dic/dict/databinding/FragmentPricingBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const-string v3, "loadingSpinner"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 280
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 282
    instance-of v3, v1, Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState$PricingPlan;

    if-eqz v3, :cond_18

    .line 283
    check-cast v1, Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState$PricingPlan;

    invoke-virtual {v1}, Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState$PricingPlan;->getPricingResponse()Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    move-result-object v1

    iput-object v1, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    .line 285
    iget-object v1, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->googlePlayPrices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_8

    .line 286
    iget-object v1, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->googlePlayPrices:Ljava/util/Map;

    sget-object v7, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    .line 287
    new-instance v7, Lfast/dic/dict/domain/entity/pricing/Price;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10}, Lfast/dic/dict/domain/entity/pricing/Price;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    new-instance v9, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    .line 289
    new-instance v10, Lfast/dic/dict/domain/entity/pricing/Plan;

    .line 291
    iget-object v11, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan2()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v11

    goto :goto_0

    :cond_0
    move-object v11, v6

    :goto_0
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Lfast/dic/dict/domain/entity/pricing/Plan;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 289
    invoke-direct {v10, v7, v11}, Lfast/dic/dict/domain/entity/pricing/Plan;-><init>(Lfast/dic/dict/domain/entity/pricing/Price;Ljava/lang/String;)V

    .line 293
    sget-object v11, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    .line 294
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 295
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 297
    :cond_1
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7, v12, v4}, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->convertPriceNumber(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    :goto_1
    move-object v12, v7

    .line 298
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 299
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v7, v13, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 301
    :cond_2
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v7, v13, v4}, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->convertPriceNumber(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    :goto_2
    move-object v13, v7

    .line 302
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 303
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v7, v1, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 305
    :cond_3
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1, v4}, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->convertPriceNumber(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v14, v1

    const/16 v16, 0x20

    const/16 v17, 0x0

    const/4 v15, 0x0

    .line 288
    invoke-direct/range {v9 .. v17}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v1, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->googlePlayPrices:Ljava/util/Map;

    sget-object v7, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    .line 309
    new-instance v7, Lfast/dic/dict/domain/entity/pricing/Price;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v7, v9, v10, v11}, Lfast/dic/dict/domain/entity/pricing/Price;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v12, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    .line 311
    new-instance v13, Lfast/dic/dict/domain/entity/pricing/Plan;

    .line 313
    iget-object v9, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan3()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v9

    goto :goto_4

    :cond_4
    move-object v9, v6

    :goto_4
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lfast/dic/dict/domain/entity/pricing/Plan;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 311
    invoke-direct {v13, v7, v9}, Lfast/dic/dict/domain/entity/pricing/Plan;-><init>(Lfast/dic/dict/domain/entity/pricing/Price;Ljava/lang/String;)V

    .line 314
    sget-object v14, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    .line 316
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 317
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v9, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 319
    :cond_5
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9, v4}, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->convertPriceNumber(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    :goto_5
    move-object v15, v7

    .line 320
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 321
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v9, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 323
    :cond_6
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9, v4}, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->convertPriceNumber(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    :goto_6
    move-object/from16 v16, v7

    .line 324
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 325
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v7, v1, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 327
    :cond_7
    sget-object v6, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1, v4}, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->convertPriceNumber(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :goto_7
    move-object/from16 v17, v1

    const/16 v19, 0x20

    const/16 v20, 0x0

    const/16 v18, 0x0

    .line 310
    invoke-direct/range {v12 .. v20}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_8
    const/4 v1, 0x3

    .line 330
    new-array v7, v1, [Ljava/lang/String;

    iget-object v8, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan2()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v8

    goto :goto_8

    :cond_9
    move-object v8, v6

    :goto_8
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object v8

    invoke-virtual {v8}, Lfast/dic/dict/domain/entity/pricing/Price;->get1()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan2()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v8

    goto :goto_9

    :cond_a
    move-object v8, v6

    :goto_9
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object v8

    invoke-virtual {v8}, Lfast/dic/dict/domain/entity/pricing/Price;->get6()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan2()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v8

    goto :goto_a

    :cond_b
    move-object v8, v6

    :goto_a
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object v8

    invoke-virtual {v8}, Lfast/dic/dict/domain/entity/pricing/Price;->get12()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 332
    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    new-instance v9, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    .line 333
    iget-object v10, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan2()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v10

    goto :goto_b

    :cond_c
    move-object v10, v6

    :goto_b
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 334
    sget-object v11, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    .line 336
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v12

    invoke-virtual {v12}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 337
    sget-object v12, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v12, v13, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_c

    .line 339
    :cond_d
    sget-object v12, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v12, v13, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 340
    :goto_c
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v13

    invoke-virtual {v13}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 341
    sget-object v13, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v13, v14, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_d

    .line 343
    :cond_e
    sget-object v13, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v13, v14, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 344
    :goto_d
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v14

    invoke-virtual {v14}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 345
    sget-object v14, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v14, v7, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_e

    .line 347
    :cond_f
    sget-object v14, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v14, v7, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_e
    move-object v14, v7

    const/16 v16, 0x20

    const/16 v17, 0x0

    const/4 v15, 0x0

    .line 332
    invoke-direct/range {v9 .. v17}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 350
    new-array v1, v1, [Ljava/lang/String;

    iget-object v7, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan3()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v7

    goto :goto_f

    :cond_10
    move-object v7, v6

    :goto_f
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object v7

    invoke-virtual {v7}, Lfast/dic/dict/domain/entity/pricing/Price;->get1()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    iget-object v7, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan3()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v7

    goto :goto_10

    :cond_11
    move-object v7, v6

    :goto_10
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object v7

    invoke-virtual {v7}, Lfast/dic/dict/domain/entity/pricing/Price;->get6()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    iget-object v7, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan3()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v7

    goto :goto_11

    :cond_12
    move-object v7, v6

    :goto_11
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object v7

    invoke-virtual {v7}, Lfast/dic/dict/domain/entity/pricing/Price;->get12()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 352
    new-instance v9, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    .line 353
    iget-object v7, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan3()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v7

    move-object v10, v7

    goto :goto_12

    :cond_13
    move-object v10, v6

    :goto_12
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 354
    sget-object v11, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    .line 356
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 357
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_13

    .line 359
    :cond_14
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_13
    move-object v12, v7

    .line 360
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 361
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v7, v13, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_14

    .line 363
    :cond_15
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v7, v13, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_14
    move-object v13, v7

    .line 364
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 365
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v7, v1, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    .line 367
    :cond_16
    sget-object v7, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v7, v1, v4, v3, v6}, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->convertPriceNumber$default(Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_15
    move-object v14, v1

    const/16 v16, 0x20

    const/16 v17, 0x0

    const/4 v15, 0x0

    .line 352
    invoke-direct/range {v9 .. v17}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 371
    :goto_16
    iget-object v1, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    if-eqz v1, :cond_17

    .line 373
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 374
    iget-object v3, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->planType:Lfast/dic/dict/models/PlanType;

    .line 375
    iget v4, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->selectedMonth:I

    .line 372
    invoke-static {v0, v1, v3, v4}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt;->updateModelForFeatureTable(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/domain/entity/pricing/PricingResponse;Lfast/dic/dict/models/PlanType;I)V

    .line 377
    iget-object v1, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt;->flatFeatures(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/domain/entity/pricing/PricingResponse;)Ljava/util/List;

    move-result-object v1

    .line 378
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getFeatureAdapter()Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    move-result-object v3

    iget-object v4, v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->planType:Lfast/dic/dict/models/PlanType;

    invoke-virtual {v4}, Lfast/dic/dict/models/PlanType;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lfast/dic/dict/adapters/PricingFeatureListAdapter;->setPlanNumber(I)V

    .line 379
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getFeatureAdapter()Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lfast/dic/dict/adapters/PricingFeatureListAdapter;->submitList(Ljava/util/List;)V

    .line 382
    :cond_17
    invoke-direct {v0, v2, v5}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->handleUIForActivePlan(Ljava/util/List;Z)V

    .line 383
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPricingBinding;->featuresLayout:Landroid/widget/LinearLayout;

    const-string v1, "featuresLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lfast/dic/dict/utils/ViewExtKt;->showMeNow(Landroid/view/View;)V

    goto :goto_17

    .line 385
    :cond_18
    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    .line 387
    :goto_17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final handlePaymentMethods$lambda$0$0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 185
    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->updateModelForFeatureTable()V

    .line 186
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handlePaymentMethods$lambda$1$0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 198
    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->updateModelForFeatureTable()V

    .line 199
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final handleUIForActivePlan(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;",
            ">;Z)V"
        }
    .end annotation

    .line 439
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    instance-of v1, v0, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 441
    :goto_0
    const-string v1, "getString(...)"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 442
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setPurchaseButtonEnabled(Z)V

    .line 443
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setPurchaseButtonVisible(Z)V

    .line 444
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setRenewButtonVisible(Z)V

    .line 445
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setRenewButtonEnabled(Z)V

    .line 447
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v3

    sget v5, Lfast/dic/dict/R$string;->activate_and_login_button_title:I

    invoke-virtual {p0, v5}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setPurchaseButtonTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 449
    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setPurchaseButtonVisible(Z)V

    .line 450
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setRenewButtonVisible(Z)V

    .line 451
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setRenewButtonEnabled(Z)V

    .line 453
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2InView()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 454
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v5

    sget v6, Lfast/dic/dict/R$string;->is_activate:I

    invoke-virtual {p0, v6}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setPurchaseButtonTitle(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setPurchaseButtonEnabled(Z)V

    .line 456
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setPurchaseButtonVisible(Z)V

    goto :goto_1

    .line 457
    :cond_2
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan3InView()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 458
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v5

    sget v6, Lfast/dic/dict/R$string;->is_activate:I

    invoke-virtual {p0, v6}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setPurchaseButtonTitle(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setPurchaseButtonEnabled(Z)V

    .line 460
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setPurchaseButtonVisible(Z)V

    goto :goto_1

    .line 462
    :cond_3
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setPurchaseButtonEnabled(Z)V

    .line 463
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setPurchaseButtonVisible(Z)V

    .line 464
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setPurchaseButtonTitle(Ljava/lang/String;)V

    .line 468
    :goto_1
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v1

    .line 469
    check-cast p1, Ljava/lang/Iterable;

    .line 570
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 571
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 572
    check-cast v5, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    if-eqz v0, :cond_4

    .line 470
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2InView()Z

    move-result v6

    if-ne v6, v4, :cond_4

    .line 471
    invoke-virtual {v5}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getActivePlanDate(Lfast/dic/dict/services/parse/FDParseUser;Lfast/dic/dict/models/PlanType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->setSubscriptionMessage(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    .line 472
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan3InView()Z

    move-result v6

    if-ne v6, v4, :cond_5

    .line 473
    invoke-virtual {v5}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getActivePlanDate(Lfast/dic/dict/services/parse/FDParseUser;Lfast/dic/dict/models/PlanType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->setSubscriptionMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 475
    :cond_5
    invoke-virtual {v5, v2}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->setSubscriptionMessage(Ljava/lang/String;)V

    .line 572
    :goto_3
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 573
    :cond_6
    check-cast v3, Ljava/util/List;

    .line 468
    invoke-virtual {v1, v3}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->submitList(Ljava/util/List;)V

    if-nez p2, :cond_7

    .line 483
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method static synthetic handleUIForActivePlan$default(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 436
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p1

    const-string p3, "getCurrentList(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    :cond_0
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->handleUIForActivePlan(Ljava/util/List;Z)V

    return-void
.end method

.method private final observeToUpdatePlanMonth()V
    .locals 2

    .line 396
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v0

    new-instance v1, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda8;-><init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setOnMonthChange(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final observeToUpdatePlanMonth$lambda$0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;I)Lkotlin/Unit;
    .locals 1

    .line 397
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getSelectedMonth()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->planType:Lfast/dic/dict/models/PlanType;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    iput p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->selectedMonth:I

    .line 399
    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->updateModelForFeatureTable()V

    .line 400
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final observeToUpdatePlanType()V
    .locals 2

    .line 391
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object v0, v0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    move-object v1, p0

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 392
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object p0, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    .line 94
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->updateModelForFeatureTable()V

    .line 96
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->onResume()V

    .line 98
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/presentation/pricing_screen/EmailVerificationState;)Lkotlin/Unit;
    .locals 6

    .line 103
    instance-of v0, p1, Lfast/dic/dict/presentation/pricing_screen/EmailVerificationState$Loading;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const-string v5, "loadingSpinner"

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v3, v4, v2, v1}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_0
    instance-of v0, p1, Lfast/dic/dict/presentation/pricing_screen/EmailVerificationState$Success;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentPricingBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3, v4, v2, v1}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 109
    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    .line 110
    sget v0, Lfast/dic/dict/R$string;->email_confirm:I

    invoke-virtual {p0, v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget v2, Lfast/dic/dict/R$string;->sent_email_confirm_please_check_mail_box:I

    invoke-virtual {p0, v2}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget v3, Lfast/dic/dict/R$string;->close:I

    invoke-virtual {p0, v3}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    .line 109
    invoke-virtual {p1, v0, v2, v3, p0}, Lfast/dic/dict/utils/FDAlertManger;->showAlertWithOutForeCloseApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 117
    :cond_1
    instance-of v0, p1, Lfast/dic/dict/presentation/pricing_screen/EmailVerificationState$Error;

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPricingBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3, v4, v2, v1}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 119
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    check-cast p1, Lfast/dic/dict/presentation/pricing_screen/EmailVerificationState$Error;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/pricing_screen/EmailVerificationState$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showErrorMessageAlert(Ljava/lang/String;Landroid/content/Context;)V

    .line 122
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 102
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method static final onViewCreated$lambda$0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Ljava/lang/Integer;Lfast/dic/dict/models/PlanType;)Lkotlin/Unit;
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->handlePaymentMethods$app(Lfast/dic/dict/models/PlanType;I)V

    .line 136
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onViewCreated$lambda$1(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Ljava/lang/Integer;Lfast/dic/dict/models/PlanType;)Lkotlin/Unit;
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->handlePaymentMethods$app(Lfast/dic/dict/models/PlanType;I)V

    .line 141
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onViewCreated$lambda$2(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Landroid/view/View;)V
    .locals 8

    .line 144
    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->checkIfNotLoginOpenLoginModal()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 147
    :cond_0
    sget-object p1, Lfast/dic/dict/PaymentMethodFragment;->Companion:Lfast/dic/dict/PaymentMethodFragment$Companion;

    .line 148
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v2, Lfast/dic/dict/PaymentMethodFragmentArgs;

    .line 150
    new-instance v3, Lfast/dic/dict/domain/entity/pricing/Plan;

    sget-object v1, Lfast/dic/dict/domain/entity/pricing/Price;->Companion:Lfast/dic/dict/domain/entity/pricing/Price$Companion;

    invoke-virtual {v1}, Lfast/dic/dict/domain/entity/pricing/Price$Companion;->sample()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object v1

    sget v4, Lfast/dic/dict/R$string;->remove_ads_plan_title:I

    invoke-virtual {p0, v4}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v1, v4}, Lfast/dic/dict/domain/entity/pricing/Plan;-><init>(Lfast/dic/dict/domain/entity/pricing/Price;Ljava/lang/String;)V

    .line 151
    sget-object v4, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 149
    invoke-direct/range {v2 .. v7}, Lfast/dic/dict/PaymentMethodFragmentArgs;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    invoke-virtual {p1, v0, v2}, Lfast/dic/dict/PaymentMethodFragment$Companion;->showModal(Landroidx/fragment/app/FragmentActivity;Lfast/dic/dict/PaymentMethodFragmentArgs;)Lfast/dic/dict/PaymentMethodFragment;

    move-result-object p1

    .line 154
    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda12;-><init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/PaymentMethodFragment;->setOnPaidSuccess(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final onViewCreated$lambda$2$0$0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 155
    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->updateModelForFeatureTable()V

    .line 156
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final showActivationAlert()V
    .locals 12

    .line 518
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    instance-of v1, v0, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 520
    :goto_0
    sget-object v3, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    .line 521
    sget v1, Lfast/dic/dict/R$string;->email_confirm:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "getString(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    sget v5, Lfast/dic/dict/R$string;->help_for_sent_verification_link_on_email:I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    :cond_1
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    sget v0, Lfast/dic/dict/R$string;->cancelButtonTitle:I

    invoke-virtual {p0, v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    new-instance v7, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda0;-><init>()V

    .line 525
    sget v0, Lfast/dic/dict/R$string;->send:I

    invoke-virtual {p0, v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 526
    new-instance v9, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda4;

    invoke-direct {v9, p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda4;-><init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    .line 530
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->requireContext()Landroid/content/Context;

    move-result-object v11

    const-string p0, "requireContext(...)"

    invoke-static {v11, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 520
    invoke-virtual/range {v3 .. v11}, Lfast/dic/dict/utils/FDAlertManger;->showAlertWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/Context;)V

    return-void
.end method

.method static final showActivationAlert$lambda$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 524
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static final showActivationAlert$lambda$1(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 527
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->sendEmailVerification()V

    return-void
.end method

.method private final updateModelForFeatureTable()V
    .locals 3

    .line 422
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    if-eqz v0, :cond_0

    .line 424
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 425
    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->planType:Lfast/dic/dict/models/PlanType;

    .line 426
    iget v2, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->selectedMonth:I

    .line 423
    invoke-static {p0, v0, v1, v2}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt;->updateModelForFeatureTable(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/domain/entity/pricing/PricingResponse;Lfast/dic/dict/models/PlanType;I)V

    .line 428
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getFeatureAdapter()Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    move-result-object v0

    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->planType:Lfast/dic/dict/models/PlanType;

    invoke-virtual {v1}, Lfast/dic/dict/models/PlanType;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/adapters/PricingFeatureListAdapter;->setPlanNumber(I)V

    .line 429
    invoke-static {p0}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt;->updateFeatureTableVisibleItems(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    invoke-static {p0, v2, v0, v1, v2}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->handleUIForActivePlan$default(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Ljava/util/List;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getActivePlanDate(Lfast/dic/dict/services/parse/FDParseUser;Lfast/dic/dict/models/PlanType;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    sget-object v0, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 490
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getHasPlan2ExpireDate()Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    .line 491
    :cond_0
    sget-object v0, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    if-ne p2, v0, :cond_1

    .line 492
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getHasPlan3ExpireDate()Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    .line 499
    :cond_2
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 500
    new-instance p2, Lfast/dic/dict/utils/PersianDate;

    invoke-direct {p2, p1}, Lfast/dic/dict/utils/PersianDate;-><init>(Ljava/util/Date;)V

    .line 501
    new-instance p1, Lfast/dic/dict/utils/PersianDateFormat;

    const-string v0, "Y/m/d"

    invoke-direct {p1, v0}, Lfast/dic/dict/utils/PersianDateFormat;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p1, p2}, Lfast/dic/dict/utils/PersianDateFormat;->format(Lfast/dic/dict/utils/PersianDate;)Ljava/lang/String;

    move-result-object p1

    .line 504
    sget-object p2, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->replaceNumbersToFarsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 506
    :cond_3
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy/MM/dd"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    :goto_1
    sget p2, Lfast/dic/dict/R$string;->your_current_professional_plan_until:I

    .line 513
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 511
    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;
    .locals 0

    .line 61
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->binding:Lfast/dic/dict/databinding/FragmentPricingBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFeatureAdapter()Lfast/dic/dict/adapters/PricingFeatureListAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->featureAdapter:Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "featureAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getGooglePlayPrices()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lfast/dic/dict/models/PlanType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->googlePlayPrices:Ljava/util/Map;

    return-object p0
.end method

.method public final getGoogleViewModel()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;
    .locals 0

    .line 63
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->googleViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    return-object p0
.end method

.method public final getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->planAdapter:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "planAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSelectedMonth$app()I
    .locals 0

    .line 56
    iget p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->selectedMonth:I

    return p0
.end method

.method public final getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;
    .locals 0

    .line 62
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    return-object p0
.end method

.method public final handlePaymentMethods$app(Lfast/dic/dict/models/PlanType;I)V
    .locals 5

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->checkIfNotLoginOpenLoginModal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 164
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmailVerified()Z

    move-result v0

    if-nez v0, :cond_3

    .line 171
    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->showActivationAlert()V

    return-void

    .line 175
    :cond_3
    sget-object v0, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    const-string v2, "requireActivity(...)"

    if-ne p1, v0, :cond_5

    .line 176
    sget-object p1, Lfast/dic/dict/PaymentMethodFragment;->Companion:Lfast/dic/dict/PaymentMethodFragment$Companion;

    .line 177
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v2, Lfast/dic/dict/PaymentMethodFragmentArgs;

    .line 179
    iget-object v3, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan3()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v1

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 180
    sget-object v3, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    .line 181
    sget-object v4, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->Companion:Lfast/dic/dict/domain/entity/ProSubscriptionTime$Companion;

    invoke-virtual {v4, p2}, Lfast/dic/dict/domain/entity/ProSubscriptionTime$Companion;->getValue(I)Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 178
    invoke-direct {v2, v1, v3, p2}, Lfast/dic/dict/PaymentMethodFragmentArgs;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)V

    .line 176
    invoke-virtual {p1, v0, v2}, Lfast/dic/dict/PaymentMethodFragment$Companion;->showModal(Landroidx/fragment/app/FragmentActivity;Lfast/dic/dict/PaymentMethodFragmentArgs;)Lfast/dic/dict/PaymentMethodFragment;

    move-result-object p1

    .line 184
    new-instance p2, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda9;-><init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/PaymentMethodFragment;->setOnPaidSuccess(Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 188
    :cond_5
    sget-object v0, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    if-ne p1, v0, :cond_7

    .line 189
    sget-object p1, Lfast/dic/dict/PaymentMethodFragment;->Companion:Lfast/dic/dict/PaymentMethodFragment$Companion;

    .line 190
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance v2, Lfast/dic/dict/PaymentMethodFragmentArgs;

    .line 192
    iget-object v3, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->pricingResponse:Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan2()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v1

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 193
    sget-object v3, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    .line 194
    sget-object v4, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->Companion:Lfast/dic/dict/domain/entity/ProSubscriptionTime$Companion;

    invoke-virtual {v4, p2}, Lfast/dic/dict/domain/entity/ProSubscriptionTime$Companion;->getValue(I)Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 191
    invoke-direct {v2, v1, v3, p2}, Lfast/dic/dict/PaymentMethodFragmentArgs;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)V

    .line 189
    invoke-virtual {p1, v0, v2}, Lfast/dic/dict/PaymentMethodFragment$Companion;->showModal(Landroidx/fragment/app/FragmentActivity;Lfast/dic/dict/PaymentMethodFragmentArgs;)Lfast/dic/dict/PaymentMethodFragment;

    move-result-object p1

    .line 197
    new-instance p2, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda10;-><init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/PaymentMethodFragment;->setOnPaidSuccess(Lkotlin/jvm/functions/Function1;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 72
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentPricingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->setBinding$app(Lfast/dic/dict/databinding/FragmentPricingBinding;)V

    .line 74
    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->observeToUpdatePlanType()V

    .line 75
    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->observeToUpdatePlanMonth()V

    .line 76
    invoke-static {p0}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt;->applyModelForFeatureTable(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    .line 77
    invoke-static {p0}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt;->handleScrollingFeatureStickyView(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    .line 79
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfast/dic/dict/databinding/FragmentPricingBinding;->setPlanAdapter(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;)V

    .line 80
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentPricingBinding;->planRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result p2

    invoke-virtual {p1, p2}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setPersianCurrentLanguage(Z)V

    .line 84
    new-instance p1, Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p2

    iget-object p2, p2, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object p2, p2, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-direct {p1, p2}, Lfast/dic/dict/adapters/PricingFeatureListAdapter;-><init>(I)V

    .line 83
    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->setFeatureAdapter(Lfast/dic/dict/adapters/PricingFeatureListAdapter;)V

    .line 85
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getFeatureAdapter()Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfast/dic/dict/databinding/FragmentPricingBinding;->setFeatureAdapter(Lfast/dic/dict/adapters/PricingFeatureListAdapter;)V

    .line 86
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentPricingBinding;->featuresRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getFeatureAdapter()Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, p2}, Lfast/dic/dict/databinding/FragmentPricingBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 90
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    const-string p2, "login_dialog_dismissed"

    invoke-virtual {p1, p2}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance p3, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda5;-><init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v0, p3}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->getEmailVerificationState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance p3, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda6;-><init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v0, p3}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 124
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentPricingBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 406
    invoke-static {}, Lfast/dic/dict/models/PlanType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 568
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lfast/dic/dict/models/PlanType;

    .line 406
    invoke-virtual {v2}, Lfast/dic/dict/models/PlanType;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lfast/dic/dict/models/PlanType;

    if-nez v1, :cond_2

    sget-object v1, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    .line 405
    :cond_2
    iput-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->planType:Lfast/dic/dict/models/PlanType;

    .line 407
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getSelectedMonth()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->planType:Lfast/dic/dict/models/PlanType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    const/16 v0, 0xc

    :goto_1
    iput v0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->selectedMonth:I

    .line 410
    :cond_4
    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->updateModelForFeatureTable()V

    if-eqz p1, :cond_5

    .line 411
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 413
    :goto_2
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v1

    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object v1, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 414
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v1

    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object v1, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 416
    :cond_6
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v1

    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object v1, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 417
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object p0, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_7
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/pricing_screen/Hilt_PricingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 130
    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->fetchAndShowPricingPlan()V

    .line 132
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object p1

    new-instance p2, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setOnPaymentButtonClicked(Lkotlin/jvm/functions/Function2;)V

    .line 137
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    move-result-object p1

    new-instance p2, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->setOnRenewButtonClicked(Lkotlin/jvm/functions/Function2;)V

    .line 143
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentPricingBinding;->restorePurchaseButton:Landroid/widget/Button;

    new-instance p2, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setBinding$app(Lfast/dic/dict/databinding/FragmentPricingBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->binding:Lfast/dic/dict/databinding/FragmentPricingBinding;

    return-void
.end method

.method public final setFeatureAdapter(Lfast/dic/dict/adapters/PricingFeatureListAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->featureAdapter:Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    return-void
.end method

.method public final setGooglePlayPrices(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lfast/dic/dict/models/PlanType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->googlePlayPrices:Ljava/util/Map;

    return-void
.end method

.method public final setPlanAdapter(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->planAdapter:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    return-void
.end method

.method public final setSelectedMonth$app(I)V
    .locals 0

    .line 56
    iput p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->selectedMonth:I

    return-void
.end method
