.class public final synthetic Lfast/dic/dict/views/SearchBarView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/views/SearchBarView;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/views/SearchBarView;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/views/SearchBarView$$ExternalSyntheticLambda6;->f$0:Lfast/dic/dict/views/SearchBarView;

    iput-object p2, p0, Lfast/dic/dict/views/SearchBarView$$ExternalSyntheticLambda6;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/views/SearchBarView$$ExternalSyntheticLambda6;->f$0:Lfast/dic/dict/views/SearchBarView;

    iget-object p0, p0, Lfast/dic/dict/views/SearchBarView$$ExternalSyntheticLambda6;->f$1:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p0, p1}, Lfast/dic/dict/views/SearchBarView;->setOnTextChanged$lambda$0(Lfast/dic/dict/views/SearchBarView;Lkotlin/jvm/functions/Function1;Ljava/lang/CharSequence;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
