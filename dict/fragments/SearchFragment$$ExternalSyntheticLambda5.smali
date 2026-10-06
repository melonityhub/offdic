.class public final synthetic Lfast/dic/dict/fragments/SearchFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/fragments/SearchFragment;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/fragments/SearchFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/fragments/SearchFragment$$ExternalSyntheticLambda5;->f$0:Lfast/dic/dict/fragments/SearchFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/fragments/SearchFragment$$ExternalSyntheticLambda5;->f$0:Lfast/dic/dict/fragments/SearchFragment;

    check-cast p1, Lfast/dic/dict/models/eventbus/SearchBarStatus;

    invoke-static {p0, p1}, Lfast/dic/dict/fragments/SearchFragment;->onCreateView$lambda$4(Lfast/dic/dict/fragments/SearchFragment;Lfast/dic/dict/models/eventbus/SearchBarStatus;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
