.class public final Lfast/dic/dict/activities/MainActivity$setupBackPressedDispatcher$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/activities/MainActivity;->setupBackPressedDispatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "fast/dic/dict/activities/MainActivity$setupBackPressedDispatcher$1",
        "Landroidx/activity/OnBackPressedCallback;",
        "handleOnBackPressed",
        "",
        "app"
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
.field final synthetic this$0:Lfast/dic/dict/activities/MainActivity;


# direct methods
.method constructor <init>(Lfast/dic/dict/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/activities/MainActivity$setupBackPressedDispatcher$1;->this$0:Lfast/dic/dict/activities/MainActivity;

    const/4 p1, 0x1

    .line 393
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 5

    .line 395
    iget-object v0, p0, Lfast/dic/dict/activities/MainActivity$setupBackPressedDispatcher$1;->this$0:Lfast/dic/dict/activities/MainActivity;

    invoke-virtual {v0}, Lfast/dic/dict/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const-string v1, "getFragments(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v2, :cond_0

    .line 397
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/fragment/NavHostFragment;

    .line 398
    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 397
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 403
    instance-of v4, v3, Lfast/dic/dict/bases/BaseFragment;

    if-eqz v4, :cond_1

    .line 404
    check-cast v3, Lfast/dic/dict/bases/BaseFragment;

    invoke-virtual {v3}, Lfast/dic/dict/bases/BaseFragment;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    if-nez v2, :cond_3

    .line 409
    invoke-virtual {p0, v1}, Lfast/dic/dict/activities/MainActivity$setupBackPressedDispatcher$1;->setEnabled(Z)V

    .line 410
    iget-object v0, p0, Lfast/dic/dict/activities/MainActivity$setupBackPressedDispatcher$1;->this$0:Lfast/dic/dict/activities/MainActivity;

    invoke-virtual {v0}, Lfast/dic/dict/activities/MainActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    const/4 v0, 0x1

    .line 411
    invoke-virtual {p0, v0}, Lfast/dic/dict/activities/MainActivity$setupBackPressedDispatcher$1;->setEnabled(Z)V

    :cond_3
    return-void
.end method
