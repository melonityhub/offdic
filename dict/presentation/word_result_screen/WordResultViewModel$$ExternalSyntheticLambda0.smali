.class public final synthetic Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

.field public final synthetic f$1:Lfast/dic/dict/utils/Category;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lfast/dic/dict/models/database/TranslateModel;

.field public final synthetic f$4:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

.field public final synthetic f$5:Lfast/dic/dict/models/database/ListModel;

.field public final synthetic f$6:Landroid/content/Context;

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Lfast/dic/dict/utils/Category;Ljava/lang/String;Lfast/dic/dict/models/database/TranslateModel;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Lfast/dic/dict/models/database/ListModel;Landroid/content/Context;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iput-object p2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/utils/Category;

    iput-object p3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$3:Lfast/dic/dict/models/database/TranslateModel;

    iput-object p5, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$4:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    iput-object p6, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$5:Lfast/dic/dict/models/database/ListModel;

    iput-object p7, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$6:Landroid/content/Context;

    iput-boolean p8, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$7:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 0
    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/utils/Category;

    iget-object v2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$3:Lfast/dic/dict/models/database/TranslateModel;

    iget-object v4, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$4:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    iget-object v5, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$5:Lfast/dic/dict/models/database/ListModel;

    iget-object v6, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$6:Landroid/content/Context;

    iget-boolean v7, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$$ExternalSyntheticLambda0;->f$7:Z

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    move-object v9, p2

    check-cast v9, Ljava/lang/Exception;

    invoke-static/range {v0 .. v9}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->handleOfflineTranslator$lambda$0(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Lfast/dic/dict/utils/Category;Ljava/lang/String;Lfast/dic/dict/models/database/TranslateModel;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Lfast/dic/dict/models/database/ListModel;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Exception;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
