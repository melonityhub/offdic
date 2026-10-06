.class public Lfast/dic/dict/DataBinderMapperImpl;
.super Landroidx/databinding/DataBinderMapper;
.source "DataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/DataBinderMapperImpl$InnerLayoutIdLookup;,
        Lfast/dic/dict/DataBinderMapperImpl$InnerBrLookup;
    }
.end annotation


# static fields
.field private static final INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

.field private static final LAYOUT_ACTIVITYMAIN:I = 0x1

.field private static final LAYOUT_ADAPTERSORTLAYOUT:I = 0x2

.field private static final LAYOUT_CATEGORIZEDWORDITEMLAYOUT:I = 0x3

.field private static final LAYOUT_CATEGORYELLIPSISROWITEMLAYOUT:I = 0x4

.field private static final LAYOUT_CATEGORYROWITEMLAYOUT:I = 0x5

.field private static final LAYOUT_COPYRIGHTMOREROWLAYOUT:I = 0x6

.field private static final LAYOUT_EDITFAVORITEDIRECTORIESITEMLAYOUT:I = 0x7

.field private static final LAYOUT_EDITMODEFAVORITEWORDITEMLAYOUT:I = 0x8

.field private static final LAYOUT_FAVORITEDIRECTORIESITEMLAYOUT:I = 0x9

.field private static final LAYOUT_FAVORITEWORDITEMLAYOUT:I = 0xa

.field private static final LAYOUT_FRAGMENTADVERTISEMENTONBOARDING:I = 0xc

.field private static final LAYOUT_FRAGMENTAI:I = 0xb

.field private static final LAYOUT_FRAGMENTCAMERAPERMISSION:I = 0xd

.field private static final LAYOUT_FRAGMENTCATEGORIES:I = 0xe

.field private static final LAYOUT_FRAGMENTCHOOSELANGUAGE:I = 0xf

.field private static final LAYOUT_FRAGMENTDIRECTORYWORDS:I = 0x10

.field private static final LAYOUT_FRAGMENTFAVORITES:I = 0x11

.field private static final LAYOUT_FRAGMENTFULLSCREENMODAL:I = 0x12

.field private static final LAYOUT_FRAGMENTHISTORY:I = 0x13

.field private static final LAYOUT_FRAGMENTLANGUAGEONBOARDING:I = 0x14

.field private static final LAYOUT_FRAGMENTLOGINONBOARDING:I = 0x15

.field private static final LAYOUT_FRAGMENTLOGINSIGNUP:I = 0x16

.field private static final LAYOUT_FRAGMENTLOGOUT:I = 0x17

.field private static final LAYOUT_FRAGMENTMORE:I = 0x18

.field private static final LAYOUT_FRAGMENTPAYMENTMETHOD:I = 0x19

.field private static final LAYOUT_FRAGMENTPRICING:I = 0x1a

.field private static final LAYOUT_FRAGMENTPROFILE:I = 0x1b

.field private static final LAYOUT_FRAGMENTREGISTRATIONFORM:I = 0x1c

.field private static final LAYOUT_FRAGMENTRESULTORDERMODAL:I = 0x1d

.field private static final LAYOUT_FRAGMENTSEARCH:I = 0x1e

.field private static final LAYOUT_FRAGMENTSORTDIALOG:I = 0x1f

.field private static final LAYOUT_FRAGMENTTRANSACTIONHISTORY:I = 0x20

.field private static final LAYOUT_FRAGMENTWODHISTORY:I = 0x21

.field private static final LAYOUT_FRAGMENTWODYEARHISTORY:I = 0x22

.field private static final LAYOUT_FRAGMENTWORDCATEGORY:I = 0x23

.field private static final LAYOUT_FRAGMENTWORDRESULT:I = 0x24

.field private static final LAYOUT_HISTORYDIRECTORIESITEMLAYOUT:I = 0x25

.field private static final LAYOUT_HISTORYENITEMLAYOUT:I = 0x26

.field private static final LAYOUT_HISTORYPEITEMLAYOUT:I = 0x27

.field private static final LAYOUT_LASTITEMHISOTRYLAYOUT:I = 0x28

.field private static final LAYOUT_MOREROWLAYOUT:I = 0x29

.field private static final LAYOUT_PAYMENTMETHODITEMLAYOUT:I = 0x2a

.field private static final LAYOUT_PLANITEMLAYOUT:I = 0x2b

.field private static final LAYOUT_PRICINGFEATUREITEMLAYOUT:I = 0x2c

