.class public Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;
.super Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;
.source "PricingStickyHeaderLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback32:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->action_button_container:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->divider_view:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 29
    sget-object v0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12

    const/4 v11, 0x1

    .line 32
    aget-object v0, p3, v11

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/tabs/TabLayout;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/material/divider/MaterialDivider;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/tabs/TabLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/divider/MaterialDivider;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V

    const-wide/16 v1, -0x1

    .line 270
    iput-wide v1, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->mDirtyFlags:J

    .line 41
    iget-object v1, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object v1, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->containerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object v1, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->packagePriceTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object v1, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->packageTitleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object v1, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 48
    new-instance v1, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {v1, p0, v11}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->mCallback32:Landroid/view/View$OnClickListener;

    .line 49
    invoke-virtual {p0}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 237
    iget-object p0, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->mModel:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;

    if-eqz p0, :cond_0

    .line 255
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;->getPrimaryCallback()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object p0

    .line 265
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 25

    move-object/from16 v1, p0

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v2, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 103
    iput-wide v4, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->mModel:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;

    const-wide/16 v6, 0x3

    and-long v8, v2, v6

    cmp-long v8, v8, v4

    const-wide/16 v9, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v8, :cond_a

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;->getIcon()I

    move-result v8

    .line 133
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;->getAiPlan()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v13

    .line 135
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;->getColor()I

    move-result v14

    .line 137
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;->getSelectedMonth()Ljava/lang/String;

    move-result-object v15

    .line 139
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;->getPrice()Ljava/lang/String;

    move-result-object v16

    .line 141
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;->getHasPlan()Z

    move-result v17

    .line 143
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;->getTitle()Ljava/lang/String;

    move-result-object v18

    .line 145
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;->getHideButton()Z

    move-result v19

    .line 147
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;->isLoggedIn()Z

    move-result v20

    .line 149
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;->getProPlan()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v0

    move-wide/from16 v23, v4

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-wide/from16 v16, v23

    goto :goto_0

    :cond_0
    move-wide/from16 v16, v4

    move v5, v11

    move v8, v5

    move v14, v8

    move/from16 v19, v14

    move/from16 v20, v19

    move-object v0, v12

    move-object v4, v0

    move-object v13, v4

    move-object v15, v13

    move-object/from16 v18, v15

    :goto_0
    and-long v21, v2, v9

    cmp-long v21, v21, v16

    if-eqz v21, :cond_2

    if-eqz v5, :cond_1

    const-wide/16 v21, 0x20

    goto :goto_1

    :cond_1
    const-wide/16 v21, 0x10

    :goto_1
    or-long v2, v2, v21

    :cond_2
    and-long v21, v2, v6

    cmp-long v21, v21, v16

    if-eqz v21, :cond_4

    if-eqz v19, :cond_3

    const-wide/16 v21, 0x80

    goto :goto_2

    :cond_3
    const-wide/16 v21, 0x40

    :goto_2
    or-long v2, v2, v21

    :cond_4
    and-long v21, v2, v6

    cmp-long v21, v21, v16

    if-eqz v21, :cond_6

    if-eqz v20, :cond_5

    or-long/2addr v2, v9

    goto :goto_3

    :cond_5
    const-wide/16 v21, 0x4

    or-long v2, v2, v21

    :cond_6
    :goto_3
    if-eqz v13, :cond_7

    .line 179
    invoke-virtual {v13}, Lfast/dic/dict/domain/entity/pricing/Plan;->getTitle()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_7
    move-object v13, v12

    :goto_4
    move-wide/from16 v21, v6

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    xor-int/lit8 v6, v5, 0x1

    if-eqz v19, :cond_8

    const/16 v7, 0x8

    move v11, v7

    :cond_8
    if-eqz v0, :cond_9

    .line 189
    invoke-virtual {v0}, Lfast/dic/dict/domain/entity/pricing/Plan;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    move-object v0, v12

    .line 194
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v7, v11

    move v11, v5

    move v5, v7

    move-object/from16 v7, v18

    goto :goto_6

    :cond_a
    move-wide/from16 v16, v4

    move-wide/from16 v21, v6

    move v5, v11

    move v6, v5

    move v8, v6

    move v14, v8

    move/from16 v20, v14

    move-object v0, v12

    move-object v4, v0

    move-object v7, v4

    move-object v13, v7

    :goto_6
    and-long/2addr v9, v2

    cmp-long v9, v9, v16

    if-eqz v9, :cond_c

    .line 201
    iget-object v9, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v11, :cond_b

    sget v10, Lfast/dic/dict/R$string;->is_activate:I

    goto :goto_7

    :cond_b
    sget v10, Lfast/dic/dict/R$string;->activate_or_restore_button_title:I

    :goto_7
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_c
    move-object v9, v12

    :goto_8
    and-long v10, v2, v21

    cmp-long v10, v10, v16

    if-eqz v10, :cond_e

    if-eqz v20, :cond_d

    goto :goto_9

    .line 207
    :cond_d
    iget-object v9, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v11, Lfast/dic/dict/R$string;->activate_and_login_button_title:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_9
    move-object v12, v9

    :cond_e
    if-eqz v10, :cond_f

    .line 213
    iget-object v9, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v9, v13}, Lfast/dic/dict/presentation/pricing_screen/adapter/BindingAdapters;->updateFirstTabText(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;)V

    .line 214
    iget-object v9, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v9, v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/BindingAdapters;->updateSecondTabText(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;)V

    .line 215
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->packagePriceTv:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->packagePriceTv:Landroid/widget/TextView;

    invoke-static {v0, v14}, Lfast/dic/dict/presentation/pricing_screen/adapter/BindingAdapters;->changeTextColor(Landroid/widget/TextView;I)V

    .line 217
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->packagePriceTv:Landroid/widget/TextView;

    invoke-static {v0, v14}, Lfast/dic/dict/BindingAdapters;->setIconTintColorTextView(Landroid/widget/TextView;I)V

    .line 218
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->packageTitleTv:Landroid/widget/TextView;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->packageTitleTv:Landroid/widget/TextView;

    invoke-static {v0, v14}, Lfast/dic/dict/presentation/pricing_screen/adapter/BindingAdapters;->changeTextColor(Landroid/widget/TextView;I)V

    .line 220
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->packageTitleTv:Landroid/widget/TextView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lfast/dic/dict/BindingAdapters;->setRightIcon(Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 221
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->packageTitleTv:Landroid/widget/TextView;

    invoke-static {v0, v14}, Lfast/dic/dict/BindingAdapters;->setIconTintColorTextView(Landroid/widget/TextView;I)V

    .line 222
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 224
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->purchaseButton:Landroid/widget/Button;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_f
    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    cmp-long v0, v2, v16

    if-eqz v0, :cond_10

    .line 229
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->purchaseButton:Landroid/widget/Button;

    iget-object v1, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->mCallback32:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    return-void

    :catchall_0
    move-exception v0

    .line 104
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 64
    monitor-exit p0

    return v0

    .line 66
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 54
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 55
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->mDirtyFlags:J

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {p0}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setModel(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;)V
    .locals 4

    .line 83
    iput-object p1, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->mModel:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->mDirtyFlags:J

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 87
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 88
    invoke-super {p0}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 86
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x1e

    if-ne v0, p1, :cond_0

    .line 74
    check-cast p2, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;->setModel(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
