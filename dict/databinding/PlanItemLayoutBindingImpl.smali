.class public Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/PlanItemLayoutBinding;
.source "PlanItemLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback7:Landroid/view/View$OnClickListener;

.field private final mCallback8:Landroid/view/View$OnClickListener;

.field private final mCallback9:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->header_cv:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->divider_view_1:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lfast/dic/dict/R$id;->price_cv:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lfast/dic/dict/R$id;->first_month_layout:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lfast/dic/dict/R$id;->first_inner_month_layout:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v1, Lfast/dic/dict/R$id;->first_duration_tv:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget v1, Lfast/dic/dict/R$id;->first_price_rb:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget v1, Lfast/dic/dict/R$id;->second_month_layout:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget v1, Lfast/dic/dict/R$id;->second_inner_month_layout:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget v1, Lfast/dic/dict/R$id;->second_duration_tv:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget v1, Lfast/dic/dict/R$id;->second_price_rb:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget v1, Lfast/dic/dict/R$id;->third_month_layout:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget v1, Lfast/dic/dict/R$id;->third_inner_month_layout:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget v1, Lfast/dic/dict/R$id;->third_duration_tv:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget v1, Lfast/dic/dict/R$id;->third_price_rb:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget v1, Lfast/dic/dict/R$id;->divider_view:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget v1, Lfast/dic/dict/R$id;->divider_tv:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget v1, Lfast/dic/dict/R$id;->action_button_container:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget v1, Lfast/dic/dict/R$id;->purchase_button:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget v1, Lfast/dic/dict/R$id;->repurchase_button:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 53
    sget-object v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x25

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 40

    const/16 v0, 0x22

    .line 56
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x21

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/16 v0, 0x20

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/card/MaterialCardView;

    const/16 v0, 0x12

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/material/divider/MaterialDivider;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/16 v0, 0x16

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0x15

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/material/card/MaterialCardView;

    const/16 v0, 0x14

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x17

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ImageView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    const/16 v0, 0x11

    aget-object v0, p3, v0

    move-object v15, v0

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x3

    aget-object v1, p3, v0

    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v2, p3, v1

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v3, p3, v2

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/ImageView;

    const/16 v3, 0x13

    aget-object v3, p3, v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/LinearLayout;

    const/16 v3, 0x23

    aget-object v3, p3, v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/Button;

    const/16 v3, 0x24

    aget-object v3, p3, v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/Button;

    const/16 v3, 0xb

    aget-object v3, p3, v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/TextView;

    const/16 v3, 0x8

    aget-object v3, p3, v3

    move-object/from16 v23, v3

    check-cast v23, Lfast/dic/dict/presentation/pricing_screen/custom/CrossedLineTextView;

    const/16 v3, 0x1a

    aget-object v3, p3, v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/TextView;

    const/16 v3, 0x9

    aget-object v3, p3, v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/TextView;

    const/16 v3, 0x19

    aget-object v3, p3, v3

    move-object/from16 v26, v3

    check-cast v26, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x7

    aget-object v3, p3, v3

    move-object/from16 v27, v3

    check-cast v27, Lcom/google/android/material/card/MaterialCardView;

    const/16 v3, 0x18

    aget-object v3, p3, v3

    move-object/from16 v28, v3

    check-cast v28, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0x1b

    aget-object v3, p3, v3

    move-object/from16 v29, v3

    check-cast v29, Landroid/widget/ImageView;

    const/16 v3, 0xa

    aget-object v3, p3, v3

    move-object/from16 v30, v3

    check-cast v30, Landroid/widget/TextView;

    const/16 v3, 0x10

    aget-object v3, p3, v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/widget/TextView;

    const/16 v3, 0xd

    aget-object v3, p3, v3

    move-object/from16 v32, v3

    check-cast v32, Lfast/dic/dict/presentation/pricing_screen/custom/CrossedLineTextView;

    const/16 v3, 0x1e

    aget-object v3, p3, v3

    move-object/from16 v33, v3

    check-cast v33, Landroid/widget/TextView;

    const/16 v3, 0xe

    aget-object v3, p3, v3

    move-object/from16 v34, v3

    check-cast v34, Landroid/widget/TextView;

    const/16 v3, 0x1d

    aget-object v3, p3, v3

    move-object/from16 v35, v3

    check-cast v35, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0xc

    aget-object v3, p3, v3

    move-object/from16 v36, v3

    check-cast v36, Lcom/google/android/material/card/MaterialCardView;

    const/16 v3, 0x1c

    aget-object v3, p3, v3

    move-object/from16 v37, v3

    check-cast v37, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0x1f

    aget-object v3, p3, v3

    move-object/from16 v38, v3

    check-cast v38, Landroid/widget/ImageView;

    const/16 v3, 0xf

    aget-object v3, p3, v3

    move-object/from16 v39, v3

    check-cast v39, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v39}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/divider/MaterialDivider;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/card/MaterialCardView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lfast/dic/dict/presentation/pricing_screen/custom/CrossedLineTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/card/MaterialCardView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lfast/dic/dict/presentation/pricing_screen/custom/CrossedLineTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/card/MaterialCardView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    .line 438
    iput-wide v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    .line 94
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->firstAlphabetPriceTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->firstMonthCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1, v2}, Lcom/google/android/material/card/MaterialCardView;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->firstPriceTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 97
    aget-object v1, p3, v1

    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    iput-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    .line 98
    invoke-virtual {v1, v2}, Lcom/google/android/material/card/MaterialCardView;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->packageDurationTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 100
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->packageTitleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->planTitleTv:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 102
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->secondAlphabetPriceTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->secondDealTv:Lfast/dic/dict/presentation/pricing_screen/custom/CrossedLineTextView;

    invoke-virtual {v1, v2}, Lfast/dic/dict/presentation/pricing_screen/custom/CrossedLineTextView;->setTag(Ljava/lang/Object;)V

    .line 104
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->secondFreeMonthsTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->secondMonthCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1, v2}, Lcom/google/android/material/card/MaterialCardView;->setTag(Ljava/lang/Object;)V

    .line 106
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->secondPriceTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 107
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->thirdAlphabetPriceTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->thirdDealTv:Lfast/dic/dict/presentation/pricing_screen/custom/CrossedLineTextView;

    invoke-virtual {v1, v2}, Lfast/dic/dict/presentation/pricing_screen/custom/CrossedLineTextView;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->thirdFreeMonthsTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 110
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->thirdMonthCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1, v2}, Lcom/google/android/material/card/MaterialCardView;->setTag(Ljava/lang/Object;)V

    .line 111
    iget-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->thirdPriceTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v2, p2

    .line 112
    invoke-virtual {v0, v2}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 114
    new-instance v1, Lfast/dic/dict/generated/callback/OnClickListener;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mCallback9:Landroid/view/View$OnClickListener;

    .line 115
    new-instance v1, Lfast/dic/dict/generated/callback/OnClickListener;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mCallback8:Landroid/view/View$OnClickListener;

    .line 116
    new-instance v1, Lfast/dic/dict/generated/callback/OnClickListener;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mCallback7:Landroid/view/View$OnClickListener;

    .line 117
    invoke-virtual {v0}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mTwelfthMonthPlanClicked:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    .line 395
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void

    .line 402
    :cond_2
    iget-object p0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mSixthMonthPlanClicked:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_3

    .line 413
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    return-void

    .line 422
    :cond_4
    iget-object p0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mFirstMonthPlanClicked:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_5

    .line 431
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method protected executeBindings()V
    .locals 28

    move-object/from16 v1, p0

    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    iget-wide v2, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 243
    iput-wide v4, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    .line 244
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mModel:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    .line 248
    iget-object v6, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mPlanIcon:Ljava/lang/Integer;

    .line 251
    iget-object v7, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mFirstMonthPlanClicked:Landroid/view/View$OnClickListener;

    .line 252
    iget-object v7, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mSixthMonthPlanClicked:Landroid/view/View$OnClickListener;

    .line 254
    iget-object v7, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mTwelfthMonthPlanClicked:Landroid/view/View$OnClickListener;

    .line 257
    iget-object v7, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mHasPlan:Ljava/lang/Boolean;

    .line 264
    iget-object v8, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mPlanColor:Ljava/lang/Integer;

    const-wide/16 v9, 0x101

    and-long v11, v2, v9

    cmp-long v11, v11, v4

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getSubscriptionMessage()Ljava/lang/String;

    move-result-object v11

    .line 275
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getThirdDurationPriceToWord()Ljava/lang/String;

    move-result-object v13

    .line 277
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getFirstDurationPriceToWord()Ljava/lang/String;

    move-result-object v14

    .line 279
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getPlan()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v15

    .line 281
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getSecondDurationPriceToWord()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v12

    move-object v11, v0

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    :goto_0
    if-eqz v15, :cond_1

    .line 287
    invoke-virtual {v15}, Lfast/dic/dict/domain/entity/pricing/Plan;->getTitle()Ljava/lang/String;

    move-result-object v16

    .line 289
    invoke-virtual {v15}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object v15

    goto :goto_1

    :cond_1
    move-object v15, v12

    move-object/from16 v16, v15

    :goto_1
    if-eqz v15, :cond_2

    .line 295
    invoke-virtual {v15}, Lfast/dic/dict/domain/entity/pricing/Price;->get1()Ljava/lang/String;

    move-result-object v12

    .line 297
    invoke-virtual {v15}, Lfast/dic/dict/domain/entity/pricing/Price;->get6()Ljava/lang/String;

    move-result-object v17

    .line 299
    invoke-virtual {v15}, Lfast/dic/dict/domain/entity/pricing/Price;->get12()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v26, v4

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v12, v17

    move-wide/from16 v16, v26

    goto :goto_2

    :cond_2
    move-wide/from16 v26, v4

    move-object/from16 v5, v16

    move-wide/from16 v16, v26

    move-object v4, v12

    move-object v15, v4

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v4

    move-object v0, v12

    move-object v4, v0

    move-object v5, v4

    move-object v11, v5

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    :goto_2
    const-wide/16 v18, 0x102

    and-long v20, v2, v18

    cmp-long v20, v20, v16

    const/16 v21, 0x0

    if-eqz v20, :cond_4

    .line 307
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v6

    goto :goto_3

    :cond_4
    move/from16 v6, v21

    :goto_3
    const-wide/16 v22, 0x140

    and-long v24, v2, v22

    cmp-long v20, v24, v16

    if-eqz v20, :cond_8

    .line 314
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v7

    if-eqz v20, :cond_6

    if-eqz v7, :cond_5

    const-wide/16 v24, 0x400

    goto :goto_4

    :cond_5
    const-wide/16 v24, 0x200

    :goto_4
    or-long v2, v2, v24

    :cond_6
    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    const/16 v7, 0x8

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v7, v21

    :goto_6
    const-wide/16 v24, 0x180

    and-long v24, v2, v24

    cmp-long v20, v24, v16

    if-eqz v20, :cond_9

    .line 333
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v21

    :cond_9
    move/from16 v8, v21

    and-long/2addr v9, v2

    cmp-long v9, v9, v16

    if-eqz v9, :cond_a

    .line 339
    iget-object v9, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->firstAlphabetPriceTv:Landroid/widget/TextView;

    invoke-static {v9, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 340
    iget-object v9, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->firstPriceTv:Landroid/widget/TextView;

    invoke-static {v9, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 341
    iget-object v9, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->packageDurationTv:Landroid/widget/TextView;

    invoke-static {v9, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 342
    iget-object v9, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->packageTitleTv:Landroid/widget/TextView;

    invoke-static {v9, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 343
    iget-object v5, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->secondAlphabetPriceTv:Landroid/widget/TextView;

    invoke-static {v5, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->secondDealTv:Lfast/dic/dict/presentation/pricing_screen/custom/CrossedLineTextView;

    const/4 v5, 0x6

    invoke-static {v0, v5, v4, v12}, Lfast/dic/dict/presentation/pricing_screen/adapter/BindingAdapters;->bindingStrikeThroughMonths(Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->secondFreeMonthsTv:Landroid/widget/TextView;

    invoke-static {v0, v5, v4, v12}, Lfast/dic/dict/presentation/pricing_screen/adapter/BindingAdapters;->bindingFreeMonthsBadge(Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->secondPriceTv:Landroid/widget/TextView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->thirdAlphabetPriceTv:Landroid/widget/TextView;

    invoke-static {v0, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->thirdDealTv:Lfast/dic/dict/presentation/pricing_screen/custom/CrossedLineTextView;

    const/16 v5, 0xc

    invoke-static {v0, v5, v4, v15}, Lfast/dic/dict/presentation/pricing_screen/adapter/BindingAdapters;->bindingStrikeThroughMonths(Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->thirdFreeMonthsTv:Landroid/widget/TextView;

    invoke-static {v0, v5, v4, v15}, Lfast/dic/dict/presentation/pricing_screen/adapter/BindingAdapters;->bindingFreeMonthsBadge(Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->thirdPriceTv:Landroid/widget/TextView;

    invoke-static {v0, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_a
    const-wide/16 v4, 0x100

    and-long/2addr v4, v2

    cmp-long v0, v4, v16

    if-eqz v0, :cond_b

    .line 355
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->firstMonthCard:Lcom/google/android/material/card/MaterialCardView;

    iget-object v4, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mCallback7:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->secondMonthCard:Lcom/google/android/material/card/MaterialCardView;

    iget-object v4, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mCallback8:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->thirdMonthCard:Lcom/google/android/material/card/MaterialCardView;

    iget-object v4, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mCallback9:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    and-long v4, v2, v22

    cmp-long v0, v4, v16

    if-eqz v0, :cond_c

    .line 362
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->packageDurationTv:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    if-eqz v20, :cond_d

    .line 367
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->packageDurationTv:Landroid/widget/TextView;

    invoke-static {v0, v8}, Lfast/dic/dict/presentation/pricing_screen/adapter/BindingAdapters;->changeTextColor(Landroid/widget/TextView;I)V

    .line 368
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->packageTitleTv:Landroid/widget/TextView;

    invoke-static {v0, v8}, Lfast/dic/dict/presentation/pricing_screen/adapter/BindingAdapters;->changeTextColor(Landroid/widget/TextView;I)V

    .line 369
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->planTitleTv:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lfast/dic/dict/BindingAdapters;->setIconTintColorImageView(Landroid/widget/ImageView;I)V

    :cond_d
    and-long v2, v2, v18

    cmp-long v0, v2, v16

    if-eqz v0, :cond_e

    .line 374
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->planTitleTv:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lfast/dic/dict/presentation/pricing_screen/adapter/BindingAdapters;->changeImage(Landroid/widget/ImageView;I)V

    :cond_e
    return-void

    :catchall_0
    move-exception v0

    .line 244
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 132
    monitor-exit p0

    return v0

    .line 134
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

    .line 122
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 123
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {p0}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 124
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

.method public setFirstMonthPlanClicked(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 188
    iput-object p1, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mFirstMonthPlanClicked:Landroid/view/View$OnClickListener;

    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    .line 191
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x11

    .line 192
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 193
    invoke-super {p0}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 191
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHasPlan(Ljava/lang/Boolean;)V
    .locals 4

    .line 215
    iput-object p1, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mHasPlan:Ljava/lang/Boolean;

    .line 216
    monitor-enter p0

    .line 217
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    .line 218
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x12

    .line 219
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 220
    invoke-super {p0}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 218
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setModel(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;)V
    .locals 4

    .line 172
    iput-object p1, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mModel:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    .line 175
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 176
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 177
    invoke-super {p0}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 175
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPlanColor(Ljava/lang/Integer;)V
    .locals 4

    .line 223
    iput-object p1, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mPlanColor:Ljava/lang/Integer;

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    .line 226
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 227
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 228
    invoke-super {p0}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 226
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPlanIcon(Ljava/lang/Integer;)V
    .locals 4

    .line 180
    iput-object p1, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mPlanIcon:Ljava/lang/Integer;

    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    .line 183
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x29

    .line 184
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 185
    invoke-super {p0}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 183
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSelectedDuration(Ljava/lang/Integer;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mSelectedDuration:Ljava/lang/Integer;

    return-void
.end method

.method public setSixthMonthPlanClicked(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 196
    iput-object p1, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mSixthMonthPlanClicked:Landroid/view/View$OnClickListener;

    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x31

    .line 200
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 201
    invoke-super {p0}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 199
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTwelfthMonthPlanClicked(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 204
    iput-object p1, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mTwelfthMonthPlanClicked:Landroid/view/View$OnClickListener;

    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->mDirtyFlags:J

    .line 207
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x35

    .line 208
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 209
    invoke-super {p0}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 207
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x1e

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 142
    check-cast p2, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->setModel(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;)V

    return v1

    :cond_0
    const/16 v0, 0x29

    if-ne v0, p1, :cond_1

    .line 145
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->setPlanIcon(Ljava/lang/Integer;)V

    return v1

    :cond_1
    const/16 v0, 0x11

    if-ne v0, p1, :cond_2

    .line 148
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->setFirstMonthPlanClicked(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_2
    const/16 v0, 0x31

    if-ne v0, p1, :cond_3

    .line 151
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->setSixthMonthPlanClicked(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_3
    const/16 v0, 0x35

    if-ne v0, p1, :cond_4

    .line 154
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->setTwelfthMonthPlanClicked(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_4
    const/16 v0, 0x30

    if-ne v0, p1, :cond_5

    .line 157
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->setSelectedDuration(Ljava/lang/Integer;)V

    return v1

    :cond_5
    const/16 v0, 0x12

    if-ne v0, p1, :cond_6

    .line 160
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->setHasPlan(Ljava/lang/Boolean;)V

    return v1

    :cond_6
    const/16 v0, 0x28

    if-ne v0, p1, :cond_7

    .line 163
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;->setPlanColor(Ljava/lang/Integer;)V

    return v1

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