.field private static final LAYOUT_PRICINGHEADERITEMLAYOUT:I = 0x2d

.field private static final LAYOUT_PRICINGSTICKYHEADERLAYOUT:I = 0x2e

.field private static final LAYOUT_RESULTORDERITEMLAYOUT:I = 0x2f

.field private static final LAYOUT_SELECTDIRECTORYBOTTOMSHEETLAYOUT:I = 0x30

.field private static final LAYOUT_SUBSCRIPTIONSMOREROWLAYOUT:I = 0x31

.field private static final LAYOUT_WODDIRECTORIESITEMLAYOUT:I = 0x32

.field private static final LAYOUT_WODHEADERITEMLAYOUT:I = 0x33

.field private static final LAYOUT_WODHISTORYROWITEMLAYOUT:I = 0x34

.field private static final LAYOUT_WODHISTORYYEARROWITEMLAYOUT:I = 0x35

.field private static final LAYOUT_WORDCATEGORYDIRECTORIESITEMLAYOUT:I = 0x36

.field private static final LAYOUT_WORDSUGGESTIONITEMLAYOUT:I = 0x37

.field private static final LAYOUT_WSTRANSLATORITEMLAYOUT:I = 0x38

.field private static final LAYOUT_WSTRANSLATORNOSUBSCRIPTIONITEMLAYOUT:I = 0x39

