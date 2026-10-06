.class public final Lfast/dic/dict/fragments/MoreFragment;
.super Lfast/dic/dict/fragments/Hilt_MoreFragment;
.source "MoreFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/fragments/MoreFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMoreFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoreFragment.kt\nfast/dic/dict/fragments/MoreFragment\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,259:1\n30#2:260\n*S KotlinDebug\n*F\n+ 1 MoreFragment.kt\nfast/dic/dict/fragments/MoreFragment\n*L\n184#1:260\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00162\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\"H\u0002J\u000e\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$H\u0002R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\n\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R+\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00ca\u0001\u0002\u0008\'\u00a8\u0006&"
    }
    d2 = {
        "Lfast/dic/dict/fragments/MoreFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "<init>",
        "()V",
        "adapter",
        "Lfast/dic/dict/adapters/MoreAdapter;",
        "getAdapter",
        "()Lfast/dic/dict/adapters/MoreAdapter;",
        "setAdapter",
        "(Lfast/dic/dict/adapters/MoreAdapter;)V",
        "Ljavax/inject/Inject;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentMoreBinding;",
        "<set-?>",
        "",
        "isCurrentLanguagePersian",
        "()Z",
        "setCurrentLanguagePersian",
        "(Z)V",
        "isCurrentLanguagePersian$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "selectedRowListener",
        "position",
        "",
        "getRowsFromPageType",
        "",
        "Lfast/dic/dict/adapters/MoreRowModel;",
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


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adapter:Lfast/dic/dict/adapters/MoreAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private binding:Lfast/dic/dict/databinding/FragmentMoreBinding;

.field private final isCurrentLanguagePersian$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "isCurrentLanguagePersian"

    const-string v3, "isCurrentLanguagePersian()Z"

    const-class v4, Lfast/dic/dict/fragments/MoreFragment;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v5

    sput-object v0, Lfast/dic/dict/fragments/MoreFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lfast/dic/dict/fragments/Hilt_MoreFragment;-><init>()V

    .line 43
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/fragments/MoreFragment;->isCurrentLanguagePersian$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method private final getRowsFromPageType()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/adapters/MoreRowModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isPlayStore()Z

    move-result v2

    const-string v3, "getString(...)"

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {v0}, Lfast/dic/dict/fragments/MoreFragment;->isCurrentLanguagePersian()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-static {v2}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->hasSubscription(Lcom/parse/ParseUser;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    new-instance v2, Lfast/dic/dict/adapters/MoreRowModel;

    .line 228
    sget v4, Lfast/dic/dict/R$string;->subscription_renewal:I

    invoke-virtual {v0, v4}, Lfast/dic/dict/fragments/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    sget-object v5, Lfast/dic/dict/adapters/MoreRowEnum;->SUBSCRIPTIONS:Lfast/dic/dict/adapters/MoreRowEnum;

    .line 227
    invoke-direct {v2, v4, v5}, Lfast/dic/dict/adapters/MoreRowModel;-><init>(Ljava/lang/String;Lfast/dic/dict/adapters/MoreRowEnum;)V

    .line 226
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_1
    new-instance v2, Lfast/dic/dict/adapters/MoreRowModel;

    .line 235
    sget v4, Lfast/dic/dict/R$string;->remove_ads_and_by_pro_subscription:I

    invoke-virtual {v0, v4}, Lfast/dic/dict/fragments/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    sget-object v5, Lfast/dic/dict/adapters/MoreRowEnum;->SUBSCRIPTIONS:Lfast/dic/dict/adapters/MoreRowEnum;

    .line 234
    invoke-direct {v2, v4, v5}, Lfast/dic/dict/adapters/MoreRowModel;-><init>(Ljava/lang/String;Lfast/dic/dict/adapters/MoreRowEnum;)V

    .line 233
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_2
    :goto_0
    new-instance v2, Lfast/dic/dict/adapters/MoreRowModel;

    sget v4, Lfast/dic/dict/R$string;->SettingsMenu:I

    invoke-virtual {v0, v4}, Lfast/dic/dict/fragments/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lfast/dic/dict/adapters/MoreRowEnum;->SETTINGS:Lfast/dic/dict/adapters/MoreRowEnum;

    invoke-direct {v2, v4, v5}, Lfast/dic/dict/adapters/MoreRowModel;-><init>(Ljava/lang/String;Lfast/dic/dict/adapters/MoreRowEnum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v2, Lfast/dic/dict/adapters/MoreRowModel;

    sget v4, Lfast/dic/dict/R$string;->ContactMenu:I

    invoke-virtual {v0, v4}, Lfast/dic/dict/fragments/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lfast/dic/dict/adapters/MoreRowEnum;->CONTACT_US:Lfast/dic/dict/adapters/MoreRowEnum;

    invoke-direct {v2, v4, v5}, Lfast/dic/dict/adapters/MoreRowModel;-><init>(Ljava/lang/String;Lfast/dic/dict/adapters/MoreRowEnum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v2, Lfast/dic/dict/adapters/MoreRowModel;

    sget v4, Lfast/dic/dict/R$string;->AboutMenu:I

    invoke-virtual {v0, v4}, Lfast/dic/dict/fragments/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lfast/dic/dict/adapters/MoreRowEnum;->ABOUT_US:Lfast/dic/dict/adapters/MoreRowEnum;

    invoke-direct {v2, v4, v5}, Lfast/dic/dict/adapters/MoreRowModel;-><init>(Ljava/lang/String;Lfast/dic/dict/adapters/MoreRowEnum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v2, Lfast/dic/dict/adapters/MoreRowModel;

    sget v4, Lfast/dic/dict/R$string;->SuggestMenu:I

    invoke-virtual {v0, v4}, Lfast/dic/dict/fragments/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lfast/dic/dict/adapters/MoreRowEnum;->SUGGESTION:Lfast/dic/dict/adapters/MoreRowEnum;

    invoke-direct {v2, v4, v5}, Lfast/dic/dict/adapters/MoreRowModel;-><init>(Ljava/lang/String;Lfast/dic/dict/adapters/MoreRowEnum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v2, Lfast/dic/dict/adapters/MoreRowModel;

    sget v4, Lfast/dic/dict/R$string;->RateMenu:I

    invoke-virtual {v0, v4}, Lfast/dic/dict/fragments/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lfast/dic/dict/adapters/MoreRowEnum;->RATE_US:Lfast/dic/dict/adapters/MoreRowEnum;

    invoke-direct {v2, v4, v5}, Lfast/dic/dict/adapters/MoreRowModel;-><init>(Ljava/lang/String;Lfast/dic/dict/adapters/MoreRowEnum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v2, Lfast/dic/dict/adapters/MoreRowModel;

    sget v4, Lfast/dic/dict/R$string;->HelpMenu:I

    invoke-virtual {v0, v4}, Lfast/dic/dict/fragments/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lfast/dic/dict/adapters/MoreRowEnum;->HELP:Lfast/dic/dict/adapters/MoreRowEnum;

    invoke-direct {v2, v4, v5}, Lfast/dic/dict/adapters/MoreRowModel;-><init>(Ljava/lang/String;Lfast/dic/dict/adapters/MoreRowEnum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v2, Lfast/dic/dict/adapters/MoreRowModel;

    sget v4, Lfast/dic/dict/R$string;->TermsAndConditionsMenu:I

    invoke-virtual {v0, v4}, Lfast/dic/dict/fragments/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lfast/dic/dict/adapters/MoreRowEnum;->TERMS:Lfast/dic/dict/adapters/MoreRowEnum;

    invoke-direct {v2, v4, v5}, Lfast/dic/dict/adapters/MoreRowModel;-><init>(Ljava/lang/String;Lfast/dic/dict/adapters/MoreRowEnum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v2, Lfast/dic/dict/adapters/MoreRowModel;

    .line 250
    sget v4, Lfast/dic/dict/R$string;->copyright:I

    invoke-virtual {v0, v4}, Lfast/dic/dict/fragments/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 251
    const-string/jumbo v6, "{{version}}"

    const-string v7, "5.7.4"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 252
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string/jumbo v12, "{{copyright}}"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 253
    sget-object v3, Lfast/dic/dict/adapters/MoreRowEnum;->VERSION:Lfast/dic/dict/adapters/MoreRowEnum;

    .line 249
    invoke-direct {v2, v0, v3}, Lfast/dic/dict/adapters/MoreRowModel;-><init>(Ljava/lang/String;Lfast/dic/dict/adapters/MoreRowEnum;)V

    .line 248
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private final isCurrentLanguagePersian()Z
    .locals 3

    .line 43
    iget-object v0, p0, Lfast/dic/dict/fragments/MoreFragment;->isCurrentLanguagePersian$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lfast/dic/dict/fragments/MoreFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/fragments/MoreFragment;Lfast/dic/dict/adapters/MoreRowModel;I)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p2}, Lfast/dic/dict/fragments/MoreFragment;->selectedRowListener(I)V

    .line 57
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/fragments/MoreFragment;)Lkotlin/Unit;
    .locals 3

    .line 59
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget v0, Lfast/dic/dict/R$id;->newPricingFragment:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    .line 60
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final selectedRowListener(I)V
    .locals 7

    if-ltz p1, :cond_6

    .line 76
    invoke-virtual {p0}, Lfast/dic/dict/fragments/MoreFragment;->getAdapter()Lfast/dic/dict/adapters/MoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/adapters/MoreAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 79
    invoke-virtual {p0}, Lfast/dic/dict/fragments/MoreFragment;->getAdapter()Lfast/dic/dict/adapters/MoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/adapters/MoreAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/adapters/MoreRowModel;

    invoke-virtual {v0}, Lfast/dic/dict/adapters/MoreRowModel;->getType()Lfast/dic/dict/adapters/MoreRowEnum;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/fragments/MoreFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lfast/dic/dict/adapters/MoreRowEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "com.farsitel.bazaar"

    const-string v2, "bazaar://details?id=fast.dic.dict"

    const-string v3, "https://cafebazaar.ir/app/fast.dic.dict"

    const/4 v4, 0x0

    const-string v5, "android.intent.action.VIEW"

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 196
    :pswitch_0
    new-instance p1, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;

    sget-object v0, Lfast/dic/dict/fragments/MorePagesEnum;->Terms:Lfast/dic/dict/fragments/MorePagesEnum;

    invoke-direct {p1, v0}, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;-><init>(Lfast/dic/dict/fragments/MorePagesEnum;)V

    .line 199
    :try_start_0
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    .line 201
    sget v0, Lfast/dic/dict/R$id;->moreInnerFragment:I

    .line 202
    invoke-virtual {p1}, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 200
    invoke-static {p0, v0, p1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 205
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 191
    :pswitch_1
    invoke-virtual {p0}, Lfast/dic/dict/fragments/MoreFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "requireActivity(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Activity;

    const-string p1, "https://fastdic.com/blog/category/help"

    invoke-static {p0, p1}, Lfast/dic/dict/utils/ContextExtKt;->openChromeTab(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 165
    :pswitch_2
    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isBazaar()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, p1}, Lfast/dic/dict/fragments/MoreFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 173
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 175
    new-instance p1, Landroid/content/Intent;

    .line 177
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 175
    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    invoke-virtual {p0, p1}, Lfast/dic/dict/fragments/MoreFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 183
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lfast/dic/dict/fragments/MoreFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0}, Lfast/dic/dict/fragments/MoreFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {p0, p1}, Lfast/dic/dict/utils/ContextExtKt;->startActivityWithIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 116
    :pswitch_3
    :try_start_2
    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isBazaar()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz p1, :cond_2

    .line 118
    :try_start_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, p1}, Lfast/dic/dict/fragments/MoreFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 125
    :try_start_4
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 127
    new-instance p1, Landroid/content/Intent;

    .line 129
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    invoke-virtual {p0, p1}, Lfast/dic/dict/fragments/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 138
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 139
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v0, "android.intent.extra.SUBJECT"

    .line 142
    sget v1, Lfast/dic/dict/R$string;->fast_dictionary_description:I

    .line 140
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string v0, "android.intent.extra.TEXT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    sget v2, Lfast/dic/dict/R$string;->Invite_user_part1:I

    invoke-virtual {p0, v2}, Lfast/dic/dict/fragments/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    const-string v2, "\nhttps://fastdic.com/softwares/android \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    sget v2, Lfast/dic/dict/R$string;->Invite_user_part2:I

    invoke-virtual {p0, v2}, Lfast/dic/dict/fragments/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Lfast/dic/dict/fragments/MoreFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 155
    sget v1, Lfast/dic/dict/R$string;->offer_fast_dictionary:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/fragments/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 153
    invoke-static {p1, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "createChooser(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {v0, p0}, Lfast/dic/dict/utils/ContextExtKt;->startActivityWithIntent(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    return-void

    .line 158
    :catch_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 98
    :pswitch_4
    invoke-direct {p0}, Lfast/dic/dict/fragments/MoreFragment;->isCurrentLanguagePersian()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    goto :goto_0

    :cond_4
    const-string v0, "/english"

    .line 99
    :goto_0
    new-instance v1, Lfast/dic/dict/fragments/HelpFragmentArgs;

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://fastdic.com/partners"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?disableSections=true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {p0}, Lfast/dic/dict/fragments/MoreFragment;->getAdapter()Lfast/dic/dict/adapters/MoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/adapters/MoreAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfast/dic/dict/adapters/MoreRowModel;

    invoke-virtual {p1}, Lfast/dic/dict/adapters/MoreRowModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 99
    invoke-direct/range {v1 .. v6}, Lfast/dic/dict/fragments/HelpFragmentArgs;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    invoke-virtual {v1}, Lfast/dic/dict/fragments/HelpFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 105
    :try_start_5
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    .line 106
    sget v0, Lfast/dic/dict/R$id;->helpFragment:I

    invoke-static {p0, v0, p1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    return-void

    :catch_4
    move-exception v0

    move-object p0, v0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 87
    :pswitch_5
    new-instance p1, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;

    sget-object v0, Lfast/dic/dict/fragments/MorePagesEnum;->ContactUs:Lfast/dic/dict/fragments/MorePagesEnum;

    invoke-direct {p1, v0}, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;-><init>(Lfast/dic/dict/fragments/MorePagesEnum;)V

    .line 89
    :try_start_6
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    .line 90
    sget v0, Lfast/dic/dict/R$id;->moreInnerFragment:I

    invoke-virtual {p1}, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    return-void

    :catch_5
    move-exception v0

    move-object p0, v0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    :pswitch_6
    return-void

    .line 83
    :pswitch_7
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->settingFragment:I

    const/4 v0, 0x2

    invoke-static {p0, p1, v4, v0, v4}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private final setCurrentLanguagePersian(Z)V
    .locals 3

    .line 43
    iget-object v0, p0, Lfast/dic/dict/fragments/MoreFragment;->isCurrentLanguagePersian$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lfast/dic/dict/fragments/MoreFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getAdapter()Lfast/dic/dict/adapters/MoreAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lfast/dic/dict/fragments/MoreFragment;->adapter:Lfast/dic/dict/adapters/MoreAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance p3, Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/MoreFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, v0}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result p3

    invoke-direct {p0, p3}, Lfast/dic/dict/fragments/MoreFragment;->setCurrentLanguagePersian(Z)V

    const/4 p3, 0x0

    .line 50
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentMoreBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentMoreBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/fragments/MoreFragment;->binding:Lfast/dic/dict/databinding/FragmentMoreBinding;

    const/4 p2, 0x0

    .line 52
    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/fragments/MoreFragment;->getAdapter()Lfast/dic/dict/adapters/MoreAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentMoreBinding;->setAdapter(Lfast/dic/dict/adapters/MoreAdapter;)V

    .line 53
    iget-object p1, p0, Lfast/dic/dict/fragments/MoreFragment;->binding:Lfast/dic/dict/databinding/FragmentMoreBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/fragments/MoreFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentMoreBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 54
    iget-object p1, p0, Lfast/dic/dict/fragments/MoreFragment;->binding:Lfast/dic/dict/databinding/FragmentMoreBinding;

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentMoreBinding;->settingsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 55
    invoke-virtual {p0}, Lfast/dic/dict/fragments/MoreFragment;->getAdapter()Lfast/dic/dict/adapters/MoreAdapter;

    move-result-object p1

    new-instance v0, Lfast/dic/dict/fragments/MoreFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/MoreFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/fragments/MoreFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/adapters/MoreAdapter;->setOnItemClickListener(Lkotlin/jvm/functions/Function2;)V

    .line 58
    invoke-virtual {p0}, Lfast/dic/dict/fragments/MoreFragment;->getAdapter()Lfast/dic/dict/adapters/MoreAdapter;

    move-result-object p1

    new-instance v0, Lfast/dic/dict/fragments/MoreFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/MoreFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/fragments/MoreFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/adapters/MoreAdapter;->setOnSubscriptionClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 62
    invoke-direct {p0}, Lfast/dic/dict/fragments/MoreFragment;->getRowsFromPageType()Ljava/util/List;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lfast/dic/dict/fragments/MoreFragment;->getAdapter()Lfast/dic/dict/adapters/MoreAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfast/dic/dict/adapters/MoreAdapter;->submitList(Ljava/util/List;)V

    .line 65
    iget-object p0, p0, Lfast/dic/dict/fragments/MoreFragment;->binding:Lfast/dic/dict/databinding/FragmentMoreBinding;

    if-nez p0, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentMoreBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2}, Lfast/dic/dict/fragments/Hilt_MoreFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    sget p2, Lfast/dic/dict/R$string;->more:I

    invoke-virtual {p0, p2}, Lfast/dic/dict/fragments/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lfast/dic/dict/utils/ContextExtKt;->setToolbarTitle(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public final setAdapter(Lfast/dic/dict/adapters/MoreAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lfast/dic/dict/fragments/MoreFragment;->adapter:Lfast/dic/dict/adapters/MoreAdapter;

    return-void
.end method
