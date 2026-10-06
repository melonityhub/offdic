.class public final Lfast/dic/dict/presentation/profile_screen/ProfileFragment;
.super Lfast/dic/dict/presentation/profile_screen/Hilt_ProfileFragment;
.source "ProfileFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileFragment.kt\nfast/dic/dict/presentation/profile_screen/ProfileFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,295:1\n110#2,15:296\n110#2,15:311\n1#3:326\n*S KotlinDebug\n*F\n+ 1 ProfileFragment.kt\nfast/dic/dict/presentation/profile_screen/ProfileFragment\n*L\n39#1:296,15\n40#1:311,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u001a\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00192\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J$\u0010#\u001a\u00020!2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0003b\u0010\u0008&\u0012\u000c\u0008\'\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008((J\u0008\u0010)\u001a\u00020!H\u0002J\u0010\u0010*\u001a\u00020!2\u0006\u0010+\u001a\u00020%H\u0002J\u0008\u0010,\u001a\u00020!H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u000fR#\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\u0017\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00ca\u0001\u0002\u0008.\u00a8\u0006-"
    }
    d2 = {
        "Lfast/dic/dict/presentation/profile_screen/ProfileFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "<init>",
        "()V",
        "binding",
        "Lfast/dic/dict/databinding/FragmentProfileBinding;",
        "syncViewModel",
        "Lfast/dic/dict/presentation/common/SyncViewModel;",
        "getSyncViewModel",
        "()Lfast/dic/dict/presentation/common/SyncViewModel;",
        "syncViewModel$delegate",
        "Lkotlin/Lazy;",
        "viewModel",
        "Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;",
        "getViewModel",
        "()Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;",
        "viewModel$delegate",
        "firebaseUserPropertiesManager",
        "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
        "getFirebaseUserPropertiesManager",
        "()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
        "setFirebaseUserPropertiesManager",
        "(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V",
        "Ljavax/inject/Inject;",
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
        "changeUI",
        "user",
        "Lfast/dic/dict/services/parse/FDParseUser;",
        "Landroid/annotation/SuppressLint;",
        "value",
        "SimpleDateFormat",
        "deleteAccountProcess",
        "sentChangePasswordLinkByConfirmAlert",
        "currentUser",
        "showActivationAlert",
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
.field private binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

.field public firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final syncViewModel$delegate:Lkotlin/Lazy;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$NPmO5BJsgIgpfKhPiaQIIRFz8n8(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Lfast/dic/dict/services/parse/FDParseUser;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->sentChangePasswordLinkByConfirmAlert$lambda$0$1(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Lfast/dic/dict/services/parse/FDParseUser;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$b_FtLLBazNPECr9eb88qWypYipI(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Ljava/lang/String;Lcom/parse/ParseException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->onViewCreated$lambda$0$0$0(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Ljava/lang/String;Lcom/parse/ParseException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fRH2iNUV--UQYbkhOfdEYu2TNEc(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->sentChangePasswordLinkByConfirmAlert$lambda$0$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qPESrSwzRA3yDc-6wmPzh_5ULCY(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->onViewCreated$lambda$0$0(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sR4ajKOjlF1Y254GMOqztmwK9LM(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->deleteAccountProcess$lambda$0$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uvfUiErv5i0pDyUtc_n9mZPANns(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->deleteAccountProcess$lambda$0$1(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 35
    invoke-direct {p0}, Lfast/dic/dict/presentation/profile_screen/Hilt_ProfileFragment;-><init>()V

    .line 39
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 297
    new-instance v1, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 301
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 302
    const-class v2, Lfast/dic/dict/presentation/common/SyncViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v6, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v6, v0, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v6}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 39
    iput-object v1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->syncViewModel$delegate:Lkotlin/Lazy;

    .line 312
    new-instance v1, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$6;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$6;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 316
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$7;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$7;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 317
    const-class v2, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$8;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$8;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$9;

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$10;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$special$$inlined$viewModels$default$10;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final changeUI(Lfast/dic/dict/services/parse/FDParseUser;)V
    .locals 5

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 207
    :cond_0
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->hasFreePlan()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    invoke-direct {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getViewModel()Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->hideBannerAds()V

    .line 211
    :cond_1
    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentProfileBinding;->activeEmailButtonOrSubscriptions:Landroid/widget/Button;

    const-string v3, "activeEmailButtonOrSubscriptions"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    if-nez v3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    iget-object v3, v3, Lfast/dic/dict/databinding/FragmentProfileBinding;->userEmailLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v3, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    if-nez v3, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    iget-object v3, v3, Lfast/dic/dict/databinding/FragmentProfileBinding;->userFullNameLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getName()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getEmailVerified()Z

    move-result v3

    if-nez v3, :cond_5

    .line 216
    sget v3, Lfast/dic/dict/R$string;->active_your_email_address:I

    invoke-virtual {p0, v3}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_0

    .line 217
    :cond_5
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2Or3()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 218
    sget v3, Lfast/dic/dict/R$string;->subscription_renewal:I

    invoke-virtual {p0, v3}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_0

    .line 220
    :cond_6
    sget v3, Lfast/dic/dict/R$string;->remove_ads_and_by_pro_subscription:I

    invoke-virtual {p0, v3}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 215
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentProfileBinding;->emailNotActivatedLabel:Landroid/widget/TextView;

    .line 223
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getEmailVerified()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    const/16 v3, 0x8

    .line 222
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentProfileBinding;->remainingDateLabel:Landroid/widget/TextView;

    const-string v1, "remainingDateLabel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2Or3()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 227
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan3InView()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 228
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getHasPlan3ExpireDate()Ljava/util/Date;

    move-result-object p1

    .line 230
    invoke-direct {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getViewModel()Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    move-result-object v1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    invoke-virtual {v1, p0, v2, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->getStringBasedOnPlan(Landroid/content/Context;Lfast/dic/dict/models/PlanType;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 229
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 232
    :cond_a
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getHasPlan2ExpireDate()Ljava/util/Date;

    move-result-object p1

    .line 234
    invoke-direct {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getViewModel()Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    move-result-object v1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    invoke-virtual {v1, p0, v2, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->getStringBasedOnPlan(Landroid/content/Context;Lfast/dic/dict/models/PlanType;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 233
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 236
    :cond_b
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getHasPlan1()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 237
    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_c

    sget p1, Lfast/dic/dict/R$string;->ads_are_removed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_c
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_2
    return-void
.end method

.method private final deleteAccountProcess()V
    .locals 9

    .line 243
    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 244
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    .line 245
    sget v1, Lfast/dic/dict/R$string;->delete_account_text:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    sget v3, Lfast/dic/dict/R$string;->DeleteAccountConfirmationMessage:I

    invoke-virtual {p0, v3}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    sget v4, Lfast/dic/dict/R$string;->cancelButtonTitle:I

    invoke-virtual {p0, v4}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    move-object v3, v4

    .line 248
    new-instance v4, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda13;

    invoke-direct {v4}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda13;-><init>()V

    .line 249
    sget v5, Lfast/dic/dict/R$string;->DeleteAccountConfirmationRemoveAccountButton:I

    invoke-virtual {p0, v5}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 250
    new-instance v6, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda14;

    invoke-direct {v6, p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda14;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)V

    const/4 v7, 0x0

    .line 244
    invoke-virtual/range {v0 .. v8}, Lfast/dic/dict/utils/FDAlertManger;->showAlertWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static final deleteAccountProcess$lambda$0$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 248
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final deleteAccountProcess$lambda$0$1(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 251
    invoke-direct {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getViewModel()Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->deleteAccount()V

    return-void
.end method

.method private final getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->syncViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/common/SyncViewModel;

    return-object p0
.end method

.method private final getViewModel()Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;
    .locals 0

    .line 40
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    return-object p0
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Landroid/view/View;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getViewModel()Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->getUser()Lfast/dic/dict/services/parse/FDParseUser;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getEmailVerified()Z

    move-result p1

    if-nez p1, :cond_0

    .line 59
    invoke-direct {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->showActivationAlert()V

    return-void

    .line 61
    :cond_0
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->newPricingFragment:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->deleteAccountProcess()V

    return-void
.end method

.method static final onCreateView$lambda$2(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Landroid/view/View;)V
    .locals 2

    .line 70
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    .line 71
    sget p1, Lfast/dic/dict/R$id;->updateProfileFragment:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 70
    invoke-static {p0, p1, v0, v1, v0}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method static final onCreateView$lambda$3(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Landroid/view/View;)V
    .locals 2

    .line 76
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->logoutFragment:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method static final onCreateView$lambda$4(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Landroid/view/View;)V
    .locals 2

    .line 80
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->transactionHistoryFragment:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method static final onCreateView$lambda$5(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p1

    instance-of v0, p1, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v0, :cond_0

    check-cast p1, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 85
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->sentChangePasswordLinkByConfirmAlert(Lfast/dic/dict/services/parse/FDParseUser;)V

    :cond_1
    return-void
.end method

.method static final onCreateView$lambda$6(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    const/4 v0, 0x1

    .line 93
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 94
    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lfast/dic/dict/activities/MainActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lfast/dic/dict/activities/MainActivity;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfast/dic/dict/activities/MainActivity;->checkAndUpdateTabbarMenuAfterLogin()V

    .line 95
    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lfast/dic/dict/activities/MainActivity;

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Lfast/dic/dict/activities/MainActivity;

    :cond_2
    if-eqz v1, :cond_3

    sget p1, Lfast/dic/dict/R$id;->loginOnboardingFragment:I

    invoke-virtual {v1, p1}, Lfast/dic/dict/activities/MainActivity;->selectTab(I)V

    .line 96
    :cond_3
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->profileFragment:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroidx/navigation/NavController;->popBackStack(IZZ)Z

    .line 98
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreateView$lambda$7(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Lfast/dic/dict/presentation/profile_screen/EmailVerificationState;)Lkotlin/Unit;
    .locals 7

    .line 103
    instance-of v0, p1, Lfast/dic/dict/presentation/profile_screen/EmailVerificationState$Loading;

    const-string v1, "binding"

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const-string v5, "loadingSpinner"

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 104
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    if-nez p0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v6

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentProfileBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_1
    instance-of v0, p1, Lfast/dic/dict/presentation/profile_screen/EmailVerificationState$Success;

    if-eqz v0, :cond_3

    .line 108
    iget-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentProfileBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 109
    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    .line 110
    sget v0, Lfast/dic/dict/R$string;->email_confirm:I

    invoke-virtual {p0, v0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget v2, Lfast/dic/dict/R$string;->sent_email_confirm_please_check_mail_box:I

    invoke-virtual {p0, v2}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget v3, Lfast/dic/dict/R$string;->close:I

    invoke-virtual {p0, v3}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    .line 109
    invoke-virtual {p1, v0, v2, v3, p0}, Lfast/dic/dict/utils/FDAlertManger;->showAlertWithOutForeCloseApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 117
    :cond_3
    instance-of v0, p1, Lfast/dic/dict/presentation/profile_screen/EmailVerificationState$Error;

    if-eqz v0, :cond_5

    .line 118
    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_4
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentProfileBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 119
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    check-cast p1, Lfast/dic/dict/presentation/profile_screen/EmailVerificationState$Error;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/profile_screen/EmailVerificationState$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showErrorMessageAlert(Ljava/lang/String;Landroid/content/Context;)V

    .line 122
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 102
    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method static final onViewCreated$lambda$0(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Lfast/dic/dict/presentation/profile_screen/ProfileUIState;)Lkotlin/Unit;
    .locals 4

    .line 132
    instance-of v0, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 133
    check-cast p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->getParseObject()Lcom/parse/ParseObject;

    move-result-object p1

    instance-of v0, p1, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lfast/dic/dict/services/parse/FDParseUser;

    :cond_0
    invoke-direct {p0, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->changeUI(Lfast/dic/dict/services/parse/FDParseUser;)V

    goto/16 :goto_4

    .line 136
    :cond_1
    instance-of v0, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;

    if-eqz v0, :cond_3

    .line 137
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    .line 138
    check-cast p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Unknown error"

    .line 139
    :cond_2
    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 137
    invoke-virtual {v0, p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showErrorMessageAlert(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_4

    .line 143
    :cond_3
    instance-of v0, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordRequested;

    const-string v2, "getString(...)"

    if-eqz v0, :cond_4

    .line 144
    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    .line 145
    sget v0, Lfast/dic/dict/R$string;->change_password:I

    invoke-virtual {p0, v0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget v1, Lfast/dic/dict/R$string;->sent_an_email_to_change_password:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget v3, Lfast/dic/dict/R$string;->close:I

    invoke-virtual {p0, v3}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 144
    invoke-virtual {p1, v0, v1, v3, p0}, Lfast/dic/dict/utils/FDAlertManger;->showAlertWithOutForeCloseApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_4

    .line 152
    :cond_4
    instance-of v0, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;

    const-string v3, ""

    if-eqz v0, :cond_7

    .line 154
    sget-object v0, Lfast/dic/dict/services/parse/ParseError;->Companion:Lfast/dic/dict/services/parse/ParseError$Companion;

    check-cast p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move-object v3, v1

    :goto_0
    invoke-virtual {p1}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->getCode()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v3, p1, v1}, Lfast/dic/dict/services/parse/ParseError$Companion;->getRightMessage(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 155
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showErrorMessageAlert(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_4

    .line 158
    :cond_7
    instance-of v0, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$NoInternetError;

    if-eqz v0, :cond_8

    .line 159
    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showNotConnectedToInternetAlert(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 162
    :cond_8
    instance-of v0, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Loading;

    if-eqz v0, :cond_a

    .line 163
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    if-nez p0, :cond_9

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    :cond_9
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentProfileBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const-string p1, "loadingSpinner"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    const-wide/16 v2, 0x0

    const/4 p1, 0x1

    invoke-static {p0, v2, v3, p1, v1}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    goto :goto_4

    .line 166
    :cond_a
    instance-of v0, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$DeletedAccountError;

    if-eqz v0, :cond_d

    .line 167
    check-cast p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$DeletedAccountError;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$DeletedAccountError;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_2

    :cond_b
    move-object v3, p1

    .line 168
    :goto_2
    sget p1, Lfast/dic/dict/R$string;->error:I

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 171
    :cond_c
    invoke-direct {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object v0

    new-instance v2, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lfast/dic/dict/presentation/common/SyncViewModel;->logout(Lkotlin/jvm/functions/Function0;)V

    .line 189
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p1, v3, p0}, Lfast/dic/dict/utils/FDAlertManger;->showSimpleAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_4

    .line 192
    :cond_d
    instance-of v0, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$DeletedAccount;

    if-eqz v0, :cond_f

    .line 193
    check-cast p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$DeletedAccount;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$DeletedAccount;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_3

    :cond_e
    move-object v3, p1

    .line 194
    :goto_3
    sget p1, Lfast/dic/dict/R$string;->ok:I

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p1, v3, p0}, Lfast/dic/dict/utils/FDAlertManger;->showSimpleAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 199
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 131
    :cond_f
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final onViewCreated$lambda$0$0(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 172
    new-instance v0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda12;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/parse/ParseUser;->logOutInBackground(Lcom/parse/LogOutCallback;)V

    .line 187
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onViewCreated$lambda$0$0$0(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Ljava/lang/String;Lcom/parse/ParseException;)V
    .locals 6

    if-nez p2, :cond_0

    .line 176
    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p2

    .line 178
    const-string v0, "account_deleted"

    .line 176
    invoke-virtual {p2, p1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logUserLogout(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$onViewCreated$1$1$1$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$onViewCreated$1$1$1$1;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final sentChangePasswordLinkByConfirmAlert(Lfast/dic/dict/services/parse/FDParseUser;)V
    .locals 9

    .line 260
    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 261
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    .line 262
    sget v1, Lfast/dic/dict/R$string;->change_password:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    sget v3, Lfast/dic/dict/R$string;->sent_change_password_link_to_:I

    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    sget v4, Lfast/dic/dict/R$string;->cancelButtonTitle:I

    invoke-virtual {p0, v4}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    move-object v3, v4

    .line 265
    new-instance v4, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda8;-><init>()V

    .line 266
    sget v5, Lfast/dic/dict/R$string;->send:I

    invoke-virtual {p0, v5}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 267
    new-instance v6, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda9;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Lfast/dic/dict/services/parse/FDParseUser;)V

    const/4 v7, 0x0

    .line 261
    invoke-virtual/range {v0 .. v8}, Lfast/dic/dict/utils/FDAlertManger;->showAlertWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static final sentChangePasswordLinkByConfirmAlert$lambda$0$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 265
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final sentChangePasswordLinkByConfirmAlert$lambda$0$1(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Lfast/dic/dict/services/parse/FDParseUser;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getViewModel()Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    move-result-object p0

    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getEmail(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->requestForResetPassword(Ljava/lang/String;)V

    return-void
.end method

.method private final showActivationAlert()V
    .locals 12

    .line 277
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    instance-of v1, v0, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 279
    :goto_0
    sget-object v3, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    .line 280
    sget v1, Lfast/dic/dict/R$string;->email_confirm:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "getString(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    sget v5, Lfast/dic/dict/R$string;->help_for_sent_verification_link_on_email:I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    :cond_1
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    sget v0, Lfast/dic/dict/R$string;->cancelButtonTitle:I

    invoke-virtual {p0, v0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    new-instance v7, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda10;

    invoke-direct {v7}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda10;-><init>()V

    .line 284
    sget v0, Lfast/dic/dict/R$string;->send:I

    invoke-virtual {p0, v0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 285
    new-instance v9, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda11;

    invoke-direct {v9, p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda11;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)V

    .line 289
    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->requireContext()Landroid/content/Context;

    move-result-object v11

    const-string p0, "requireContext(...)"

    invoke-static {v11, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 279
    invoke-virtual/range {v3 .. v11}, Lfast/dic/dict/utils/FDAlertManger;->showAlertWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/Context;)V

    return-void
.end method

.method static final showActivationAlert$lambda$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 283
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static final showActivationAlert$lambda$1(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 286
    invoke-direct {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getViewModel()Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->sendEmailVerification()V

    return-void
.end method


# virtual methods
.method public final getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "firebaseUserPropertiesManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 50
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentProfileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentProfileBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    .line 52
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->isLoggedIn()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_3

    .line 53
    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p3, p1, Lfast/dic/dict/activities/MainActivity;

    if-eqz p3, :cond_0

    check-cast p1, Lfast/dic/dict/activities/MainActivity;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfast/dic/dict/activities/MainActivity;->checkAndUpdateTabbarMenuAfterLogin()V

    .line 54
    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p3, p1, Lfast/dic/dict/activities/MainActivity;

    if-eqz p3, :cond_2

    check-cast p1, Lfast/dic/dict/activities/MainActivity;

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    if-eqz p1, :cond_3

    sget p3, Lfast/dic/dict/R$id;->loginOnboardingFragment:I

    invoke-virtual {p1, p3}, Lfast/dic/dict/activities/MainActivity;->selectTab(I)V

    .line 57
    :cond_3
    iget-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    const-string p3, "binding"

    if-nez p1, :cond_4

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_4
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentProfileBinding;->activeEmailButtonOrSubscriptions:Landroid/widget/Button;

    new-instance v0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda15;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    if-nez p1, :cond_5

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_5
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentProfileBinding;->deleteAccountRow:Lfast/dic/dict/views/RowView;

    new-instance v0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda16;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/views/RowView;->clickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    if-nez p1, :cond_6

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_6
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentProfileBinding;->updateUserProfileRow:Lfast/dic/dict/views/RowView;

    new-instance v0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/views/RowView;->clickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    if-nez p1, :cond_7

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_7
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentProfileBinding;->logoutRow:Lfast/dic/dict/views/RowView;

    new-instance v0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/views/RowView;->clickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    if-nez p1, :cond_8

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_8
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentProfileBinding;->historyPurchasedRow:Lfast/dic/dict/views/RowView;

    new-instance v0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/views/RowView;->clickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    if-nez p1, :cond_9

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_9
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentProfileBinding;->changePasswordRow:Lfast/dic/dict/views/RowView;

    new-instance v0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda4;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/views/RowView;->clickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 90
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 91
    const-string v0, "login_dialog_dismissed"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 92
    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda5;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)V

    new-instance v2, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 101
    :cond_a
    invoke-direct {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getViewModel()Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->getEmailVerificationState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda6;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)V

    new-instance v2, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 124
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->binding:Lfast/dic/dict/databinding/FragmentProfileBinding;

    if-nez p0, :cond_b

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move-object p2, p0

    :goto_2
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentProfileBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/profile_screen/Hilt_ProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 130
    invoke-direct {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getViewModel()Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->getState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$$ExternalSyntheticLambda7;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)V

    new-instance v1, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 200
    invoke-direct {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->getViewModel()Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->fetchParseUser()V

    return-void
.end method

.method public final setFirebaseUserPropertiesManager(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    return-void
.end method