.field private static final LAYOUT_WSTRANSLATORNOTLOGINITEMLAYOUT:I = 0x3a


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 207
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lfast/dic/dict/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    .line 210
    sget v2, Lfast/dic/dict/R$layout;->activity_main:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 211
    sget v2, Lfast/dic/dict/R$layout;->adapter_sort_layout:I

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 212
    sget v2, Lfast/dic/dict/R$layout;->categorized_word_item_layout:I

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 213
    sget v2, Lfast/dic/dict/R$layout;->category_ellipsis_row_item_layout:I

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 214
    sget v2, Lfast/dic/dict/R$layout;->category_row_item_layout:I

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 215
    sget v2, Lfast/dic/dict/R$layout;->copy_right_more_row_layout:I

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 216
    sget v2, Lfast/dic/dict/R$layout;->edit_favorite_directories_item_layout:I

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 217
    sget v2, Lfast/dic/dict/R$layout;->edit_mode_favorite_word_item_layout:I

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 218
    sget v2, Lfast/dic/dict/R$layout;->favorite_directories_item_layout:I

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 219
    sget v2, Lfast/dic/dict/R$layout;->favorite_word_item_layout:I

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 220
    sget v2, Lfast/dic/dict/R$layout;->fragment_a_i:I

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 221
    sget v2, Lfast/dic/dict/R$layout;->fragment_advertisement_on_boarding:I

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 222
    sget v2, Lfast/dic/dict/R$layout;->fragment_camera_permission:I

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 223
    sget v2, Lfast/dic/dict/R$layout;->fragment_categories:I

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 224
    sget v2, Lfast/dic/dict/R$layout;->fragment_choose_language:I

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 225
    sget v2, Lfast/dic/dict/R$layout;->fragment_directory_words:I

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 226
    sget v2, Lfast/dic/dict/R$layout;->fragment_favorites:I

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 227
    sget v2, Lfast/dic/dict/R$layout;->fragment_fullscreen_modal:I

    const/16 v3, 0x12

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 228
    sget v2, Lfast/dic/dict/R$layout;->fragment_history:I

    const/16 v3, 0x13

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 229
    sget v2, Lfast/dic/dict/R$layout;->fragment_language_on_boarding:I

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 230
    sget v2, Lfast/dic/dict/R$layout;->fragment_login_onboarding:I

    const/16 v3, 0x15

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 231
    sget v2, Lfast/dic/dict/R$layout;->fragment_login_signup:I

    const/16 v3, 0x16

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 232
    sget v2, Lfast/dic/dict/R$layout;->fragment_logout:I

    const/16 v3, 0x17

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 233
    sget v2, Lfast/dic/dict/R$layout;->fragment_more:I

    const/16 v3, 0x18

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 234
    sget v2, Lfast/dic/dict/R$layout;->fragment_payment_method:I

    const/16 v3, 0x19

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 235
    sget v2, Lfast/dic/dict/R$layout;->fragment_pricing:I

    const/16 v3, 0x1a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 236
    sget v2, Lfast/dic/dict/R$layout;->fragment_profile:I

    const/16 v3, 0x1b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 237
    sget v2, Lfast/dic/dict/R$layout;->fragment_registration_form:I

    const/16 v3, 0x1c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 238
    sget v2, Lfast/dic/dict/R$layout;->fragment_result_order_modal:I

    const/16 v3, 0x1d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 239
    sget v2, Lfast/dic/dict/R$layout;->fragment_search:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 240
    sget v2, Lfast/dic/dict/R$layout;->fragment_sort_dialog:I

    const/16 v3, 0x1f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    sget v2, Lfast/dic/dict/R$layout;->fragment_transaction_history:I

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 242
    sget v2, Lfast/dic/dict/R$layout;->fragment_wod_history:I

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 243
    sget v2, Lfast/dic/dict/R$layout;->fragment_wod_year_history:I

    const/16 v3, 0x22

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 244
    sget v2, Lfast/dic/dict/R$layout;->fragment_word_category:I

    const/16 v3, 0x23

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 245
    sget v2, Lfast/dic/dict/R$layout;->fragment_word_result:I

    const/16 v3, 0x24

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 246
    sget v2, Lfast/dic/dict/R$layout;->history_directories_item_layout:I

    const/16 v3, 0x25

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 247
    sget v2, Lfast/dic/dict/R$layout;->history_en_item_layout:I

    const/16 v3, 0x26

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 248
    sget v2, Lfast/dic/dict/R$layout;->history_pe_item_layout:I

    const/16 v3, 0x27

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 249
    sget v2, Lfast/dic/dict/R$layout;->last_item_hisotry_layout:I

    const/16 v3, 0x28

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 250
    sget v2, Lfast/dic/dict/R$layout;->more_row_layout:I

    const/16 v3, 0x29

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 251
    sget v2, Lfast/dic/dict/R$layout;->payment_method_item_layout:I

    const/16 v3, 0x2a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 252
    sget v2, Lfast/dic/dict/R$layout;->plan_item_layout:I

    const/16 v3, 0x2b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 253
    sget v2, Lfast/dic/dict/R$layout;->pricing_feature_item_layout:I

    const/16 v3, 0x2c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 254
    sget v2, Lfast/dic/dict/R$layout;->pricing_header_item_layout:I

    const/16 v3, 0x2d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 255
    sget v2, Lfast/dic/dict/R$layout;->pricing_sticky_header_layout:I

    const/16 v3, 0x2e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 256
    sget v2, Lfast/dic/dict/R$layout;->result_order_item_layout:I

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 257
    sget v2, Lfast/dic/dict/R$layout;->select_directory_bottom_sheet_layout:I

    const/16 v3, 0x30

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 258
    sget v2, Lfast/dic/dict/R$layout;->subscriptions_more_row_layout:I

    const/16 v3, 0x31

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 259
    sget v2, Lfast/dic/dict/R$layout;->wod_directories_item_layout:I

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 260
    sget v2, Lfast/dic/dict/R$layout;->wod_header_item_layout:I

    const/16 v3, 0x33

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 261
    sget v2, Lfast/dic/dict/R$layout;->wod_history_row_item_layout:I

    const/16 v3, 0x34

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 262
    sget v2, Lfast/dic/dict/R$layout;->wod_history_year_row_item_layout:I

    const/16 v3, 0x35

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 263
    sget v2, Lfast/dic/dict/R$layout;->word_category_directories_item_layout:I

    const/16 v3, 0x36

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 264
    sget v2, Lfast/dic/dict/R$layout;->word_suggestion_item_layout:I

    const/16 v3, 0x37

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 265
    sget v2, Lfast/dic/dict/R$layout;->ws_translator_item_layout:I

    const/16 v3, 0x38

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 266
    sget v2, Lfast/dic/dict/R$layout;->ws_translator_no_subscription_item_layout:I

    const/16 v3, 0x39

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 267
    sget v2, Lfast/dic/dict/R$layout;->ws_translator_not_login_item_layout:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Landroidx/databinding/DataBinderMapper;-><init>()V

    return-void
.end method

