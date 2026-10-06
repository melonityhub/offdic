.class public final synthetic Lfast/dic/dict/services/FDAds$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/services/FDAds;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/services/FDAds;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/services/FDAds$$ExternalSyntheticLambda2;->f$0:Lfast/dic/dict/services/FDAds;

    iput-object p2, p0, Lfast/dic/dict/services/FDAds$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$$ExternalSyntheticLambda2;->f$0:Lfast/dic/dict/services/FDAds;

    iget-object p0, p0, Lfast/dic/dict/services/FDAds$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    invoke-static {v0, p0}, Lfast/dic/dict/services/FDAds;->startInterstitialCountdown$lambda$0(Lfast/dic/dict/services/FDAds;Landroid/app/Activity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
