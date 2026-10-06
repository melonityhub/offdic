.class public final Lfast/dic/dict/utils/FragmentExtensionKt$getScrollListenerImp$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FragmentExtension.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/utils/FragmentExtensionKt;->getScrollListenerImp(Landroidx/fragment/app/Fragment;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "fast/dic/dict/utils/FragmentExtensionKt$getScrollListenerImp$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
        "onScrolled",
        "dx",
        "dy",
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
.field final synthetic $mainActivity:Lfast/dic/dict/activities/MainActivity;


# direct methods
.method constructor <init>(Lfast/dic/dict/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/utils/FragmentExtensionKt$getScrollListenerImp$1;->$mainActivity:Lfast/dic/dict/activities/MainActivity;

    .line 61
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method static final onScrolled$lambda$0(Lfast/dic/dict/activities/MainActivity;I)Lkotlin/Unit;
    .locals 0

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 85
    :goto_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/activities/MainActivity;->changeFloatingButtonVisibility(Z)V

    .line 86
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    if-eq p2, p0, :cond_0

    .line 73
    const-string p0, "SCROLL_STATE_SETTLING"

    goto :goto_0

    .line 70
    :cond_0
    const-string p0, "SCROLL_STATE_DRAGGING"

    goto :goto_0

    .line 67
    :cond_1
    const-string p0, "SCROLL_STATE_IDLE"

    .line 76
    :goto_0
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    const-string p2, "onScrollStateChanged called ---> newState = "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 81
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScrolled called ---> dx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " and dy = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 84
    sget-object p1, Lfast/dic/dict/utils/AnyDebounce;->INSTANCE:Lfast/dic/dict/utils/AnyDebounce;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lfast/dic/dict/utils/FragmentExtensionKt$getScrollListenerImp$1;->$mainActivity:Lfast/dic/dict/activities/MainActivity;

    new-instance p3, Lfast/dic/dict/utils/FragmentExtensionKt$getScrollListenerImp$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lfast/dic/dict/utils/FragmentExtensionKt$getScrollListenerImp$1$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/activities/MainActivity;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1, p3}, Lfast/dic/dict/utils/AnyDebounce;->debounce(Ljava/lang/Object;JLkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method
