.class public final synthetic Lfast/dic/dict/presentation/common/SyncViewModel$logout$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/common/SyncViewModel;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/common/SyncViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/presentation/common/SyncViewModel;

    iput-object p2, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/presentation/common/SyncViewModel;

    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->invokeSuspend$lambda$0(Lfast/dic/dict/presentation/common/SyncViewModel;Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
