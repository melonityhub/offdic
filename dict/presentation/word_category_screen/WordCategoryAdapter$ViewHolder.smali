.class public final Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WordCategoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWordCategoryAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WordCategoryAdapter.kt\nfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n2068#2,2:166\n2068#2,2:168\n2068#2,2:170\n*S KotlinDebug\n*F\n+ 1 WordCategoryAdapter.kt\nfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder\n*L\n54#1:166,2\n84#1:168,2\n114#1:170,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;)V",
        "setBind",
        "",
        "model",
        "Lfast/dic/dict/models/database/CategorizedWordDto;",
        "app"
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
.field private final binding:Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

.field final synthetic this$0:Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;->this$0:Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;

    .line 36
    invoke-virtual {p2}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    .line 39
    invoke-virtual {p2}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;->getOnClickListener()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    iget-object p1, p1, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->getModel()Lfast/dic/dict/models/database/CategorizedWordDto;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final setBind(Lfast/dic/dict/models/database/CategorizedWordDto;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "model"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v2, v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->setIsWordEnglish(Ljava/lang/Boolean;)V

    .line 46
    iget-object v2, v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->setIsMeaningEnglish(Ljava/lang/Boolean;)V

    .line 47
    iget-object v2, v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    invoke-virtual {v2, v1}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->setModel(Lfast/dic/dict/models/database/CategorizedWordDto;)V

    .line 49
    iget-object v2, v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    iget-object v2, v2, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->posContainer:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayout;->removeAllViews()V

    .line 50
    iget-object v2, v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    invoke-virtual {v2}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 54
    invoke-virtual {v1}, Lfast/dic/dict/models/database/CategorizedWordDto;->getSubCategories()Ljava/util/List;

    move-result-object v5

    const/high16 v7, 0x41200000    # 10.0f

    const/16 v8, 0x1a

    const v9, 0x106000b

    const/high16 v12, 0x41000000    # 8.0f

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-eqz v5, :cond_1

    check-cast v5, Ljava/lang/Iterable;

    .line 166
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v15, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 55
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    sget v10, Lfast/dic/dict/R$string;->filter_section:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    sget v10, Lfast/dic/dict/R$style;->TextAppearance_AppCompat_Body1:I

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 58
    sget v10, Lfast/dic/dict/R$drawable;->bg_section_drawable:I

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 59
    invoke-virtual {v2, v9}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v8, :cond_0

    .line 62
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lfast/dic/dict/R$font;->iransansxregular:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v10

    .line 61
    invoke-virtual {v6, v10, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 66
    :cond_0
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 68
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v12, v2, v4, v14, v13}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v10

    const/4 v11, 0x0

    .line 69
    invoke-static {v11, v2, v4, v14, v13}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v7

    .line 70
    invoke-static {v12, v2, v4, v14, v13}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v3

    .line 71
    invoke-static {v11, v2, v4, v14, v13}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v12

    .line 67
    invoke-virtual {v6, v10, v7, v3, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x4

    .line 77
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 78
    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v3, v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    iget-object v3, v3, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->posContainer:Lcom/google/android/flexbox/FlexboxLayout;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v3, v6}, Lcom/google/android/flexbox/FlexboxLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x1

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v12, 0x41000000    # 8.0f

    goto/16 :goto_0

    :cond_1
    move v15, v4

    .line 84
    :cond_2
    invoke-virtual {v1}, Lfast/dic/dict/models/database/CategorizedWordDto;->getCefrs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    check-cast v3, Ljava/lang/Iterable;

    .line 168
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 85
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 86
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget v5, Lfast/dic/dict/R$style;->TextAppearance_AppCompat_Body1:I

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 88
    sget v5, Lfast/dic/dict/R$drawable;->bg_cerf_drawable:I

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 89
    invoke-virtual {v2, v9}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v8, :cond_3

    .line 92
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lfast/dic/dict/R$font;->iransansxregular:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v7, 0x1

    .line 91
    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    const/high16 v5, 0x41200000    # 10.0f

    .line 96
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 98
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5, v2, v4, v14, v13}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v7

    const/4 v11, 0x0

    .line 99
    invoke-static {v11, v2, v4, v14, v13}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v10

    .line 100
    invoke-static {v5, v2, v4, v14, v13}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v12

    .line 101
    invoke-static {v11, v2, v4, v14, v13}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v5

    .line 97
    invoke-virtual {v6, v7, v10, v12, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 103
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x4

    .line 107
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 108
    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v5, v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    iget-object v5, v5, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->posContainer:Lcom/google/android/flexbox/FlexboxLayout;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/google/android/flexbox/FlexboxLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 114
    :cond_4
    invoke-virtual {v1}, Lfast/dic/dict/models/database/CategorizedWordDto;->getPoses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Ljava/lang/Iterable;

    .line 170
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 116
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    sget v3, Lfast/dic/dict/R$style;->TextAppearance_AppCompat_Body1:I

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 118
    sget v3, Lfast/dic/dict/R$drawable;->bg_pos_drawable:I

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 119
    invoke-virtual {v2, v9}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_5

    .line 122
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lfast/dic/dict/R$font;->iransansxregular:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v7, 0x1

    .line 121
    invoke-virtual {v5, v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_3

    :cond_5
    const/4 v7, 0x1

    :goto_3
    const/high16 v3, 0x41200000    # 10.0f

    .line 126
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 128
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6, v2, v4, v14, v13}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v10

    const/4 v11, 0x0

    .line 129
    invoke-static {v11, v2, v4, v14, v13}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v12

    .line 130
    invoke-static {v6, v2, v4, v14, v13}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v3

    .line 131
    invoke-static {v11, v2, v4, v14, v13}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v6

    .line 127
    invoke-virtual {v5, v10, v12, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 133
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x4

    .line 137
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 138
    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v3, v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    iget-object v3, v3, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->posContainer:Lcom/google/android/flexbox/FlexboxLayout;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5}, Lcom/google/android/flexbox/FlexboxLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 144
    :cond_6
    iget-object v0, v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    iget-object v0, v0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->posContainer:Lcom/google/android/flexbox/FlexboxLayout;

    if-nez v15, :cond_7

    const/16 v4, 0x8

    :cond_7
    invoke-virtual {v0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->setVisibility(I)V

    return-void
.end method
