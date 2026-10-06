.class public final Lfast/dic/dict/PaymentMethodFragment;
.super Lfast/dic/dict/Hilt_PaymentMethodFragment;
.source "PaymentMethodFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/PaymentMethodFragment$Companion;,
        Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;,
        Lfast/dic/dict/PaymentMethodFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentMethodFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodFragment.kt\nfast/dic/dict/PaymentMethodFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,637:1\n110#2,15:638\n110#2,15:653\n110#2,15:668\n*S KotlinDebug\n*F\n+ 1 PaymentMethodFragment.kt\nfast/dic/dict/PaymentMethodFragment\n*L\n75#1:638,15\n76#1:653,15\n77#1:668,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u0008\u0007\u0018\u0000 d2\u00020\u0001:\u0002deB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010@\u001a\u000207H\u0002J\u0014\u0010A\u001a\u000e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u0002070BH\u0002J$\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020F2\u0008\u0010G\u001a\u0004\u0018\u00010H2\u0008\u0010I\u001a\u0004\u0018\u00010JH\u0016J\u0008\u0010K\u001a\u000201H\u0016J\u0008\u0010L\u001a\u000201H\u0002J\u0008\u0010M\u001a\u000201H\u0002J\u001a\u0010N\u001a\u0002012\u0006\u0010O\u001a\u00020D2\u0008\u0010I\u001a\u0004\u0018\u00010JH\u0016J\u0008\u0010P\u001a\u000201H\u0002J\u0008\u0010Q\u001a\u000201H\u0016J\u0008\u0010]\u001a\u000201H\u0002J\u0006\u0010^\u001a\u00020_J\u0006\u0010`\u001a\u000207J\u0008\u0010a\u001a\u000201H\u0002J\n\u0010b\u001a\u0004\u0018\u00010cH\u0002R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\u00198FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\u001e\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u001d\u001a\u0004\u0008 \u0010!R\u001b\u0010#\u001a\u00020$8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u001d\u001a\u0004\u0008%\u0010&R#\u0010(\u001a\u00020)8\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R&\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020100X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R5\u00106\u001a\u001d\u0012\u0013\u0012\u001107\u00a2\u0006\u000c\u00088\u0012\u0008\u00089\u0012\u0004\u0008\u0008(:\u0012\u0004\u0012\u00020100X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u00103\"\u0004\u0008<\u00105R5\u0010=\u001a\u001d\u0012\u0013\u0012\u001107\u00a2\u0006\u000c\u00088\u0012\u0008\u00089\u0012\u0004\u0008\u0008(:\u0012\u0004\u0012\u00020100X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u00103\"\u0004\u0008?\u00105Rt\u0010R\u001a\\\u0012\u0013\u0012\u001107\u00a2\u0006\u000c\u00088\u0012\u0008\u00089\u0012\u0004\u0008\u0008(T\u0012\u0013\u0012\u001107\u00a2\u0006\u000c\u00088\u0012\u0008\u00089\u0012\u0004\u0008\u0008(U\u0012\u0013\u0012\u00110V\u00a2\u0006\u000c\u00088\u0012\u0008\u00089\u0012\u0004\u0008\u0008(W\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u00088\u0012\u0008\u00089\u0012\u0004\u0008\u0008(X\u0012\u0004\u0012\u0002010SX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\\u00ca\u0001\u0002\u0008g\u00a8\u0006f"
    }
    d2 = {
        "Lfast/dic/dict/PaymentMethodFragment;",
        "Lfast/dic/dict/bases/BaseBottomSheetDialogFragment;",
        "<init>",
        "()V",
        "args",
        "Lfast/dic/dict/PaymentMethodFragmentArgs;",
        "getArgs",
        "()Lfast/dic/dict/PaymentMethodFragmentArgs;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;",
        "getBinding",
        "()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;",
        "setBinding",
        "(Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;)V",
        "selectedPaymentMethod",
        "Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;",
        "getSelectedPaymentMethod$app",
        "()Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;",
        "setSelectedPaymentMethod$app",
        "(Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;)V",
        "googlePlayTimeoutJob",
        "Lkotlinx/coroutines/Job;",
        "googlePlayTimedOut",
        "",
        "viewModel",
        "Lfast/dic/dict/viewmodels/PaymentMethodViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/viewmodels/PaymentMethodViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "googleViewModel",
        "Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;",
        "getGoogleViewModel",
        "()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;",
        "googleViewModel$delegate",
        "bazaarViewModel",
        "Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;",
        "getBazaarViewModel$app",
        "()Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;",
        "bazaarViewModel$delegate",
        "firebaseUserPropertiesManager",
        "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
        "getFirebaseUserPropertiesManager",
        "()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
        "setFirebaseUserPropertiesManager",
        "(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V",
        "Ljavax/inject/Inject;",
        "onPaidSuccess",
        "Lkotlin/Function1;",
        "",
        "getOnPaidSuccess",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnPaidSuccess",
        "(Lkotlin/jvm/functions/Function1;)V",
        "paymentFailedListener",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "error",
        "getPaymentFailedListener",
        "setPaymentFailedListener",
        "paymentConnectionFailedListener",
        "getPaymentConnectionFailedListener",
        "setPaymentConnectionFailedListener",
        "getBuildFlavor",
        "getPriceAndCurrency",
        "Lkotlin/Pair;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "enablePurchaseButtons",
        "disablePurchaseButtons",
        "onViewCreated",
        "view",
        "observePlayStoreEvents",
        "onDestroy",
        "sendPurchaseTokenToServerListener",
        "Lkotlin/Function4;",
        "purchaseToken",
        "productId",
        "Lfast/dic/dict/models/PlanType;",
        "planType",
        "paymentMethod",
        "getSendPurchaseTokenToServerListener",
        "()Lkotlin/jvm/functions/Function4;",
        "setSendPurchaseTokenToServerListener",
        "(Lkotlin/jvm/functions/Function4;)V",
        "showDirectPaymentFallback",
        "directPaymentMethod",
        "Lfast/dic/dict/adapters/PaymentMethod;",
        "getProductId",
        "purchaseDirectly",
        "getUser",
        "Lfast/dic/dict/services/parse/FDParseUser;",
        "Companion",
        "ValidationPurchaseResponseCallback",
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
.field public static final Companion:Lfast/dic/dict/PaymentMethodFragment$Companion;


# instance fields
.field private final bazaarViewModel$delegate:Lkotlin/Lazy;

.field public binding:Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

.field public firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private googlePlayTimedOut:Z

.field private googlePlayTimeoutJob:Lkotlinx/coroutines/Job;

.field private final googleViewModel$delegate:Lkotlin/Lazy;

.field private onPaidSuccess:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private paymentConnectionFailedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private paymentFailedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPaymentMethod:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

.field private sendPurchaseTokenToServerListener:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lfast/dic/dict/models/PlanType;",
            "-",
            "Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$DIetuzqGRqPrd-79TAL3FwOGgVY(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/adapters/PaymentMethod;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/PaymentMethodFragment;->onCreateView$lambda$0$0(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/adapters/PaymentMethod;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/PaymentMethodFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/PaymentMethodFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/PaymentMethodFragment;->Companion:Lfast/dic/dict/PaymentMethodFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 61
    invoke-direct {p0}, Lfast/dic/dict/Hilt_PaymentMethodFragment;-><init>()V

    .line 75
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 639
    new-instance v1, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 643
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 644
    const-class v2, Lfast/dic/dict/viewmodels/PaymentMethodViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v6, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v6, v0, v1}, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v6}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 75
    iput-object v1, p0, Lfast/dic/dict/PaymentMethodFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 654
    new-instance v1, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$6;

    invoke-direct {v1, v0}, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$6;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 658
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$7;

    invoke-direct {v3, v1}, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$7;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 659
    const-class v2, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$8;

    invoke-direct {v3, v1}, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$8;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$9;

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v6, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$10;

    invoke-direct {v6, v0, v1}, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$10;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v6}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 76
    iput-object v1, p0, Lfast/dic/dict/PaymentMethodFragment;->googleViewModel$delegate:Lkotlin/Lazy;

    .line 669
    new-instance v1, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$11;

    invoke-direct {v1, v0}, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$11;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 673
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$12;

    invoke-direct {v3, v1}, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$12;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 674
    const-class v2, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$13;

    invoke-direct {v3, v1}, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$13;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$14;

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$14;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$15;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/PaymentMethodFragment$special$$inlined$viewModels$default$15;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 77
    iput-object v0, p0, Lfast/dic/dict/PaymentMethodFragment;->bazaarViewModel$delegate:Lkotlin/Lazy;

    .line 82
    new-instance v0, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/PaymentMethodFragment;->onPaidSuccess:Lkotlin/jvm/functions/Function1;

    .line 83
    new-instance v0, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/PaymentMethodFragment;->paymentFailedListener:Lkotlin/jvm/functions/Function1;

    .line 84
    new-instance v0, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/PaymentMethodFragment;->paymentConnectionFailedListener:Lkotlin/jvm/functions/Function1;

    .line 400
    new-instance v0, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/PaymentMethodFragment;)V

    iput-object v0, p0, Lfast/dic/dict/PaymentMethodFragment;->sendPurchaseTokenToServerListener:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method public static final synthetic access$getBuildFlavor(Lfast/dic/dict/PaymentMethodFragment;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBuildFlavor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getGooglePlayTimedOut$p(Lfast/dic/dict/PaymentMethodFragment;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lfast/dic/dict/PaymentMethodFragment;->googlePlayTimedOut:Z

    return p0
.end method

.method public static final synthetic access$getGooglePlayTimeoutJob$p(Lfast/dic/dict/PaymentMethodFragment;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 61
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment;->googlePlayTimeoutJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$getPriceAndCurrency(Lfast/dic/dict/PaymentMethodFragment;)Lkotlin/Pair;
    .locals 0

    .line 61
    invoke-direct {p0}, Lfast/dic/dict/PaymentMethodFragment;->getPriceAndCurrency()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setGooglePlayTimedOut$p(Lfast/dic/dict/PaymentMethodFragment;Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lfast/dic/dict/PaymentMethodFragment;->googlePlayTimedOut:Z

    return-void
.end method

.method public static final synthetic access$showDirectPaymentFallback(Lfast/dic/dict/PaymentMethodFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lfast/dic/dict/PaymentMethodFragment;->showDirectPaymentFallback()V

    return-void
.end method

.method private final disablePurchaseButtons()V
    .locals 2

    .line 175
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->purchaseButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 176
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->restoreButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private final enablePurchaseButtons()V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->purchaseButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 171
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->restoreButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private final getBuildFlavor()Ljava/lang/String;
    .locals 0

    .line 87
    const-string p0, "googleflavor"

    return-object p0
.end method

.method private final getPriceAndCurrency()Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->ONE_MONTH:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 92
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlan()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lfast/dic/dict/domain/entity/pricing/Price;->get1()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->SIX_MONTHS:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    if-ne v0, v1, :cond_2

    .line 94
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlan()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lfast/dic/dict/domain/entity/pricing/Price;->get6()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlan()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lfast/dic/dict/domain/entity/pricing/Price;->get12()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    .line 102
    move-object v4, p0

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v5, "\u062a\u0648\u0645\u0627\u0646"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-ne v4, v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_4

    move-object v4, p0

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v5, "\u0631\u06cc\u0627\u0644"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-ne v4, v0, :cond_4

    :goto_1
    const-string v0, "IRR"

    goto/16 :goto_b

    .line 104
    :cond_4
    const-string v4, "USD"

    if-eqz p0, :cond_5

    move-object v5, p0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "$"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-ne v5, v0, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p0, :cond_7

    move-object v5, p0

    check-cast v5, Ljava/lang/CharSequence;

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-ne v5, v0, :cond_7

    :cond_6
    :goto_2
    move-object v0, v4

    goto/16 :goto_b

    .line 106
    :cond_7
    const-string v5, "EUR"

    if-eqz p0, :cond_8

    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v7, "\u20ac"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_8

    goto :goto_3

    :cond_8
    if-eqz p0, :cond_9

    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_9

    :goto_3
    move-object v0, v5

    goto/16 :goto_b

    .line 108
    :cond_9
    const-string v5, "GBP"

    if-eqz p0, :cond_a

    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v7, "\u00a3"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_a

    goto :goto_4

    :cond_a
    if-eqz p0, :cond_b

    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_b

    :goto_4
    goto :goto_3

    .line 110
    :cond_b
    const-string v5, "JPY"

    const-string/jumbo v6, "\u00a5"

    if-eqz p0, :cond_c

    move-object v7, p0

    check-cast v7, Ljava/lang/CharSequence;

    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v7, v8, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-ne v7, v0, :cond_c

    goto :goto_5

    :cond_c
    if-eqz p0, :cond_d

    move-object v7, p0

    check-cast v7, Ljava/lang/CharSequence;

    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v7, v8, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-ne v7, v0, :cond_d

    :goto_5
    goto :goto_3

    .line 112
    :cond_d
    const-string v5, "CNY"

    if-eqz p0, :cond_e

    move-object v7, p0

    check-cast v7, Ljava/lang/CharSequence;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v7, v6, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_e

    goto :goto_6

    :cond_e
    if-eqz p0, :cond_f

    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_f

    goto :goto_6

    :cond_f
    if-eqz p0, :cond_10

    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v7, "\u5143"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_10

    :goto_6
    goto :goto_3

    .line 114
    :cond_10
    const-string v5, "INR"

    if-eqz p0, :cond_11

    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    const-string/jumbo v7, "\u20b9"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_11

    goto :goto_7

    :cond_11
    if-eqz p0, :cond_12

    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_12

    :goto_7
    goto/16 :goto_3

    .line 116
    :cond_12
    const-string v5, "CAD"

    if-eqz p0, :cond_13

    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_13

    goto :goto_8

    :cond_13
    if-eqz p0, :cond_14

    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "C$"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_14

    :goto_8
    goto/16 :goto_3

    .line 118
    :cond_14
    const-string v5, "AUD"

    if-eqz p0, :cond_15

    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_15

    goto :goto_9

    :cond_15
    if-eqz p0, :cond_16

    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "A$"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_16

    :goto_9
    goto/16 :goto_3

    .line 120
    :cond_16
    const-string v5, "CHF"

    if-eqz p0, :cond_17

    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_17

    goto :goto_a

    :cond_17
    if-eqz p0, :cond_6

    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "Fr"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_6

    :goto_a
    goto/16 :goto_3

    .line 125
    :goto_b
    new-instance v1, Lkotlin/Pair;

    if-nez p0, :cond_18

    const-string p0, "0"

    :cond_18
    invoke-direct {v1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final getUser()Lfast/dic/dict/services/parse/FDParseUser;
    .locals 2

    .line 507
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p0

    instance-of v0, p0, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 509
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    return-object p0
.end method

.method private final observePlayStoreEvents()V
    .locals 9

    .line 226
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getGoogleViewModel()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->getGooglePlayState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;-><init>(Lfast/dic/dict/PaymentMethodFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 371
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    .line 373
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;

    invoke-direct {v0, p0, v2}, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;-><init>(Lfast/dic/dict/PaymentMethodFragment;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/PaymentMethodFragment;->googlePlayTimeoutJob:Lkotlinx/coroutines/Job;

    .line 391
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getGoogleViewModel()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->initializeGooglePlayConnection()V

    return-void
.end method

.method private static final onCreateView$lambda$0$0(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/adapters/PaymentMethod;)Lkotlin/Unit;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Lfast/dic/dict/adapters/PaymentMethod;->getSelected()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 140
    invoke-direct {p0}, Lfast/dic/dict/PaymentMethodFragment;->enablePurchaseButtons()V

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/PaymentMethodFragment;->disablePurchaseButtons()V

    :goto_0
    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p1}, Lfast/dic/dict/adapters/PaymentMethod;->getSelected()Z

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lfast/dic/dict/adapters/PaymentMethod;->getPaymentMethod()Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->Shetab:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    if-ne v0, v1, :cond_1

    .line 146
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->restoreButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 149
    invoke-virtual {p1}, Lfast/dic/dict/adapters/PaymentMethod;->getPaymentMethod()Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lfast/dic/dict/PaymentMethodFragment;->selectedPaymentMethod:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    .line 150
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/PaymentMethodFragment;Landroid/view/View;)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->dismiss()V

    return-void
.end method

.method static final onPaidSuccess$lambda$0(Z)Lkotlin/Unit;
    .locals 0

    .line 82
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onViewCreated$lambda$0(Lfast/dic/dict/PaymentMethodFragment;Landroid/view/View;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment;->selectedPaymentMethod:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lfast/dic/dict/PaymentMethodFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    return-void

    .line 200
    :cond_1
    invoke-static {p0}, Lfast/dic/dict/utils/GooglePaymentMethodExtensionKt;->purchaseFromGooglePlay(Lfast/dic/dict/PaymentMethodFragment;)V

    return-void

    .line 196
    :cond_2
    invoke-static {p0}, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt;->purchaseFromBazaar(Lfast/dic/dict/PaymentMethodFragment;)V

    return-void

    .line 192
    :cond_3
    invoke-direct {p0}, Lfast/dic/dict/PaymentMethodFragment;->purchaseDirectly()V

    return-void
.end method

.method static final onViewCreated$lambda$1(Lfast/dic/dict/PaymentMethodFragment;Landroid/view/View;)V
    .locals 1

    .line 207
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment;->selectedPaymentMethod:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lfast/dic/dict/PaymentMethodFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    return-void

    .line 217
    :cond_1
    invoke-static {p0}, Lfast/dic/dict/utils/GooglePaymentMethodExtensionKt;->restorePurchaseFromGooglePlay(Lfast/dic/dict/PaymentMethodFragment;)V

    return-void

    .line 213
    :cond_2
    invoke-static {p0}, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt;->purchaseFromBazaar(Lfast/dic/dict/PaymentMethodFragment;)V

    return-void

    .line 209
    :cond_3
    invoke-direct {p0}, Lfast/dic/dict/PaymentMethodFragment;->purchaseDirectly()V

    return-void
.end method

.method static final paymentConnectionFailedListener$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final paymentFailedListener$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final purchaseDirectly()V
    .locals 11

    .line 480
    invoke-direct {p0}, Lfast/dic/dict/PaymentMethodFragment;->getUser()Lfast/dic/dict/services/parse/FDParseUser;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 481
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->getValue()I

    move-result v1

    .line 482
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v2

    sget-object v3, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    if-ne v2, v3, :cond_1

    const-string v2, "plan1"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v2

    sget-object v3, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    if-ne v2, v3, :cond_2

    const-string v2, "plan2"

    goto :goto_0

    :cond_2
    const-string v2, "plan3"

    .line 485
    :goto_0
    invoke-direct {p0}, Lfast/dic/dict/PaymentMethodFragment;->getPriceAndCurrency()Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .line 486
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v5

    .line 487
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v3

    invoke-virtual {v3}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v3

    invoke-virtual {v3}, Lfast/dic/dict/models/PlanType;->name()Ljava/lang/String;

    move-result-object v6

    .line 490
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 491
    invoke-direct {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBuildFlavor()Ljava/lang/String;

    move-result-object v10

    .line 486
    invoke-virtual/range {v5 .. v10}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logDirectPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 499
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v4, "getEmail(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "toLowerCase(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lfast/dic/dict/utils/StringExtKt;->toUrlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://fastdic.com/api/v2/purchase/android?sessionToken="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&plan="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 501
    invoke-virtual {p0, v1}, Lfast/dic/dict/PaymentMethodFragment;->startActivity(Landroid/content/Intent;)V

    .line 503
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->dismiss()V

    return-void
.end method

.method static final sendPurchaseTokenToServerListener$lambda$0(Lfast/dic/dict/PaymentMethodFragment;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;)Lkotlin/Unit;
    .locals 9

    const-string v0, "purchaseToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plan"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethod"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const-string v1, "loadingSpinner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v7, 0x0

    invoke-static {v0, v7, v8, v1, v2}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 403
    sget-object v0, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->CafeBazaar:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    const-string v1, "requireContext(...)"

    if-ne p4, v0, :cond_0

    .line 404
    new-instance v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;-><init>(Lfast/dic/dict/PaymentMethodFragment;Landroid/content/Context;Ljava/lang/String;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Ljava/lang/String;Lfast/dic/dict/models/PlanType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 406
    :cond_0
    new-instance v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;-><init>(Lfast/dic/dict/PaymentMethodFragment;Landroid/content/Context;Ljava/lang/String;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Ljava/lang/String;Lfast/dic/dict/models/PlanType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 409
    :goto_0
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getViewModel()Lfast/dic/dict/viewmodels/PaymentMethodViewModel;

    move-result-object v1

    invoke-virtual {v1, p1, p4, v0}, Lfast/dic/dict/viewmodels/PaymentMethodViewModel;->hideAd(Ljava/lang/String;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;)V

    .line 410
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final showDirectPaymentFallback()V
    .locals 5

    .line 413
    iget-object v0, p0, Lfast/dic/dict/PaymentMethodFragment;->googlePlayTimeoutJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 414
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const-string v3, "loadingSpinner"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 416
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->getDataAdapter()Lfast/dic/dict/adapters/PaymentMethodAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfast/dic/dict/adapters/PaymentMethodAdapter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_2

    goto :goto_1

    .line 420
    :cond_2
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v0

    sget-object v2, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getViewModel()Lfast/dic/dict/viewmodels/PaymentMethodViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/viewmodels/PaymentMethodViewModel;->isCurrentLanguagePersian()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 424
    :cond_3
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->getDataAdapter()Lfast/dic/dict/adapters/PaymentMethodAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 426
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->directPaymentMethod()Lfast/dic/dict/adapters/PaymentMethod;

    move-result-object p0

    .line 427
    invoke-virtual {p0, v1}, Lfast/dic/dict/adapters/PaymentMethod;->setSelected(Z)V

    .line 425
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 424
    invoke-virtual {v0, p0}, Lfast/dic/dict/adapters/PaymentMethodAdapter;->submitList(Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final directPaymentMethod()Lfast/dic/dict/adapters/PaymentMethod;
    .locals 12

    .line 434
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->ONE_MONTH:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 435
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlan()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lfast/dic/dict/domain/entity/pricing/Price;->get1()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->SIX_MONTHS:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    if-ne v0, v1, :cond_1

    .line 437
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlan()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lfast/dic/dict/domain/entity/pricing/Price;->get6()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 439
    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlan()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lfast/dic/dict/domain/entity/pricing/Price;->get12()Ljava/lang/String;

    move-result-object v2

    .line 442
    :cond_2
    :goto_0
    new-instance v3, Lfast/dic/dict/adapters/PaymentMethod;

    .line 443
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v4

    if-nez v2, :cond_3

    .line 444
    const-string v2, "---"

    :cond_3
    move-object v5, v2

    .line 445
    sget v0, Lfast/dic/dict/R$string;->direct_purchase_from_the_bank:I

    invoke-virtual {p0, v0}, Lfast/dic/dict/PaymentMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "getString(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    .line 448
    sget v0, Lfast/dic/dict/R$drawable;->app_logo_sp:I

    .line 446
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 450
    sget-object v8, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->Shetab:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    const/16 v10, 0x20

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 442
    invoke-direct/range {v3 .. v11}, Lfast/dic/dict/adapters/PaymentMethod;-><init>(Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method public final getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;
    .locals 2

    .line 69
    sget-object v0, Lfast/dic/dict/PaymentMethodFragmentArgs;->Companion:Lfast/dic/dict/PaymentMethodFragmentArgs$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "requireArguments(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lfast/dic/dict/PaymentMethodFragmentArgs$Companion;->fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public final getBazaarViewModel$app()Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;
    .locals 0

    .line 77
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment;->bazaarViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    return-object p0
.end method

.method public final getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;
    .locals 0

    .line 70
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment;->binding:Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;
    .locals 0

    .line 80
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "firebaseUserPropertiesManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getGoogleViewModel()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;
    .locals 0

    .line 76
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment;->googleViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    return-object p0
.end method

.method public final getOnPaidSuccess()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment;->onPaidSuccess:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getPaymentConnectionFailedListener()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment;->paymentConnectionFailedListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getPaymentFailedListener()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment;->paymentFailedListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 2

    .line 455
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    if-ne v0, v1, :cond_0

    .line 456
    const-string p0, "fastdic.dict.fullversion"

    return-object p0

    .line 457
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    if-ne v0, v1, :cond_3

    .line 458
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->ONE_YEAR:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    if-ne v0, v1, :cond_1

    .line 459
    const-string p0, "fastdic.1year.pro"

    return-object p0

    .line 460
    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object p0

    sget-object v0, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->SIX_MONTHS:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    if-ne p0, v0, :cond_2

    .line 461
    const-string p0, "fastdic.6months.pro"

    return-object p0

    .line 464
    :cond_2
    const-string p0, "fastdic.1month.pro"

    return-object p0

    .line 467
    :cond_3
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->ONE_YEAR:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    if-ne v0, v1, :cond_4

    .line 468
    const-string p0, "fastdic.1year.ai"

    return-object p0

    .line 469
    :cond_4
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object p0

    sget-object v0, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->SIX_MONTHS:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    if-ne p0, v0, :cond_5

    .line 470
    const-string p0, "fastdic.6months.ai"

    return-object p0

    .line 473
    :cond_5
    const-string p0, "fastdic.1month.ai"

    return-object p0
.end method

.method public final getSelectedPaymentMethod$app()Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;
    .locals 0

    .line 71
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment;->selectedPaymentMethod:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    return-object p0
.end method

.method public final getSendPurchaseTokenToServerListener()Lkotlin/jvm/functions/Function4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lfast/dic/dict/models/PlanType;",
            "Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 399
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment;->sendPurchaseTokenToServerListener:Lkotlin/jvm/functions/Function4;

    return-object p0
.end method

.method public final getViewModel()Lfast/dic/dict/viewmodels/PaymentMethodViewModel;
    .locals 0

    .line 75
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 132
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lfast/dic/dict/PaymentMethodFragment;->setBinding(Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;)V

    .line 134
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, p2}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 135
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p3}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->setDecorator(Ljava/lang/Boolean;)V

    .line 137
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p1

    new-instance p3, Lfast/dic/dict/adapters/PaymentMethodAdapter;

    invoke-direct {p3}, Lfast/dic/dict/adapters/PaymentMethodAdapter;-><init>()V

    .line 138
    new-instance v0, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda6;-><init>(Lfast/dic/dict/PaymentMethodFragment;)V

    invoke-virtual {p3, v0}, Lfast/dic/dict/adapters/PaymentMethodAdapter;->setOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 137
    invoke-virtual {p1, p3}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->setDataAdapter(Lfast/dic/dict/adapters/PaymentMethodAdapter;)V

    .line 153
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object p1

    sget-object p3, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    if-ne p1, p3, :cond_0

    .line 154
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->purchaseButton:Landroid/widget/Button;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->backButton:Landroid/widget/ImageButton;

    new-instance p3, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0}, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda7;-><init>(Lfast/dic/dict/PaymentMethodFragment;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const-string p3, "loadingSpinner"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-wide/16 v0, 0x0

    const/4 p3, 0x0

    invoke-static {p1, v0, v1, p2, p3}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 160
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 395
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBazaarViewModel$app()Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->disconnectCafeBazaar()V

    .line 396
    invoke-super {p0}, Lfast/dic/dict/Hilt_PaymentMethodFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 164
    invoke-super {p0}, Lfast/dic/dict/Hilt_PaymentMethodFragment;->onDestroyView()V

    .line 166
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBazaarViewModel$app()Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->destroyBazaarConnection()V

    .line 167
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getGoogleViewModel()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->destroyGoogleConnection()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-super {p0, p1, p2}, Lfast/dic/dict/Hilt_PaymentMethodFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 183
    invoke-static {p0}, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt;->purchaseFromBazaar(Lfast/dic/dict/PaymentMethodFragment;)V

    .line 185
    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isPlayStore()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    invoke-direct {p0}, Lfast/dic/dict/PaymentMethodFragment;->observePlayStoreEvents()V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->purchaseButton:Landroid/widget/Button;

    new-instance p2, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda4;-><init>(Lfast/dic/dict/PaymentMethodFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->restoreButton:Landroid/widget/Button;

    new-instance p2, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda5;-><init>(Lfast/dic/dict/PaymentMethodFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setBinding(Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lfast/dic/dict/PaymentMethodFragment;->binding:Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    return-void
.end method

.method public final setFirebaseUserPropertiesManager(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lfast/dic/dict/PaymentMethodFragment;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    return-void
.end method

.method public final setOnPaidSuccess(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lfast/dic/dict/PaymentMethodFragment;->onPaidSuccess:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setPaymentConnectionFailedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lfast/dic/dict/PaymentMethodFragment;->paymentConnectionFailedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setPaymentFailedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lfast/dic/dict/PaymentMethodFragment;->paymentFailedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSelectedPaymentMethod$app(Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lfast/dic/dict/PaymentMethodFragment;->selectedPaymentMethod:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    return-void
.end method

.method public final setSendPurchaseTokenToServerListener(Lkotlin/jvm/functions/Function4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lfast/dic/dict/models/PlanType;",
            "-",
            "Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    iput-object p1, p0, Lfast/dic/dict/PaymentMethodFragment;->sendPurchaseTokenToServerListener:Lkotlin/jvm/functions/Function4;

    return-void
.end method
