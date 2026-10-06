.class public final synthetic Lfast/dic/dict/presentation/ai_screen/AIFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

.field public final synthetic f$1:Lfast/dic/dict/presentation/ai_screen/AIFragment;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Lfast/dic/dict/presentation/ai_screen/AIFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/ai_screen/AIFragment$$ExternalSyntheticLambda5;->f$0:Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    iput-object p2, p0, Lfast/dic/dict/presentation/ai_screen/AIFragment$$ExternalSyntheticLambda5;->f$1:Lfast/dic/dict/presentation/ai_screen/AIFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/presentation/ai_screen/AIFragment$$ExternalSyntheticLambda5;->f$0:Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    iget-object p0, p0, Lfast/dic/dict/presentation/ai_screen/AIFragment$$ExternalSyntheticLambda5;->f$1:Lfast/dic/dict/presentation/ai_screen/AIFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lfast/dic/dict/presentation/ai_screen/AIFragment;->$r8$lambda$E-izw-4zjcz2c7Hds8QZpJnlhBk(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Lfast/dic/dict/presentation/ai_screen/AIFragment;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
