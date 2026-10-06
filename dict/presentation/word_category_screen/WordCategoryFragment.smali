.class public final Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;
.super Lfast/dic/dict/presentation/word_category_screen/Hilt_WordCategoryFragment;
.source "WordCategoryFragment.kt"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWordCategoryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WordCategoryFragment.kt\nfast/dic/dict/presentation/word_category_screen/WordCategoryFragment\n+ 2 FragmentNavArgsLazy.kt\nandroidx/navigation/fragment/FragmentNavArgsLazyKt\n+ 3 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,281:1\n42#2,3:282\n110#3,15:285\n37#4,2:300\n1544#5:302\n1633#5,5:303\n1739#5:308\n1814#5,3:309\n777#5:312\n873#5,2:313\n1739#5:315\n1814#5,3:316\n2068#5,2:319\n*S KotlinDebug\n*F\n+ 1 WordCategoryFragment.kt\nfast/dic/dict/presentation/word_category_screen/WordCategoryFragment\n*L\n43#1:282,3\n45#1:285,15\n240#1:300,2\n265#1:302\n265#1:303,5\n266#1:308\n266#1:309,3\n267#1:312\n267#1:313,2\n268#1:315\n268#1:316,3\n272#1:319,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0012\u0010#\u001a\u00020 2\u0008\u0010$\u001a\u0004\u0018\u00010\"H\u0016J$\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010*2\u0008\u0010$\u001a\u0004\u0018\u00010\"H\u0016J\u001a\u0010+\u001a\u00020 2\u0006\u0010,\u001a\u00020&2\u0008\u0010$\u001a\u0004\u0018\u00010\"H\u0016J\u0008\u0010-\u001a\u00020.H\u0002J\u0018\u0010/\u001a\u00020 2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0016J\u0010\u00104\u001a\u00020.2\u0006\u00105\u001a\u000206H\u0016J\u001c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u0002090\u001dH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R#\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\r\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008;\u00a8\u0006:"
    }
    d2 = {
        "Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/core/view/MenuProvider;",
        "<init>",
        "()V",
        "scrollPosition",
        "Landroid/os/Parcelable;",
        "adapter",
        "Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;",
        "getAdapter",
        "()Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;",
        "setAdapter",
        "(Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;)V",
        "Ljavax/inject/Inject;",
        "args",
        "Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;",
        "getArgs",
        "()Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;",
        "args$delegate",
        "Landroidx/navigation/NavArgsLazy;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentWordCategoryBinding;",
        "viewModel",
        "Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "filters",
        "",
        "",
        "onSaveInstanceState",
        "",
        "outState",
        "Landroid/os/Bundle;",
        "onViewStateRestored",
        "savedInstanceState",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
        "isCerf",
        "",
        "onCreateMenu",
        "menu",
        "Landroid/view/Menu;",
        "menuInflater",
        "Landroid/view/MenuInflater;",
        "onMenuItemSelected",
        "menuItem",
        "Landroid/view/MenuItem;",
        "generateFilters",
        "models",
        "Lfast/dic/dict/models/database/CategorizedWordDto;",
        "app",
        "Ldagger/hilt/android/AndroidEntryPoint;"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public adapter:Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final args$delegate:Landroidx/navigation/NavArgsLazy;

.field private binding:Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scrollPosition:Landroid/os/Parcelable;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$i6mRVSBod-CdJ99xl8iYos3uCow(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;)V
    .locals 0

    invoke-static {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->onViewCreated$lambda$0$0(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 37
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/Hilt_WordCategoryFragment;-><init>()V

    .line 43
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 282
    new-instance v1, Landroidx/navigation/NavArgsLazy;

    const-class v2, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$special$$inlined$navArgs$1;

    invoke-direct {v3, v0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$special$$inlined$navArgs$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v2, v3}, Landroidx/navigation/NavArgsLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    .line 43
    iput-object v1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    .line 286
    new-instance v1, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 290
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 291
    const-class v2, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 45
    iput-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 47
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->filters:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getViewModel(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;)Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;
    .locals 0

    .line 37
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewModel()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final generateFilters(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/CategorizedWordDto;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 254
    sget v1, Lfast/dic/dict/R$string;->all:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    sget v1, Lfast/dic/dict/R$string;->most_common:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getArgs()Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;->getCategory()Lfast/dic/dict/models/WordCategoryModel;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/models/WordCategoryModel;->isCefr()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 261
    :cond_0
    sget v1, Lfast/dic/dict/R$string;->filter_cefr_levels:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    sget v1, Lfast/dic/dict/R$string;->filter_cefr_unclassified:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    check-cast p1, Ljava/lang/Iterable;

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 303
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 304
    check-cast v3, Lfast/dic/dict/models/database/CategorizedWordDto;

    .line 265
    invoke-virtual {v3}, Lfast/dic/dict/models/database/CategorizedWordDto;->getSubCategories()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_1
    check-cast v3, Ljava/lang/Iterable;

    .line 305
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 307
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 302
    check-cast v1, Ljava/lang/Iterable;

    .line 308
    new-instance p1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 309
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 310
    check-cast v4, Ljava/lang/String;

    .line 266
    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 311
    :cond_3
    check-cast p1, Ljava/util/List;

    .line 308
    check-cast p1, Ljava/lang/Iterable;

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 313
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 267
    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 313
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 314
    :cond_5
    check-cast v1, Ljava/util/List;

    .line 312
    check-cast v1, Ljava/lang/Iterable;

    .line 315
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 316
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 317
    check-cast v3, Ljava/lang/String;

    .line 268
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 317
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 318
    :cond_6
    check-cast p1, Ljava/util/List;

    .line 315
    check-cast p1, Ljava/lang/Iterable;

    .line 269
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 270
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 272
    check-cast p1, Ljava/lang/Iterable;

    .line 319
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 274
    sget v3, Lfast/dic/dict/R$string;->filter_section:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 253
    :cond_7
    :goto_5
    check-cast v0, Ljava/lang/Iterable;

    .line 278
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getArgs()Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;
    .locals 0

    .line 43
    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    check-cast p0, Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;

    return-object p0
.end method

.method private final getViewModel()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;
    .locals 0

    .line 45
    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    return-object p0
.end method

.method private final isCerf()Z
    .locals 1

    .line 155
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getArgs()Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;->getCategory()Lfast/dic/dict/models/WordCategoryModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/models/WordCategoryModel;->isCefr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getArgs()Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;->getCategory()Lfast/dic/dict/models/WordCategoryModel;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/models/WordCategoryModel;->getCefr()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;Lfast/dic/dict/models/database/CategorizedWordDto;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    .line 76
    invoke-static {p1}, Lfast/dic/dict/models/database/CategorizedWordDtoKt;->toListModel(Lfast/dic/dict/models/database/CategorizedWordDto;)Lfast/dic/dict/models/database/ListModel;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 75
    invoke-direct/range {v1 .. v6}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;-><init>(Lfast/dic/dict/models/database/ListModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->wordResultModal:I

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    .line 79
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 11

    .line 86
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\d+$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 89
    sget v1, Lfast/dic/dict/R$string;->all:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewModel()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->clearFilter()V

    goto/16 :goto_0

    .line 91
    :cond_0
    sget v1, Lfast/dic/dict/R$string;->most_common:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewModel()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    move-result-object p1

    .line 92
    new-instance v3, Lfast/dic/dict/helpers/FDWordCategory$Filter;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/16 v8, 0xb

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lfast/dic/dict/helpers/FDWordCategory$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    invoke-virtual {p1, v3}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->applyFilterAdapter(Lfast/dic/dict/helpers/FDWordCategory$Filter;)V

    goto :goto_0

    .line 95
    :cond_1
    sget v1, Lfast/dic/dict/R$string;->filter_cefr_levels:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewModel()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    move-result-object p1

    .line 96
    new-instance v3, Lfast/dic/dict/helpers/FDWordCategory$Filter;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v9}, Lfast/dic/dict/helpers/FDWordCategory$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    invoke-virtual {p1, v3}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->applyFilterAdapter(Lfast/dic/dict/helpers/FDWordCategory$Filter;)V

    goto :goto_0

    .line 99
    :cond_2
    sget v1, Lfast/dic/dict/R$string;->filter_cefr_unclassified:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewModel()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    move-result-object p1

    .line 100
    new-instance v3, Lfast/dic/dict/helpers/FDWordCategory$Filter;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v9}, Lfast/dic/dict/helpers/FDWordCategory$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 99
    invoke-virtual {p1, v3}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->applyFilterAdapter(Lfast/dic/dict/helpers/FDWordCategory$Filter;)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 104
    invoke-static {v0, p1, v2, v1, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-static {v3}, Lcom/fastdic/android/modules/fdnumberstowords/utils/FDStringExtKt;->toEnglishNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 105
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewModel()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    move-result-object p1

    .line 106
    new-instance v4, Lfast/dic/dict/helpers/FDWordCategory$Filter;

    const/16 v9, 0xd

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lfast/dic/dict/helpers/FDWordCategory$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    invoke-virtual {p1, v4}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->applyFilterAdapter(Lfast/dic/dict/helpers/FDWordCategory$Filter;)V

    .line 111
    :cond_5
    :goto_0
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Lfast/dic/dict/utils/ContextExtKt;->requestForNewMenu(Landroidx/fragment/app/Fragment;)V

    .line 112
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onViewCreated$lambda$0(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState;)Lkotlin/Unit;
    .locals 7

    .line 124
    instance-of v0, p1, Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Loading;

    const-string v1, "loadingSpinner"

    const-string v2, "binding"

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 125
    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    if-nez p0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v6

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v4, v5, v3, v6}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    goto/16 :goto_1

    .line 127
    :cond_1
    instance-of v0, p1, Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Data;

    if-eqz v0, :cond_8

    .line 128
    check-cast p1, Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Data;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Data;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_2
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->placeholderLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v4, v5, v3, v6}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_4
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->placeholderLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v4, v5, v3, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 134
    :cond_5
    :goto_0
    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_6
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v4, v5, v3, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 135
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getAdapter()Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Data;->getModels()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;->submitList(Ljava/util/List;)V

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 142
    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Data;->getModels()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->generateFilters(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->filters:Ljava/util/List;

    .line 146
    :cond_7
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 123
    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final onViewCreated$lambda$0$0(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->scrollPosition:Landroid/os/Parcelable;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getAdapter()Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->adapter:Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menuInflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewModel()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->hasAnyFilter()Z

    move-result v0

    .line 160
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    if-eqz v0, :cond_0

    .line 162
    sget v0, Lfast/dic/dict/R$menu;->cat_word_menu_clear_filter:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 164
    :cond_0
    sget v0, Lfast/dic/dict/R$menu;->cat_word_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 167
    :goto_0
    sget p2, Lfast/dic/dict/R$id;->search_item:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type androidx.appcompat.widget.SearchView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    const v0, 0x7fffffff

    .line 170
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 171
    sget v0, Lfast/dic/dict/R$string;->search:I

    invoke-virtual {p0, v0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 173
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewModel()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->getCurrentQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 177
    :cond_1
    new-instance v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$onCreateMenu$2;

    invoke-direct {v0, p0, p2, p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$onCreateMenu$2;-><init>(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;Landroidx/appcompat/widget/SearchView;Landroid/view/MenuItem;)V

    check-cast v0, Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 195
    new-instance p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$onCreateMenu$3;

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$onCreateMenu$3;-><init>()V

    check-cast p0, Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 69
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    .line 71
    const-string p2, "binding"

    const/4 p3, 0x0

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getAdapter()Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->setAdapter(Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;)V

    .line 72
    iget-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_1
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lfast/dic/dict/utils/ViewExtKt;->addDivider(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 73
    iget-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_2
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 74
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getAdapter()Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;

    move-result-object p1

    new-instance v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;->setOnClickListener(Lkotlin/jvm/functions/Function1;)V

    .line 81
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Landroidx/core/view/MenuHost;

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/core/view/MenuHost;

    goto :goto_0

    :cond_3
    move-object p1, p3

    :goto_0
    if-eqz p1, :cond_4

    move-object v0, p0

    check-cast v0, Landroidx/core/view/MenuProvider;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/core/view/MenuHost;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V

    .line 82
    :cond_4
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 83
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 84
    const-string v0, "sort_result"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 85
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;)V

    new-instance v2, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 114
    :cond_5
    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    if-nez p0, :cond_6

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object p3, p0

    :goto_1
    invoke-virtual {p3}, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 208
    sget v0, Lfast/dic/dict/R$id;->clear_filter_item:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 209
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewModel()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->clearFilter()V

    .line 211
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Lfast/dic/dict/utils/ContextExtKt;->requestForNewMenu(Landroidx/fragment/app/Fragment;)V

    return v1

    .line 215
    :cond_0
    sget v0, Lfast/dic/dict/R$id;->filter_item:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_6

    .line 216
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewModel()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->retrieveSelectedFilter()Lfast/dic/dict/helpers/FDWordCategory$Filter;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getSubCategory()Ljava/lang/String;

    move-result-object v0

    .line 219
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 221
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p1, v2

    .line 225
    :goto_0
    sget v0, Lfast/dic/dict/R$string;->filter_section:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 226
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getCerf()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 227
    invoke-virtual {p1}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getCerf()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 228
    sget p1, Lfast/dic/dict/R$string;->filter_cefr_levels:I

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 230
    :cond_3
    sget p1, Lfast/dic/dict/R$string;->filter_cefr_unclassified:I

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 232
    :cond_4
    invoke-virtual {p1}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getMostCommon()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 233
    sget p1, Lfast/dic/dict/R$string;->most_common:I

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 235
    :cond_5
    sget p1, Lfast/dic/dict/R$string;->all:I

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v5, p1

    .line 227
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 239
    new-instance v3, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;

    .line 240
    iget-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->filters:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    .line 301
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [Ljava/lang/String;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 239
    invoke-direct/range {v3 .. v8}, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;-><init>([Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 244
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->sortDialog:I

    invoke-virtual {v3}, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    return v1

    :cond_6
    return v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->scrollPosition:Landroid/os/Parcelable;

    .line 51
    const-string v0, "scroll_position"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 53
    invoke-super {p0, p1}, Lfast/dic/dict/presentation/word_category_screen/Hilt_WordCategoryFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/word_category_screen/Hilt_WordCategoryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 120
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getArgs()Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;

    move-result-object p2

    invoke-virtual {p2}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;->getCategory()Lfast/dic/dict/models/WordCategoryModel;

    move-result-object p2

    invoke-virtual {p2}, Lfast/dic/dict/models/WordCategoryModel;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-static {p1, p2}, Lfast/dic/dict/utils/ContextExtKt;->setToolbarTitle(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewModel()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->getState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;)V

    new-instance v1, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 148
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->isCerf()Z

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 149
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewModel()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    move-result-object p1

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getArgs()Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;->getCategory()Lfast/dic/dict/models/WordCategoryModel;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/models/WordCategoryModel;->getCefr()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0, p2, v0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->getCefrWords$default(Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;ILjava/lang/Object;)V

    return-void

    .line 151
    :cond_1
    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getViewModel()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    move-result-object p1

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->getArgs()Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;->getCategory()Lfast/dic/dict/models/WordCategoryModel;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/models/WordCategoryModel;->getId()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0, v0, p2, v0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->getCategory$default(Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;ILfast/dic/dict/helpers/FDWordCategory$Filter;ILjava/lang/Object;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lfast/dic/dict/presentation/word_category_screen/Hilt_WordCategoryFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 61
    const-string v0, "scroll_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->scrollPosition:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method

.method public final setAdapter(Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->adapter:Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;

    return-void
.end method
