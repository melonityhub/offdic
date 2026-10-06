.class public final Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;
.super Lfast/dic/dict/fragments/onboardings/Hilt_ProPlanRequiredFragment;
.source "ProPlanRequiredFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\u0010\u00a8\u0006\u000f"
    }
    d2 = {
        "Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;",
        "Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;",
        "<init>",
        "()V",
        "binding",
        "Lfast/dic/dict/databinding/FragmentProPlanRequiredBinding;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field public static final Companion:Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$Companion;


# instance fields
.field private binding:Lfast/dic/dict/databinding/FragmentProPlanRequiredBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;->Companion:Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, v0}, Lfast/dic/dict/fragments/onboardings/Hilt_ProPlanRequiredFragment;-><init>(Z)V

    return-void
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;->dismiss()V

    return-void
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;->dismiss()V

    return-void
.end method

.method static final onCreateView$lambda$2(Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;Landroid/view/View;)V
    .locals 3

    .line 37
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string v0, "fromOnBoarding"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    sget v1, Lfast/dic/dict/R$id;->moreFragment:I

    sget v2, Lfast/dic/dict/R$id;->newPricingFragment:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lfast/dic/dict/utils/FragmentExtensionKt;->openTab(Landroidx/fragment/app/Fragment;ILjava/lang/Integer;Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 24
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentProPlanRequiredBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentProPlanRequiredBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;->binding:Lfast/dic/dict/databinding/FragmentProPlanRequiredBinding;

    const/4 p2, 0x0

    .line 26
    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentProPlanRequiredBinding;->secondaryBtn:Landroid/widget/Button;

    new-instance v0, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;->binding:Lfast/dic/dict/databinding/FragmentProPlanRequiredBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentProPlanRequiredBinding;->toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->leftToolbarButton:Landroid/widget/Button;

    new-instance v0, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;->binding:Lfast/dic/dict/databinding/FragmentProPlanRequiredBinding;

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentProPlanRequiredBinding;->toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->rightToolbarButton:Landroid/widget/ImageButton;

    const-string v0, "rightToolbarButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lfast/dic/dict/utils/ViewExtKt;->hideMeNow(Landroid/view/View;)V

    .line 36
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;->binding:Lfast/dic/dict/databinding/FragmentProPlanRequiredBinding;

    if-nez p1, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_3
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentProPlanRequiredBinding;->primaryBtn:Landroid/widget/Button;

    new-instance v0, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p0, p0, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;->binding:Lfast/dic/dict/databinding/FragmentProPlanRequiredBinding;

    if-nez p0, :cond_4

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentProPlanRequiredBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method
