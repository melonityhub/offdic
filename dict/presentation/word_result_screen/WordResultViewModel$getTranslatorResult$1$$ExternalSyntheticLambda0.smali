.class public final synthetic Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

.field public final synthetic f$1:Lfast/dic/dict/models/database/ListModel;

.field public final synthetic f$2:Lfast/dic/dict/models/database/TranslateModel;

.field public final synthetic f$3:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Lfast/dic/dict/models/database/ListModel;Lfast/dic/dict/models/database/TranslateModel;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iput-object p2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/models/database/ListModel;

    iput-object p3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0;->f$2:Lfast/dic/dict/models/database/TranslateModel;

    iput-object p4, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0;->f$3:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    iput-object p5, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput-boolean p6, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0;->f$5:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/models/database/ListModel;

    iget-object v2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0;->f$2:Lfast/dic/dict/models/database/TranslateModel;

    iget-object v3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0;->f$3:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    iget-object v4, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget-boolean v5, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0;->f$5:Z

    move-object v6, p1

    check-cast v6, Lfast/dic/dict/models/database/TranslateModel;

    move-object v7, p2

    check-cast v7, Ljava/lang/Throwable;

    invoke-static/range {v0 .. v7}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->invokeSuspend$lambda$0(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Lfast/dic/dict/models/database/ListModel;Lfast/dic/dict/models/database/TranslateModel;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Ljava/lang/String;ZLfast/dic/dict/models/database/TranslateModel;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
