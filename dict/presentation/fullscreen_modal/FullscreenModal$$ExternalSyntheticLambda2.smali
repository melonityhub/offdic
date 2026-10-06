.class public final synthetic Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal$$ExternalSyntheticLambda2;->f$0:Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal$$ExternalSyntheticLambda2;->f$0:Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    check-cast p1, Lfast/dic/dict/services/FDAds$RewardedAdStatus;

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->onCreateView$lambda$2(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Lfast/dic/dict/services/FDAds$RewardedAdStatus;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
