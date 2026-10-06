package fast.dic.dict;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.ironsource.L6;
import fast.dic.dict.databinding.ActivityMainBindingImpl;
import fast.dic.dict.databinding.AdapterSortLayoutBindingImpl;
import fast.dic.dict.databinding.CategorizedWordItemLayoutBindingImpl;
import fast.dic.dict.databinding.CategoryEllipsisRowItemLayoutBindingImpl;
import fast.dic.dict.databinding.CategoryRowItemLayoutBindingImpl;
import fast.dic.dict.databinding.CopyRightMoreRowLayoutBindingImpl;
import fast.dic.dict.databinding.EditFavoriteDirectoriesItemLayoutBindingImpl;
import fast.dic.dict.databinding.EditModeFavoriteWordItemLayoutBindingImpl;
import fast.dic.dict.databinding.FavoriteDirectoriesItemLayoutBindingImpl;
import fast.dic.dict.databinding.FavoriteWordItemLayoutBindingImpl;
import fast.dic.dict.databinding.FragmentAIBindingImpl;
import fast.dic.dict.databinding.FragmentAdvertisementOnBoardingBindingImpl;
import fast.dic.dict.databinding.FragmentCameraPermissionBindingImpl;
import fast.dic.dict.databinding.FragmentCategoriesBindingImpl;
import fast.dic.dict.databinding.FragmentCategoriesBindingSw600dpImpl;
import fast.dic.dict.databinding.FragmentChooseLanguageBindingImpl;
import fast.dic.dict.databinding.FragmentChooseLanguageBindingSw600dpImpl;
import fast.dic.dict.databinding.FragmentDirectoryWordsBindingImpl;
import fast.dic.dict.databinding.FragmentDirectoryWordsBindingSw600dpImpl;
import fast.dic.dict.databinding.FragmentFavoritesBindingImpl;
import fast.dic.dict.databinding.FragmentFavoritesBindingSw600dpImpl;
import fast.dic.dict.databinding.FragmentFullscreenModalBindingImpl;
import fast.dic.dict.databinding.FragmentHistoryBindingImpl;
import fast.dic.dict.databinding.FragmentHistoryBindingSw600dpImpl;
import fast.dic.dict.databinding.FragmentLanguageOnBoardingBindingImpl;
import fast.dic.dict.databinding.FragmentLoginOnboardingBindingImpl;
import fast.dic.dict.databinding.FragmentLoginSignupBindingImpl;
import fast.dic.dict.databinding.FragmentLoginSignupBindingSw600dpImpl;
import fast.dic.dict.databinding.FragmentLogoutBindingImpl;
import fast.dic.dict.databinding.FragmentMoreBindingImpl;
import fast.dic.dict.databinding.FragmentMoreBindingSw600dpImpl;
import fast.dic.dict.databinding.FragmentPaymentMethodBindingImpl;
import fast.dic.dict.databinding.FragmentPricingBindingImpl;
import fast.dic.dict.databinding.FragmentPricingBindingSw600dpImpl;
import fast.dic.dict.databinding.FragmentProfileBindingImpl;
import fast.dic.dict.databinding.FragmentProfileBindingSw600dpImpl;
import fast.dic.dict.databinding.FragmentRegistrationFormBindingImpl;
import fast.dic.dict.databinding.FragmentRegistrationFormBindingSw600dpImpl;
import fast.dic.dict.databinding.FragmentResultOrderModalBindingImpl;
import fast.dic.dict.databinding.FragmentSearchBindingImpl;
import fast.dic.dict.databinding.FragmentSortDialogBindingImpl;
import fast.dic.dict.databinding.FragmentTransactionHistoryBindingImpl;
import fast.dic.dict.databinding.FragmentWodHistoryBindingImpl;
import fast.dic.dict.databinding.FragmentWodHistoryBindingSw600dpImpl;
import fast.dic.dict.databinding.FragmentWodYearHistoryBindingImpl;
import fast.dic.dict.databinding.FragmentWodYearHistoryBindingSw600dpImpl;
import fast.dic.dict.databinding.FragmentWordCategoryBindingImpl;
import fast.dic.dict.databinding.FragmentWordCategoryBindingSw600dpImpl;
import fast.dic.dict.databinding.FragmentWordResultBindingImpl;
import fast.dic.dict.databinding.HistoryDirectoriesItemLayoutBindingImpl;
import fast.dic.dict.databinding.HistoryEnItemLayoutBindingImpl;
import fast.dic.dict.databinding.HistoryPeItemLayoutBindingImpl;
import fast.dic.dict.databinding.LastItemHisotryLayoutBindingImpl;
import fast.dic.dict.databinding.MoreRowLayoutBindingImpl;
import fast.dic.dict.databinding.PaymentMethodItemLayoutBindingImpl;
import fast.dic.dict.databinding.PlanItemLayoutBindingImpl;
import fast.dic.dict.databinding.PricingFeatureItemLayoutBindingImpl;
import fast.dic.dict.databinding.PricingHeaderItemLayoutBindingImpl;
import fast.dic.dict.databinding.PricingStickyHeaderLayoutBindingImpl;
import fast.dic.dict.databinding.ResultOrderItemLayoutBindingImpl;
import fast.dic.dict.databinding.SelectDirectoryBottomSheetLayoutBindingImpl;
import fast.dic.dict.databinding.SubscriptionsMoreRowLayoutBindingImpl;
import fast.dic.dict.databinding.WodDirectoriesItemLayoutBindingImpl;
import fast.dic.dict.databinding.WodHeaderItemLayoutBindingImpl;
import fast.dic.dict.databinding.WodHistoryRowItemLayoutBindingImpl;
import fast.dic.dict.databinding.WodHistoryYearRowItemLayoutBindingImpl;
import fast.dic.dict.databinding.WordCategoryDirectoriesItemLayoutBindingImpl;
import fast.dic.dict.databinding.WordSuggestionItemLayoutBindingImpl;
import fast.dic.dict.databinding.WsTranslatorItemLayoutBindingImpl;
import fast.dic.dict.databinding.WsTranslatorNoSubscriptionItemLayoutBindingImpl;
import fast.dic.dict.databinding.WsTranslatorNotLoginItemLayoutBindingImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class DataBinderMapperImpl extends DataBinderMapper {
    private static final SparseIntArray INTERNAL_LAYOUT_ID_LOOKUP;
    private static final int LAYOUT_ACTIVITYMAIN = 1;
    private static final int LAYOUT_ADAPTERSORTLAYOUT = 2;
    private static final int LAYOUT_CATEGORIZEDWORDITEMLAYOUT = 3;
    private static final int LAYOUT_CATEGORYELLIPSISROWITEMLAYOUT = 4;
    private static final int LAYOUT_CATEGORYROWITEMLAYOUT = 5;
    private static final int LAYOUT_COPYRIGHTMOREROWLAYOUT = 6;
    private static final int LAYOUT_EDITFAVORITEDIRECTORIESITEMLAYOUT = 7;
    private static final int LAYOUT_EDITMODEFAVORITEWORDITEMLAYOUT = 8;
    private static final int LAYOUT_FAVORITEDIRECTORIESITEMLAYOUT = 9;
    private static final int LAYOUT_FAVORITEWORDITEMLAYOUT = 10;
    private static final int LAYOUT_FRAGMENTADVERTISEMENTONBOARDING = 12;
    private static final int LAYOUT_FRAGMENTAI = 11;
    private static final int LAYOUT_FRAGMENTCAMERAPERMISSION = 13;
    private static final int LAYOUT_FRAGMENTCATEGORIES = 14;
    private static final int LAYOUT_FRAGMENTCHOOSELANGUAGE = 15;
    private static final int LAYOUT_FRAGMENTDIRECTORYWORDS = 16;
    private static final int LAYOUT_FRAGMENTFAVORITES = 17;
    private static final int LAYOUT_FRAGMENTFULLSCREENMODAL = 18;
    private static final int LAYOUT_FRAGMENTHISTORY = 19;
    private static final int LAYOUT_FRAGMENTLANGUAGEONBOARDING = 20;
    private static final int LAYOUT_FRAGMENTLOGINONBOARDING = 21;
    private static final int LAYOUT_FRAGMENTLOGINSIGNUP = 22;
    private static final int LAYOUT_FRAGMENTLOGOUT = 23;
    private static final int LAYOUT_FRAGMENTMORE = 24;
    private static final int LAYOUT_FRAGMENTPAYMENTMETHOD = 25;
    private static final int LAYOUT_FRAGMENTPRICING = 26;
    private static final int LAYOUT_FRAGMENTPROFILE = 27;
    private static final int LAYOUT_FRAGMENTREGISTRATIONFORM = 28;
    private static final int LAYOUT_FRAGMENTRESULTORDERMODAL = 29;
    private static final int LAYOUT_FRAGMENTSEARCH = 30;
    private static final int LAYOUT_FRAGMENTSORTDIALOG = 31;
    private static final int LAYOUT_FRAGMENTTRANSACTIONHISTORY = 32;
    private static final int LAYOUT_FRAGMENTWODHISTORY = 33;
    private static final int LAYOUT_FRAGMENTWODYEARHISTORY = 34;
    private static final int LAYOUT_FRAGMENTWORDCATEGORY = 35;
    private static final int LAYOUT_FRAGMENTWORDRESULT = 36;
    private static final int LAYOUT_HISTORYDIRECTORIESITEMLAYOUT = 37;
    private static final int LAYOUT_HISTORYENITEMLAYOUT = 38;
    private static final int LAYOUT_HISTORYPEITEMLAYOUT = 39;
    private static final int LAYOUT_LASTITEMHISOTRYLAYOUT = 40;
    private static final int LAYOUT_MOREROWLAYOUT = 41;
    private static final int LAYOUT_PAYMENTMETHODITEMLAYOUT = 42;
    private static final int LAYOUT_PLANITEMLAYOUT = 43;
    private static final int LAYOUT_PRICINGFEATUREITEMLAYOUT = 44;
    private static final int LAYOUT_PRICINGHEADERITEMLAYOUT = 45;
    private static final int LAYOUT_PRICINGSTICKYHEADERLAYOUT = 46;
    private static final int LAYOUT_RESULTORDERITEMLAYOUT = 47;
    private static final int LAYOUT_SELECTDIRECTORYBOTTOMSHEETLAYOUT = 48;
    private static final int LAYOUT_SUBSCRIPTIONSMOREROWLAYOUT = 49;
    private static final int LAYOUT_WODDIRECTORIESITEMLAYOUT = 50;
    private static final int LAYOUT_WODHEADERITEMLAYOUT = 51;
    private static final int LAYOUT_WODHISTORYROWITEMLAYOUT = 52;
    private static final int LAYOUT_WODHISTORYYEARROWITEMLAYOUT = 53;
    private static final int LAYOUT_WORDCATEGORYDIRECTORIESITEMLAYOUT = 54;
    private static final int LAYOUT_WORDSUGGESTIONITEMLAYOUT = 55;
    private static final int LAYOUT_WSTRANSLATORITEMLAYOUT = 56;
    private static final int LAYOUT_WSTRANSLATORNOSUBSCRIPTIONITEMLAYOUT = 57;
    private static final int LAYOUT_WSTRANSLATORNOTLOGINITEMLAYOUT = 58;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(58);
        INTERNAL_LAYOUT_ID_LOOKUP = sparseIntArray;
        sparseIntArray.put(R.layout.activity_main, 1);
        sparseIntArray.put(R.layout.adapter_sort_layout, 2);
        sparseIntArray.put(R.layout.categorized_word_item_layout, 3);
        sparseIntArray.put(R.layout.category_ellipsis_row_item_layout, 4);
        sparseIntArray.put(R.layout.category_row_item_layout, 5);
        sparseIntArray.put(R.layout.copy_right_more_row_layout, 6);
        sparseIntArray.put(R.layout.edit_favorite_directories_item_layout, 7);
        sparseIntArray.put(R.layout.edit_mode_favorite_word_item_layout, 8);
        sparseIntArray.put(R.layout.favorite_directories_item_layout, 9);
        sparseIntArray.put(R.layout.favorite_word_item_layout, 10);
        sparseIntArray.put(R.layout.fragment_a_i, 11);
        sparseIntArray.put(R.layout.fragment_advertisement_on_boarding, 12);
        sparseIntArray.put(R.layout.fragment_camera_permission, 13);
        sparseIntArray.put(R.layout.fragment_categories, 14);
        sparseIntArray.put(R.layout.fragment_choose_language, 15);
        sparseIntArray.put(R.layout.fragment_directory_words, 16);
        sparseIntArray.put(R.layout.fragment_favorites, 17);
        sparseIntArray.put(R.layout.fragment_fullscreen_modal, 18);
        sparseIntArray.put(R.layout.fragment_history, 19);
        sparseIntArray.put(R.layout.fragment_language_on_boarding, 20);
        sparseIntArray.put(R.layout.fragment_login_onboarding, 21);
        sparseIntArray.put(R.layout.fragment_login_signup, 22);
        sparseIntArray.put(R.layout.fragment_logout, 23);
        sparseIntArray.put(R.layout.fragment_more, 24);
        sparseIntArray.put(R.layout.fragment_payment_method, 25);
        sparseIntArray.put(R.layout.fragment_pricing, 26);
        sparseIntArray.put(R.layout.fragment_profile, 27);
        sparseIntArray.put(R.layout.fragment_registration_form, 28);
        sparseIntArray.put(R.layout.fragment_result_order_modal, 29);
        sparseIntArray.put(R.layout.fragment_search, 30);
        sparseIntArray.put(R.layout.fragment_sort_dialog, 31);
        sparseIntArray.put(R.layout.fragment_transaction_history, 32);
        sparseIntArray.put(R.layout.fragment_wod_history, 33);
        sparseIntArray.put(R.layout.fragment_wod_year_history, 34);
        sparseIntArray.put(R.layout.fragment_word_category, 35);
        sparseIntArray.put(R.layout.fragment_word_result, 36);
        sparseIntArray.put(R.layout.history_directories_item_layout, 37);
        sparseIntArray.put(R.layout.history_en_item_layout, 38);
        sparseIntArray.put(R.layout.history_pe_item_layout, 39);
        sparseIntArray.put(R.layout.last_item_hisotry_layout, 40);
        sparseIntArray.put(R.layout.more_row_layout, 41);
        sparseIntArray.put(R.layout.payment_method_item_layout, 42);
        sparseIntArray.put(R.layout.plan_item_layout, 43);
        sparseIntArray.put(R.layout.pricing_feature_item_layout, 44);
        sparseIntArray.put(R.layout.pricing_header_item_layout, 45);
        sparseIntArray.put(R.layout.pricing_sticky_header_layout, 46);
        sparseIntArray.put(R.layout.result_order_item_layout, 47);
        sparseIntArray.put(R.layout.select_directory_bottom_sheet_layout, 48);
        sparseIntArray.put(R.layout.subscriptions_more_row_layout, 49);
        sparseIntArray.put(R.layout.wod_directories_item_layout, 50);
        sparseIntArray.put(R.layout.wod_header_item_layout, 51);
        sparseIntArray.put(R.layout.wod_history_row_item_layout, 52);
        sparseIntArray.put(R.layout.wod_history_year_row_item_layout, 53);
        sparseIntArray.put(R.layout.word_category_directories_item_layout, 54);
        sparseIntArray.put(R.layout.word_suggestion_item_layout, 55);
        sparseIntArray.put(R.layout.ws_translator_item_layout, 56);
        sparseIntArray.put(R.layout.ws_translator_no_subscription_item_layout, 57);
        sparseIntArray.put(R.layout.ws_translator_not_login_item_layout, 58);
    }

    private final ViewDataBinding internalGetViewDataBinding0(DataBindingComponent dataBindingComponent, View view, int i, Object obj) {
        switch (i) {
            case 1:
                if ("layout/activity_main_0".equals(obj)) {
                    return new ActivityMainBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_main is invalid. Received: " + obj);
            case 2:
                if ("layout/adapter_sort_layout_0".equals(obj)) {
                    return new AdapterSortLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for adapter_sort_layout is invalid. Received: " + obj);
            case 3:
                if ("layout/categorized_word_item_layout_0".equals(obj)) {
                    return new CategorizedWordItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for categorized_word_item_layout is invalid. Received: " + obj);
            case 4:
                if ("layout/category_ellipsis_row_item_layout_0".equals(obj)) {
                    return new CategoryEllipsisRowItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for category_ellipsis_row_item_layout is invalid. Received: " + obj);
            case 5:
                if ("layout/category_row_item_layout_0".equals(obj)) {
                    return new CategoryRowItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for category_row_item_layout is invalid. Received: " + obj);
            case 6:
                if ("layout/copy_right_more_row_layout_0".equals(obj)) {
                    return new CopyRightMoreRowLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for copy_right_more_row_layout is invalid. Received: " + obj);
            case 7:
                if ("layout/edit_favorite_directories_item_layout_0".equals(obj)) {
                    return new EditFavoriteDirectoriesItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for edit_favorite_directories_item_layout is invalid. Received: " + obj);
            case 8:
                if ("layout/edit_mode_favorite_word_item_layout_0".equals(obj)) {
                    return new EditModeFavoriteWordItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for edit_mode_favorite_word_item_layout is invalid. Received: " + obj);
            case 9:
                if ("layout/favorite_directories_item_layout_0".equals(obj)) {
                    return new FavoriteDirectoriesItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for favorite_directories_item_layout is invalid. Received: " + obj);
            case 10:
                if ("layout/favorite_word_item_layout_0".equals(obj)) {
                    return new FavoriteWordItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for favorite_word_item_layout is invalid. Received: " + obj);
            case 11:
                if ("layout/fragment_a_i_0".equals(obj)) {
                    return new FragmentAIBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_a_i is invalid. Received: " + obj);
            case 12:
                if ("layout/fragment_advertisement_on_boarding_0".equals(obj)) {
                    return new FragmentAdvertisementOnBoardingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_advertisement_on_boarding is invalid. Received: " + obj);
            case 13:
                if ("layout/fragment_camera_permission_0".equals(obj)) {
                    return new FragmentCameraPermissionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_camera_permission is invalid. Received: " + obj);
            case 14:
                if ("layout-sw600dp/fragment_categories_0".equals(obj)) {
                    return new FragmentCategoriesBindingSw600dpImpl(dataBindingComponent, view);
                }
                if ("layout/fragment_categories_0".equals(obj)) {
                    return new FragmentCategoriesBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_categories is invalid. Received: " + obj);
            case 15:
                if ("layout-sw600dp/fragment_choose_language_0".equals(obj)) {
                    return new FragmentChooseLanguageBindingSw600dpImpl(dataBindingComponent, view);
                }
                if ("layout/fragment_choose_language_0".equals(obj)) {
                    return new FragmentChooseLanguageBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_choose_language is invalid. Received: " + obj);
            case 16:
                if ("layout-sw600dp/fragment_directory_words_0".equals(obj)) {
                    return new FragmentDirectoryWordsBindingSw600dpImpl(dataBindingComponent, view);
                }
                if ("layout/fragment_directory_words_0".equals(obj)) {
                    return new FragmentDirectoryWordsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_directory_words is invalid. Received: " + obj);
            case 17:
                if ("layout-sw600dp/fragment_favorites_0".equals(obj)) {
                    return new FragmentFavoritesBindingSw600dpImpl(dataBindingComponent, view);
                }
                if ("layout/fragment_favorites_0".equals(obj)) {
                    return new FragmentFavoritesBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_favorites is invalid. Received: " + obj);
            case 18:
                if ("layout/fragment_fullscreen_modal_0".equals(obj)) {
                    return new FragmentFullscreenModalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_fullscreen_modal is invalid. Received: " + obj);
            case 19:
                if ("layout-sw600dp/fragment_history_0".equals(obj)) {
                    return new FragmentHistoryBindingSw600dpImpl(dataBindingComponent, view);
                }
                if ("layout/fragment_history_0".equals(obj)) {
                    return new FragmentHistoryBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_history is invalid. Received: " + obj);
            case 20:
                if ("layout/fragment_language_on_boarding_0".equals(obj)) {
                    return new FragmentLanguageOnBoardingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_language_on_boarding is invalid. Received: " + obj);
            case 21:
                if ("layout/fragment_login_onboarding_0".equals(obj)) {
                    return new FragmentLoginOnboardingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_login_onboarding is invalid. Received: " + obj);
            case 22:
                if ("layout/fragment_login_signup_0".equals(obj)) {
                    return new FragmentLoginSignupBindingImpl(dataBindingComponent, view);
                }
                if ("layout-sw600dp/fragment_login_signup_0".equals(obj)) {
                    return new FragmentLoginSignupBindingSw600dpImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_login_signup is invalid. Received: " + obj);
            case 23:
                if ("layout/fragment_logout_0".equals(obj)) {
                    return new FragmentLogoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_logout is invalid. Received: " + obj);
            case 24:
                if ("layout-sw600dp/fragment_more_0".equals(obj)) {
                    return new FragmentMoreBindingSw600dpImpl(dataBindingComponent, view);
                }
                if ("layout/fragment_more_0".equals(obj)) {
                    return new FragmentMoreBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_more is invalid. Received: " + obj);
            case 25:
                if ("layout/fragment_payment_method_0".equals(obj)) {
                    return new FragmentPaymentMethodBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_payment_method is invalid. Received: " + obj);
            case 26:
                if ("layout/fragment_pricing_0".equals(obj)) {
                    return new FragmentPricingBindingImpl(dataBindingComponent, view);
                }
                if ("layout-sw600dp/fragment_pricing_0".equals(obj)) {
                    return new FragmentPricingBindingSw600dpImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_pricing is invalid. Received: " + obj);
            case 27:
                if ("layout-sw600dp/fragment_profile_0".equals(obj)) {
                    return new FragmentProfileBindingSw600dpImpl(dataBindingComponent, view);
                }
                if ("layout/fragment_profile_0".equals(obj)) {
                    return new FragmentProfileBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_profile is invalid. Received: " + obj);
            case 28:
                if ("layout/fragment_registration_form_0".equals(obj)) {
                    return new FragmentRegistrationFormBindingImpl(dataBindingComponent, view);
                }
                if ("layout-sw600dp/fragment_registration_form_0".equals(obj)) {
                    return new FragmentRegistrationFormBindingSw600dpImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_registration_form is invalid. Received: " + obj);
            case 29:
                if ("layout/fragment_result_order_modal_0".equals(obj)) {
                    return new FragmentResultOrderModalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_result_order_modal is invalid. Received: " + obj);
            case 30:
                if ("layout/fragment_search_0".equals(obj)) {
                    return new FragmentSearchBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_search is invalid. Received: " + obj);
            case 31:
                if ("layout/fragment_sort_dialog_0".equals(obj)) {
                    return new FragmentSortDialogBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_sort_dialog is invalid. Received: " + obj);
            case 32:
                if ("layout/fragment_transaction_history_0".equals(obj)) {
                    return new FragmentTransactionHistoryBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_transaction_history is invalid. Received: " + obj);
            case 33:
                if ("layout/fragment_wod_history_0".equals(obj)) {
                    return new FragmentWodHistoryBindingImpl(dataBindingComponent, view);
                }
                if ("layout-sw600dp/fragment_wod_history_0".equals(obj)) {
                    return new FragmentWodHistoryBindingSw600dpImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_wod_history is invalid. Received: " + obj);
            case 34:
                if ("layout/fragment_wod_year_history_0".equals(obj)) {
                    return new FragmentWodYearHistoryBindingImpl(dataBindingComponent, view);
                }
                if ("layout-sw600dp/fragment_wod_year_history_0".equals(obj)) {
                    return new FragmentWodYearHistoryBindingSw600dpImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_wod_year_history is invalid. Received: " + obj);
            case 35:
                if ("layout-sw600dp/fragment_word_category_0".equals(obj)) {
                    return new FragmentWordCategoryBindingSw600dpImpl(dataBindingComponent, view);
                }
                if ("layout/fragment_word_category_0".equals(obj)) {
                    return new FragmentWordCategoryBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_word_category is invalid. Received: " + obj);
            case 36:
                if ("layout/fragment_word_result_0".equals(obj)) {
                    return new FragmentWordResultBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_word_result is invalid. Received: " + obj);
            case 37:
                if ("layout/history_directories_item_layout_0".equals(obj)) {
                    return new HistoryDirectoriesItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for history_directories_item_layout is invalid. Received: " + obj);
            case 38:
                if ("layout/history_en_item_layout_0".equals(obj)) {
                    return new HistoryEnItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for history_en_item_layout is invalid. Received: " + obj);
            case 39:
                if ("layout/history_pe_item_layout_0".equals(obj)) {
                    return new HistoryPeItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for history_pe_item_layout is invalid. Received: " + obj);
            case 40:
                if ("layout/last_item_hisotry_layout_0".equals(obj)) {
                    return new LastItemHisotryLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for last_item_hisotry_layout is invalid. Received: " + obj);
            case 41:
                if ("layout/more_row_layout_0".equals(obj)) {
                    return new MoreRowLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for more_row_layout is invalid. Received: " + obj);
            case 42:
                if ("layout/payment_method_item_layout_0".equals(obj)) {
                    return new PaymentMethodItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for payment_method_item_layout is invalid. Received: " + obj);
            case 43:
                if ("layout/plan_item_layout_0".equals(obj)) {
                    return new PlanItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for plan_item_layout is invalid. Received: " + obj);
            case 44:
                if ("layout/pricing_feature_item_layout_0".equals(obj)) {
                    return new PricingFeatureItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for pricing_feature_item_layout is invalid. Received: " + obj);
            case 45:
                if ("layout/pricing_header_item_layout_0".equals(obj)) {
                    return new PricingHeaderItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for pricing_header_item_layout is invalid. Received: " + obj);
            case 46:
                if ("layout/pricing_sticky_header_layout_0".equals(obj)) {
                    return new PricingStickyHeaderLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for pricing_sticky_header_layout is invalid. Received: " + obj);
            case 47:
                if ("layout/result_order_item_layout_0".equals(obj)) {
                    return new ResultOrderItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for result_order_item_layout is invalid. Received: " + obj);
            case 48:
                if ("layout/select_directory_bottom_sheet_layout_0".equals(obj)) {
                    return new SelectDirectoryBottomSheetLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for select_directory_bottom_sheet_layout is invalid. Received: " + obj);
            case 49:
                if ("layout/subscriptions_more_row_layout_0".equals(obj)) {
                    return new SubscriptionsMoreRowLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for subscriptions_more_row_layout is invalid. Received: " + obj);
            case 50:
                if ("layout/wod_directories_item_layout_0".equals(obj)) {
                    return new WodDirectoriesItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for wod_directories_item_layout is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    private final ViewDataBinding internalGetViewDataBinding1(DataBindingComponent dataBindingComponent, View view, int i, Object obj) {
        switch (i) {
            case 51:
                if ("layout/wod_header_item_layout_0".equals(obj)) {
                    return new WodHeaderItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for wod_header_item_layout is invalid. Received: " + obj);
            case 52:
                if ("layout/wod_history_row_item_layout_0".equals(obj)) {
                    return new WodHistoryRowItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for wod_history_row_item_layout is invalid. Received: " + obj);
            case 53:
                if ("layout/wod_history_year_row_item_layout_0".equals(obj)) {
                    return new WodHistoryYearRowItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for wod_history_year_row_item_layout is invalid. Received: " + obj);
            case 54:
                if ("layout/word_category_directories_item_layout_0".equals(obj)) {
                    return new WordCategoryDirectoriesItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for word_category_directories_item_layout is invalid. Received: " + obj);
            case 55:
                if ("layout/word_suggestion_item_layout_0".equals(obj)) {
                    return new WordSuggestionItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for word_suggestion_item_layout is invalid. Received: " + obj);
            case 56:
                if ("layout/ws_translator_item_layout_0".equals(obj)) {
                    return new WsTranslatorItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for ws_translator_item_layout is invalid. Received: " + obj);
            case 57:
                if ("layout/ws_translator_no_subscription_item_layout_0".equals(obj)) {
                    return new WsTranslatorNoSubscriptionItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for ws_translator_no_subscription_item_layout is invalid. Received: " + obj);
            case 58:
                if ("layout/ws_translator_not_login_item_layout_0".equals(obj)) {
                    return new WsTranslatorNotLoginItemLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for ws_translator_not_login_item_layout is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        int i2 = INTERNAL_LAYOUT_ID_LOOKUP.get(i);
        if (i2 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag == null) {
            throw new RuntimeException("view must have a tag");
        }
        int i3 = (i2 - 1) / 50;
        if (i3 == 0) {
            return internalGetViewDataBinding0(dataBindingComponent, view, i2, tag);
        }
        if (i3 != 1) {
            return null;
        }
        return internalGetViewDataBinding1(dataBindingComponent, view, i2, tag);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || INTERNAL_LAYOUT_ID_LOOKUP.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Integer num;
        if (str == null || (num = InnerLayoutIdLookup.sKeys.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i) {
        return InnerBrLookup.sKeys.get(i);
    }

    @Override // androidx.databinding.DataBinderMapper
    public List<DataBinderMapper> collectDependencies() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        return arrayList;
    }

    private static class InnerBrLookup {
        static final SparseArray<String> sKeys;

        private InnerBrLookup() {
        }

        static {
            SparseArray<String> sparseArray = new SparseArray<>(56);
            sKeys = sparseArray;
            sparseArray.put(0, "_all");
            sparseArray.put(1, L6.G1);
            sparseArray.put(2, "closeAction");
            sparseArray.put(3, "count");
            sparseArray.put(4, "dataAdapter");
            sparseArray.put(5, "date");
            sparseArray.put(6, "decorator");
            sparseArray.put(7, "dismissClickListener");
            sparseArray.put(8, "doneClickListener");
            sparseArray.put(9, "enableSearchBar");
            sparseArray.put(10, "enableToolbar");
            sparseArray.put(11, "featureAdapter");
            sparseArray.put(12, "featureColor");
            sparseArray.put(13, "featureDescription");
            sparseArray.put(14, "featureStatusIcon");
            sparseArray.put(15, "featureStatusText");
            sparseArray.put(16, "featureTitle");
            sparseArray.put(17, "firstMonthPlanClicked");
            sparseArray.put(18, "hasPlan");
            sparseArray.put(19, "icon");
            sparseArray.put(20, "index");
            sparseArray.put(21, "isMeaningEnglish");
            sparseArray.put(22, "isPersianLanguage");
            sparseArray.put(23, "isWordEnglish");
            sparseArray.put(24, "loading");
            sparseArray.put(25, "locked");
            sparseArray.put(26, "logo");
            sparseArray.put(27, "logoutAction");
            sparseArray.put(28, "logoutBody");
            sparseArray.put(29, "method");
            sparseArray.put(30, "model");
            sparseArray.put(31, "onBackListener");
            sparseArray.put(32, "onClickListener");
            sparseArray.put(33, "onDeleteClickListener");
            sparseArray.put(34, "onDeleteListener");
            sparseArray.put(35, "onEditClickListener");
            sparseArray.put(36, "onSelectListener");
            sparseArray.put(37, "onSubscriptionClick");
            sparseArray.put(38, "payment");
            sparseArray.put(39, "planAdapter");
            sparseArray.put(40, "planColor");
            sparseArray.put(41, "planIcon");
            sparseArray.put(42, "price");
            sparseArray.put(43, "restoreClickListener");
            sparseArray.put(44, "rewardedAdsLoading");
            sparseArray.put(45, "saveClickListener");
            sparseArray.put(46, "secondaryButtonTitle");
            sparseArray.put(47, "selected");
            sparseArray.put(48, "selectedDuration");
            sparseArray.put(49, "sixthMonthPlanClicked");
            sparseArray.put(50, "stateMessage");
            sparseArray.put(51, "stateTitle");
            sparseArray.put(52, "title");
            sparseArray.put(53, "twelfthMonthPlanClicked");
            sparseArray.put(54, "word");
            sparseArray.put(55, "year");
        }
    }

    private static class InnerLayoutIdLookup {
        static final HashMap<String, Integer> sKeys;

        private InnerLayoutIdLookup() {
        }

        static {
            HashMap<String, Integer> map = new HashMap<>(71);
            sKeys = map;
            map.put("layout/activity_main_0", Integer.valueOf(R.layout.activity_main));
            map.put("layout/adapter_sort_layout_0", Integer.valueOf(R.layout.adapter_sort_layout));
            map.put("layout/categorized_word_item_layout_0", Integer.valueOf(R.layout.categorized_word_item_layout));
            map.put("layout/category_ellipsis_row_item_layout_0", Integer.valueOf(R.layout.category_ellipsis_row_item_layout));
            map.put("layout/category_row_item_layout_0", Integer.valueOf(R.layout.category_row_item_layout));
            map.put("layout/copy_right_more_row_layout_0", Integer.valueOf(R.layout.copy_right_more_row_layout));
            map.put("layout/edit_favorite_directories_item_layout_0", Integer.valueOf(R.layout.edit_favorite_directories_item_layout));
            map.put("layout/edit_mode_favorite_word_item_layout_0", Integer.valueOf(R.layout.edit_mode_favorite_word_item_layout));
            map.put("layout/favorite_directories_item_layout_0", Integer.valueOf(R.layout.favorite_directories_item_layout));
            map.put("layout/favorite_word_item_layout_0", Integer.valueOf(R.layout.favorite_word_item_layout));
            map.put("layout/fragment_a_i_0", Integer.valueOf(R.layout.fragment_a_i));
            map.put("layout/fragment_advertisement_on_boarding_0", Integer.valueOf(R.layout.fragment_advertisement_on_boarding));
            map.put("layout/fragment_camera_permission_0", Integer.valueOf(R.layout.fragment_camera_permission));
            map.put("layout-sw600dp/fragment_categories_0", Integer.valueOf(R.layout.fragment_categories));
            map.put("layout/fragment_categories_0", Integer.valueOf(R.layout.fragment_categories));
            map.put("layout-sw600dp/fragment_choose_language_0", Integer.valueOf(R.layout.fragment_choose_language));
            map.put("layout/fragment_choose_language_0", Integer.valueOf(R.layout.fragment_choose_language));
            map.put("layout-sw600dp/fragment_directory_words_0", Integer.valueOf(R.layout.fragment_directory_words));
            map.put("layout/fragment_directory_words_0", Integer.valueOf(R.layout.fragment_directory_words));
            map.put("layout-sw600dp/fragment_favorites_0", Integer.valueOf(R.layout.fragment_favorites));
            map.put("layout/fragment_favorites_0", Integer.valueOf(R.layout.fragment_favorites));
            map.put("layout/fragment_fullscreen_modal_0", Integer.valueOf(R.layout.fragment_fullscreen_modal));
            map.put("layout-sw600dp/fragment_history_0", Integer.valueOf(R.layout.fragment_history));
            map.put("layout/fragment_history_0", Integer.valueOf(R.layout.fragment_history));
            map.put("layout/fragment_language_on_boarding_0", Integer.valueOf(R.layout.fragment_language_on_boarding));
            map.put("layout/fragment_login_onboarding_0", Integer.valueOf(R.layout.fragment_login_onboarding));
            map.put("layout/fragment_login_signup_0", Integer.valueOf(R.layout.fragment_login_signup));
            map.put("layout-sw600dp/fragment_login_signup_0", Integer.valueOf(R.layout.fragment_login_signup));
            map.put("layout/fragment_logout_0", Integer.valueOf(R.layout.fragment_logout));
            map.put("layout-sw600dp/fragment_more_0", Integer.valueOf(R.layout.fragment_more));
            map.put("layout/fragment_more_0", Integer.valueOf(R.layout.fragment_more));
            map.put("layout/fragment_payment_method_0", Integer.valueOf(R.layout.fragment_payment_method));
            map.put("layout/fragment_pricing_0", Integer.valueOf(R.layout.fragment_pricing));
            map.put("layout-sw600dp/fragment_pricing_0", Integer.valueOf(R.layout.fragment_pricing));
            map.put("layout-sw600dp/fragment_profile_0", Integer.valueOf(R.layout.fragment_profile));
            map.put("layout/fragment_profile_0", Integer.valueOf(R.layout.fragment_profile));
            map.put("layout/fragment_registration_form_0", Integer.valueOf(R.layout.fragment_registration_form));
            map.put("layout-sw600dp/fragment_registration_form_0", Integer.valueOf(R.layout.fragment_registration_form));
            map.put("layout/fragment_result_order_modal_0", Integer.valueOf(R.layout.fragment_result_order_modal));
            map.put("layout/fragment_search_0", Integer.valueOf(R.layout.fragment_search));
            map.put("layout/fragment_sort_dialog_0", Integer.valueOf(R.layout.fragment_sort_dialog));
            map.put("layout/fragment_transaction_history_0", Integer.valueOf(R.layout.fragment_transaction_history));
            map.put("layout/fragment_wod_history_0", Integer.valueOf(R.layout.fragment_wod_history));
            map.put("layout-sw600dp/fragment_wod_history_0", Integer.valueOf(R.layout.fragment_wod_history));
            map.put("layout/fragment_wod_year_history_0", Integer.valueOf(R.layout.fragment_wod_year_history));
            map.put("layout-sw600dp/fragment_wod_year_history_0", Integer.valueOf(R.layout.fragment_wod_year_history));
            map.put("layout-sw600dp/fragment_word_category_0", Integer.valueOf(R.layout.fragment_word_category));
            map.put("layout/fragment_word_category_0", Integer.valueOf(R.layout.fragment_word_category));
            map.put("layout/fragment_word_result_0", Integer.valueOf(R.layout.fragment_word_result));
            map.put("layout/history_directories_item_layout_0", Integer.valueOf(R.layout.history_directories_item_layout));
            map.put("layout/history_en_item_layout_0", Integer.valueOf(R.layout.history_en_item_layout));
            map.put("layout/history_pe_item_layout_0", Integer.valueOf(R.layout.history_pe_item_layout));
            map.put("layout/last_item_hisotry_layout_0", Integer.valueOf(R.layout.last_item_hisotry_layout));
            map.put("layout/more_row_layout_0", Integer.valueOf(R.layout.more_row_layout));
            map.put("layout/payment_method_item_layout_0", Integer.valueOf(R.layout.payment_method_item_layout));
            map.put("layout/plan_item_layout_0", Integer.valueOf(R.layout.plan_item_layout));
            map.put("layout/pricing_feature_item_layout_0", Integer.valueOf(R.layout.pricing_feature_item_layout));
            map.put("layout/pricing_header_item_layout_0", Integer.valueOf(R.layout.pricing_header_item_layout));
            map.put("layout/pricing_sticky_header_layout_0", Integer.valueOf(R.layout.pricing_sticky_header_layout));
            map.put("layout/result_order_item_layout_0", Integer.valueOf(R.layout.result_order_item_layout));
            map.put("layout/select_directory_bottom_sheet_layout_0", Integer.valueOf(R.layout.select_directory_bottom_sheet_layout));
            map.put("layout/subscriptions_more_row_layout_0", Integer.valueOf(R.layout.subscriptions_more_row_layout));
            map.put("layout/wod_directories_item_layout_0", Integer.valueOf(R.layout.wod_directories_item_layout));
            map.put("layout/wod_header_item_layout_0", Integer.valueOf(R.layout.wod_header_item_layout));
            map.put("layout/wod_history_row_item_layout_0", Integer.valueOf(R.layout.wod_history_row_item_layout));
            map.put("layout/wod_history_year_row_item_layout_0", Integer.valueOf(R.layout.wod_history_year_row_item_layout));
            map.put("layout/word_category_directories_item_layout_0", Integer.valueOf(R.layout.word_category_directories_item_layout));
            map.put("layout/word_suggestion_item_layout_0", Integer.valueOf(R.layout.word_suggestion_item_layout));
            map.put("layout/ws_translator_item_layout_0", Integer.valueOf(R.layout.ws_translator_item_layout));
            map.put("layout/ws_translator_no_subscription_item_layout_0", Integer.valueOf(R.layout.ws_translator_no_subscription_item_layout));
            map.put("layout/ws_translator_not_login_item_layout_0", Integer.valueOf(R.layout.ws_translator_not_login_item_layout));
        }
    }
}
