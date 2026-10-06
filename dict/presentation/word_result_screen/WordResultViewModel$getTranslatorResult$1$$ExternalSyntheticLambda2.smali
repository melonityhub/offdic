.class public final synthetic Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lfast/dic/dict/models/database/TranslateModel;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/TranslateModel;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2;->f$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iput-object p2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2;->f$3:Lfast/dic/dict/models/database/TranslateModel;

    iput-boolean p5, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2;->f$4:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2;->f$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2;->f$3:Lfast/dic/dict/models/database/TranslateModel;

    iget-boolean v4, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2;->f$4:Z

    move-object v5, p1

    check-cast v5, Lfast/dic/dict/services/parse/FDPurchased;

    invoke-static/range {v0 .. v5}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$r8$lambda$DnhJc20Uyuc5LH3CCoZjbcoYXtw(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/TranslateModel;ZLfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
