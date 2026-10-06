.class public final Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$4;
.super Ljava/lang/Object;
.source "FragmentViewModelLazy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/pricing_screen/PricingFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/viewmodel/CreationExtras;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentViewModelLazy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt$viewModels$7\n*L\n1#1,229:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $extrasProducer:Lkotlin/jvm/functions/Function0;

.field final synthetic $owner$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$4;->$extrasProducer:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$4;->$owner$delegate:Lkotlin/Lazy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 1

    .line 120
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$4;->$extrasProducer:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 121
    :cond_1
    :goto_0
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$4;->$owner$delegate:Lkotlin/Lazy;

    invoke-static {p0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->access$viewModels$lambda-1(Lkotlin/Lazy;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_2

    check-cast p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    return-object p0

    .line 122
    :cond_3
    sget-object p0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast p0, Landroidx/lifecycle/viewmodel/CreationExtras;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 116
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$special$$inlined$viewModels$default$4;->invoke()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    return-object p0
.end method
