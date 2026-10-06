.class public final synthetic Lfast/dic/dict/utils/FragmentExtensionKt$getScrollListenerImp$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/activities/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/activities/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/utils/FragmentExtensionKt$getScrollListenerImp$1$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/activities/MainActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/utils/FragmentExtensionKt$getScrollListenerImp$1$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/activities/MainActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lfast/dic/dict/utils/FragmentExtensionKt$getScrollListenerImp$1;->onScrolled$lambda$0(Lfast/dic/dict/activities/MainActivity;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
