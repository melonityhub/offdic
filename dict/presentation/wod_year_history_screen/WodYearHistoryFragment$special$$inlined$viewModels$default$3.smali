.class public final Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$special$$inlined$viewModels$default$3;
.super Ljava/lang/Object;
.source "FragmentViewModelLazy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/ViewModelStore;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentViewModelLazy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt$viewModels$6\n*L\n1#1,229:1\n*E\n"
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
.field final synthetic $owner$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlin/Lazy;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$special$$inlined$viewModels$default$3;->$owner$delegate:Lkotlin/Lazy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModelStore;
    .locals 0

    .line 118
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$special$$inlined$viewModels$default$3;->$owner$delegate:Lkotlin/Lazy;

    invoke-static {p0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->access$viewModels$lambda-1(Lkotlin/Lazy;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 116
    invoke-virtual {p0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$special$$inlined$viewModels$default$3;->invoke()Landroidx/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0
.end method
