.class public final Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1$invokeSuspend$$inlined$withStarted$1;
.super Ljava/lang/Object;
.source "WithLifecycleState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWithLifecycleState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WithLifecycleState.kt\nandroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2\n+ 2 ContextExt.kt\nfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1\n*L\n1#1,175:1\n104#2,8:176\n*E\n"
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
.field final synthetic $this_setToolbarTitle$inlined:Landroidx/fragment/app/Fragment;

.field final synthetic $title$inlined:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1$invokeSuspend$$inlined$withStarted$1;->$this_setToolbarTitle$inlined:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1$invokeSuspend$$inlined$withStarted$1;->$title$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 177
    :try_start_0
    iget-object v0, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1$invokeSuspend$$inlined$withStarted$1;->$this_setToolbarTitle$inlined:Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "toolbarTitle"

    iget-object v2, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1$invokeSuspend$$inlined$withStarted$1;->$title$inlined:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 181
    :catch_0
    iget-object v0, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1$invokeSuspend$$inlined$withStarted$1;->$this_setToolbarTitle$inlined:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lfast/dic/dict/activities/MainActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lfast/dic/dict/activities/MainActivity;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1$invokeSuspend$$inlined$withStarted$1;->$title$inlined:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lfast/dic/dict/activities/MainActivity;->updateTitle(Ljava/lang/String;)V

    .line 183
    :cond_2
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
