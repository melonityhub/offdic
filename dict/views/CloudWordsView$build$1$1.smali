.class final Lfast/dic/dict/views/CloudWordsView$build$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CloudWordsView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/views/CloudWordsView$build$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloudWordsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudWordsView.kt\nfast/dic/dict/views/CloudWordsView$build$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n2068#2,2:136\n*S KotlinDebug\n*F\n+ 1 CloudWordsView.kt\nfast/dic/dict/views/CloudWordsView$build$1$1\n*L\n99#1:136,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "fast.dic.dict.views.CloudWordsView$build$1$1"
    f = "CloudWordsView.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/CloudWordModel;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lfast/dic/dict/views/CloudWordsView;


# direct methods
.method constructor <init>(Ljava/util/List;Lfast/dic/dict/views/CloudWordsView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/CloudWordModel;",
            ">;",
            "Lfast/dic/dict/views/CloudWordsView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/views/CloudWordsView$build$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/views/CloudWordsView$build$1$1;->$words:Ljava/util/List;

    iput-object p2, p0, Lfast/dic/dict/views/CloudWordsView$build$1$1;->this$0:Lfast/dic/dict/views/CloudWordsView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lfast/dic/dict/views/CloudWordsView$build$1$1;

    iget-object v0, p0, Lfast/dic/dict/views/CloudWordsView$build$1$1;->$words:Ljava/util/List;

    iget-object p0, p0, Lfast/dic/dict/views/CloudWordsView$build$1$1;->this$0:Lfast/dic/dict/views/CloudWordsView;

    invoke-direct {p1, v0, p0, p2}, Lfast/dic/dict/views/CloudWordsView$build$1$1;-><init>(Ljava/util/List;Lfast/dic/dict/views/CloudWordsView;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/views/CloudWordsView$build$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/views/CloudWordsView$build$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/views/CloudWordsView$build$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/views/CloudWordsView$build$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 98
    iget v0, p0, Lfast/dic/dict/views/CloudWordsView$build$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 99
    iget-object p1, p0, Lfast/dic/dict/views/CloudWordsView$build$1$1;->$words:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lfast/dic/dict/views/CloudWordsView$build$1$1;->this$0:Lfast/dic/dict/views/CloudWordsView;

    .line 136
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/models/CloudWordModel;

    .line 100
    invoke-virtual {v0}, Lfast/dic/dict/models/CloudWordModel;->getPosition()Lfast/dic/dict/models/PositionModel;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/models/PositionModel;->getY()I

    move-result v7

    .line 101
    invoke-virtual {v0}, Lfast/dic/dict/models/CloudWordModel;->getPosition()Lfast/dic/dict/models/PositionModel;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/models/PositionModel;->getX()I

    move-result v13

    .line 103
    invoke-virtual {v0}, Lfast/dic/dict/models/CloudWordModel;->getFontSize()F

    move-result v1

    .line 104
    invoke-virtual {v0}, Lfast/dic/dict/models/CloudWordModel;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lfast/dic/dict/views/CloudWordsView;->access$getTypeface(Lfast/dic/dict/views/CloudWordsView;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0}, Lfast/dic/dict/views/CloudWordsView;->getTextColor()I

    move-result v3

    invoke-static {p0, v0, v2, v1, v3}, Lfast/dic/dict/views/CloudWordsView;->access$generateWordView(Lfast/dic/dict/views/CloudWordsView;Ljava/lang/String;Landroid/graphics/Typeface;FI)Landroid/widget/TextView;

    move-result-object v0

    .line 106
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lfast/dic/dict/views/CloudWordsView;->addView(Landroid/view/View;)V

    .line 108
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 109
    move-object v1, p0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 110
    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {p0}, Lfast/dic/dict/views/CloudWordsView;->getId()I

    move-result v5

    const/4 v6, 0x3

    const/4 v4, 0x3

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 111
    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v9

    invoke-virtual {p0}, Lfast/dic/dict/views/CloudWordsView;->getId()I

    move-result v11

    const/4 v12, 0x1

    const/4 v10, 0x1

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 113
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 114
    invoke-virtual {p0, v2}, Lfast/dic/dict/views/CloudWordsView;->setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V

    goto :goto_0

    .line 116
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 98
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