.method private final internalGetViewDataBinding0(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    packed-switch p3, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 607
    :pswitch_0
    const-string p0, "layout/wod_directories_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 608
    new-instance p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 610
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for wod_directories_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 601
    :pswitch_1
    const-string p0, "layout/subscriptions_more_row_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 602
    new-instance p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 604
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for subscriptions_more_row_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 595
    :pswitch_2
    const-string p0, "layout/select_directory_bottom_sheet_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 596
    new-instance p0, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 598
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for select_directory_bottom_sheet_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 589
    :pswitch_3
    const-string p0, "layout/result_order_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 590
    new-instance p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 592
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for result_order_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 583
    :pswitch_4
    const-string p0, "layout/pricing_sticky_header_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 584
    new-instance p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 586
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for pricing_sticky_header_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 577
    :pswitch_5
    const-string p0, "layout/pricing_header_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 578
    new-instance p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 580
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for pricing_header_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 571
    :pswitch_6
    const-string p0, "layout/pricing_feature_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 572
    new-instance p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 574
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for pricing_feature_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 565
    :pswitch_7
    const-string p0, "layout/plan_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 566
    new-instance p0, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/PlanItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 568
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for plan_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 559
    :pswitch_8
    const-string p0, "layout/payment_method_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 560
    new-instance p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 562
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for payment_method_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 553
    :pswitch_9
    const-string p0, "layout/more_row_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 554
    new-instance p0, Lfast/dic/dict/databinding/MoreRowLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/MoreRowLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 556
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for more_row_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 547
    :pswitch_a
    const-string p0, "layout/last_item_hisotry_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 548
    new-instance p0, Lfast/dic/dict/databinding/LastItemHisotryLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/LastItemHisotryLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 550
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for last_item_hisotry_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 541
    :pswitch_b
    const-string p0, "layout/history_pe_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 542
    new-instance p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 544
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for history_pe_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 535
    :pswitch_c
    const-string p0, "layout/history_en_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 536
    new-instance p0, Lfast/dic/dict/databinding/HistoryEnItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/HistoryEnItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 538
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for history_en_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 529
    :pswitch_d
    const-string p0, "layout/history_directories_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 530
    new-instance p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 532
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for history_directories_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 523
    :pswitch_e
    const-string p0, "layout/fragment_word_result_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 524
    new-instance p0, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 526
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_word_result is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 514
    :pswitch_f
    const-string p0, "layout-sw600dp/fragment_word_category_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 515
    new-instance p0, Lfast/dic/dict/databinding/FragmentWordCategoryBindingSw600dpImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentWordCategoryBindingSw600dpImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 517
    :cond_f
    const-string p0, "layout/fragment_word_category_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 518
    new-instance p0, Lfast/dic/dict/databinding/FragmentWordCategoryBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentWordCategoryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 520
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_word_category is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 505
    :pswitch_10
    const-string p0, "layout/fragment_wod_year_history_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 506
    new-instance p0, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 508
    :cond_11
    const-string p0, "layout-sw600dp/fragment_wod_year_history_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 509
    new-instance p0, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 511
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_wod_year_history is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 496
    :pswitch_11
    const-string p0, "layout/fragment_wod_history_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 497
    new-instance p0, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 499
    :cond_13
    const-string p0, "layout-sw600dp/fragment_wod_history_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 500
    new-instance p0, Lfast/dic/dict/databinding/FragmentWodHistoryBindingSw600dpImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentWodHistoryBindingSw600dpImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 502
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_wod_history is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 490
    :pswitch_12
    const-string p0, "layout/fragment_transaction_history_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 491
    new-instance p0, Lfast/dic/dict/databinding/FragmentTransactionHistoryBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentTransactionHistoryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 493
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_transaction_history is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 484
    :pswitch_13
    const-string p0, "layout/fragment_sort_dialog_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 485
    new-instance p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 487
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_sort_dialog is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 478
    :pswitch_14
    const-string p0, "layout/fragment_search_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 479
    new-instance p0, Lfast/dic/dict/databinding/FragmentSearchBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentSearchBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 481
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_search is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 472
    :pswitch_15
    const-string p0, "layout/fragment_result_order_modal_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 473
    new-instance p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 475
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_result_order_modal is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 463
    :pswitch_16
    const-string p0, "layout/fragment_registration_form_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 464
    new-instance p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentRegistrationFormBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 466
    :cond_19
    const-string p0, "layout-sw600dp/fragment_registration_form_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 467
    new-instance p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBindingSw600dpImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentRegistrationFormBindingSw600dpImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 469
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_registration_form is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 454
    :pswitch_17
    const-string p0, "layout-sw600dp/fragment_profile_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 455
    new-instance p0, Lfast/dic/dict/databinding/FragmentProfileBindingSw600dpImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentProfileBindingSw600dpImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 457
    :cond_1b
    const-string p0, "layout/fragment_profile_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 458
    new-instance p0, Lfast/dic/dict/databinding/FragmentProfileBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentProfileBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 460
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_profile is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 445
    :pswitch_18
    const-string p0, "layout/fragment_pricing_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 446
    new-instance p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 448
    :cond_1d
    const-string p0, "layout-sw600dp/fragment_pricing_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 449
    new-instance p0, Lfast/dic/dict/databinding/FragmentPricingBindingSw600dpImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentPricingBindingSw600dpImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 451
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_pricing is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 439
    :pswitch_19
    const-string p0, "layout/fragment_payment_method_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 440
    new-instance p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 442
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_payment_method is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 430
    :pswitch_1a
    const-string p0, "layout-sw600dp/fragment_more_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 431
    new-instance p0, Lfast/dic/dict/databinding/FragmentMoreBindingSw600dpImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentMoreBindingSw600dpImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 433
    :cond_20
    const-string p0, "layout/fragment_more_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 434
    new-instance p0, Lfast/dic/dict/databinding/FragmentMoreBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentMoreBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 436
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_more is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 424
    :pswitch_1b
    const-string p0, "layout/fragment_logout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 425
    new-instance p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 427
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_logout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 415
    :pswitch_1c
    const-string p0, "layout/fragment_login_signup_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 416
    new-instance p0, Lfast/dic/dict/databinding/FragmentLoginSignupBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentLoginSignupBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 418
    :cond_23
    const-string p0, "layout-sw600dp/fragment_login_signup_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 419
    new-instance p0, Lfast/dic/dict/databinding/FragmentLoginSignupBindingSw600dpImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentLoginSignupBindingSw600dpImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 421
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_login_signup is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 409
    :pswitch_1d
    const-string p0, "layout/fragment_login_onboarding_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 410
    new-instance p0, Lfast/dic/dict/databinding/FragmentLoginOnboardingBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentLoginOnboardingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 412
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_login_onboarding is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 403
    :pswitch_1e
    const-string p0, "layout/fragment_language_on_boarding_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 404
    new-instance p0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 406
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_language_on_boarding is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 394
    :pswitch_1f
    const-string p0, "layout-sw600dp/fragment_history_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 395
    new-instance p0, Lfast/dic/dict/databinding/FragmentHistoryBindingSw600dpImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentHistoryBindingSw600dpImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 397
    :cond_27
    const-string p0, "layout/fragment_history_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 398
    new-instance p0, Lfast/dic/dict/databinding/FragmentHistoryBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentHistoryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 400
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_history is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 388
    :pswitch_20
    const-string p0, "layout/fragment_fullscreen_modal_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 389
    new-instance p0, Lfast/dic/dict/databinding/FragmentFullscreenModalBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentFullscreenModalBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 391
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_fullscreen_modal is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 379
    :pswitch_21
    const-string p0, "layout-sw600dp/fragment_favorites_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 380
    new-instance p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingSw600dpImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentFavoritesBindingSw600dpImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 382
    :cond_2a
    const-string p0, "layout/fragment_favorites_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 383
    new-instance p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 385
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_favorites is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 370
    :pswitch_22
    const-string p0, "layout-sw600dp/fragment_directory_words_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 371
    new-instance p0, Lfast/dic/dict/databinding/FragmentDirectoryWordsBindingSw600dpImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentDirectoryWordsBindingSw600dpImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 373
    :cond_2c
    const-string p0, "layout/fragment_directory_words_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 374
    new-instance p0, Lfast/dic/dict/databinding/FragmentDirectoryWordsBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentDirectoryWordsBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 376
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_directory_words is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 361
    :pswitch_23
    const-string p0, "layout-sw600dp/fragment_choose_language_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 362
    new-instance p0, Lfast/dic/dict/databinding/FragmentChooseLanguageBindingSw600dpImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentChooseLanguageBindingSw600dpImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 364
    :cond_2e
    const-string p0, "layout/fragment_choose_language_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 365
    new-instance p0, Lfast/dic/dict/databinding/FragmentChooseLanguageBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentChooseLanguageBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 367
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_choose_language is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 352
    :pswitch_24
    const-string p0, "layout-sw600dp/fragment_categories_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 353
    new-instance p0, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 355
    :cond_30
    const-string p0, "layout/fragment_categories_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 356
    new-instance p0, Lfast/dic/dict/databinding/FragmentCategoriesBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentCategoriesBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 358
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_categories is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 346
    :pswitch_25
    const-string p0, "layout/fragment_camera_permission_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 347
    new-instance p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 349
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_camera_permission is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 340
    :pswitch_26
    const-string p0, "layout/fragment_advertisement_on_boarding_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 341
    new-instance p0, Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 343
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_advertisement_on_boarding is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 334
    :pswitch_27
    const-string p0, "layout/fragment_a_i_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    .line 335
    new-instance p0, Lfast/dic/dict/databinding/FragmentAIBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FragmentAIBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 337
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for fragment_a_i is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 328
    :pswitch_28
    const-string p0, "layout/favorite_word_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 329
    new-instance p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 331
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for favorite_word_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 322
    :pswitch_29
    const-string p0, "layout/favorite_directories_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    .line 323
    new-instance p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 325
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for favorite_directories_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 316
    :pswitch_2a
    const-string p0, "layout/edit_mode_favorite_word_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 317
    new-instance p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 319
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for edit_mode_favorite_word_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 310
    :pswitch_2b
    const-string p0, "layout/edit_favorite_directories_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 311
    new-instance p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 313
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for edit_favorite_directories_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 304
    :pswitch_2c
    const-string p0, "layout/copy_right_more_row_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    .line 305
    new-instance p0, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 307
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for copy_right_more_row_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 298
    :pswitch_2d
    const-string p0, "layout/category_row_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 299
    new-instance p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 301
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for category_row_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :pswitch_2e
    const-string p0, "layout/category_ellipsis_row_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 293
    new-instance p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 295
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for category_ellipsis_row_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 286
    :pswitch_2f
    const-string p0, "layout/categorized_word_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 287
    new-instance p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 289
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for categorized_word_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 280
    :pswitch_30
    const-string p0, "layout/adapter_sort_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 281
    new-instance p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 283
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for adapter_sort_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 274
    :pswitch_31
    const-string p0, "layout/activity_main_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    .line 275
    new-instance p0, Lfast/dic/dict/databinding/ActivityMainBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/ActivityMainBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 277
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for activity_main is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final internalGetViewDataBinding1(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    packed-switch p3, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 662
    :pswitch_0
    const-string p0, "layout/ws_translator_not_login_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 663
    new-instance p0, Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 665
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for ws_translator_not_login_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 656
    :pswitch_1
    const-string p0, "layout/ws_translator_no_subscription_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 657
    new-instance p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 659
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for ws_translator_no_subscription_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 650
    :pswitch_2
    const-string p0, "layout/ws_translator_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 651
    new-instance p0, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 653
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for ws_translator_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 644
    :pswitch_3
    const-string p0, "layout/word_suggestion_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 645
    new-instance p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 647
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for word_suggestion_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 638
    :pswitch_4
    const-string p0, "layout/word_category_directories_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 639
    new-instance p0, Lfast/dic/dict/databinding/WordCategoryDirectoriesItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/WordCategoryDirectoriesItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 641
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for word_category_directories_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 632
    :pswitch_5
    const-string p0, "layout/wod_history_year_row_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 633
    new-instance p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 635
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for wod_history_year_row_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 626
    :pswitch_6
    const-string p0, "layout/wod_history_row_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 627
    new-instance p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 629
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for wod_history_row_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 620
    :pswitch_7
    const-string p0, "layout/wod_header_item_layout_0"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 621
    new-instance p0, Lfast/dic/dict/databinding/WodHeaderItemLayoutBindingImpl;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/databinding/WodHeaderItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p0

    .line 623
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for wod_header_item_layout is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public collectDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/databinding/DataBinderMapper;",
            ">;"
        }
    .end annotation

    .line 727
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 728
    new-instance v0, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;

    invoke-direct {v0}, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public convertBrIdToString(I)Ljava/lang/String;
    .locals 0

    .line 721
    sget-object p0, Lfast/dic/dict/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDataBinder(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 3

    .line 673
    sget-object v0, Lfast/dic/dict/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    if-lez p3, :cond_3

    .line 675
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    add-int/lit8 v1, p3, -0x1

    .line 680
    div-int/lit8 v1, v1, 0x32

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 686
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lfast/dic/dict/DataBinderMapperImpl;->internalGetViewDataBinding1(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0

    .line 683
    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lfast/dic/dict/DataBinderMapperImpl;->internalGetViewDataBinding0(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0

    .line 677
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "view must have a tag"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataBinder(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_2

    .line 695
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 698
    :cond_0
    sget-object p1, Lfast/dic/dict/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 700
    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 702
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "view must have a tag"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 715
    :cond_0
    sget-object v0, Lfast/dic/dict/DataBinderMapperImpl$InnerLayoutIdLookup;->sKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    return p0

    .line 716
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
