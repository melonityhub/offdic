.class public final Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "AIFragmentViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00ca\u0001\u0002\u0008\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "<init>",
        "(Lfast/dic/dict/database/LocalStorage;)V",
        "Ljavax/inject/Inject;",
        "webViewState",
        "Landroid/os/Bundle;",
        "getWebViewState",
        "()Landroid/os/Bundle;",
        "planType",
        "Lfast/dic/dict/models/PlanType;",
        "getPlanType",
        "()Lfast/dic/dict/models/PlanType;",
        "setPlanType",
        "(Lfast/dic/dict/models/PlanType;)V",
        "getOfflineSpeed",
        "",
        "validRewardedAdsForAiTranslator",
        "",
        "app",
        "Ldagger/hilt/android/lifecycle/HiltViewModel;"
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
.field private final localStorage:Lfast/dic/dict/database/LocalStorage;

.field private planType:Lfast/dic/dict/models/PlanType;

.field private final webViewState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lfast/dic/dict/database/LocalStorage;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "localStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 12
    iput-object p1, p0, Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    .line 14
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;->webViewState:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getOfflineSpeed()F
    .locals 1

    .line 18
    iget-object p0, p0, Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/database/LocalStorage;->getOfflineSpeechSpeed()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    return p0
.end method

.method public final getPlanType()Lfast/dic/dict/models/PlanType;
    .locals 0

    .line 15
    iget-object p0, p0, Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;->planType:Lfast/dic/dict/models/PlanType;

    return-object p0
.end method

.method public final getWebViewState()Landroid/os/Bundle;
    .locals 0

    .line 14
    iget-object p0, p0, Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;->webViewState:Landroid/os/Bundle;

    return-object p0
.end method

.method public final setPlanType(Lfast/dic/dict/models/PlanType;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;->planType:Lfast/dic/dict/models/PlanType;

    return-void
.end method

.method public final validRewardedAdsForAiTranslator()Z
    .locals 0

    .line 22
    iget-object p0, p0, Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/database/LocalStorage;->validRewardedAdsForAiTranslator()Z

    move-result p0

    return p0
.end method
