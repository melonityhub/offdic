.class public final synthetic Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/ref/WeakReference;

.field public final synthetic f$1:Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    invoke-static {v0, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->shouldOverrideUrlLoading$lambda$0(Ljava/lang/ref/WeakReference;Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;)V

    return-void
.end method
