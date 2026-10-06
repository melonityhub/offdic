package fast.dic.dict.utils;

import android.content.Context;
import androidx.core.text.util.LocalePreferences;
import com.ironsource.C4032o2;
import com.parse.ParseException;
import com.parse.ParseUser;
import com.yandex.div.core.dagger.Names;
import dagger.hilt.android.qualifiers.ApplicationContext;
import fast.dic.dict.R;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.domain.entity.EnglishResultOrder;
import fast.dic.dict.domain.entity.PersianResultOrder;
import fast.dic.dict.helpers.database.couchbase.FDFavourite;
import fast.dic.dict.models.database.EnglishAudioModel;
import fast.dic.dict.models.database.EnglishAudiosModel;
import fast.dic.dict.models.database.EnglishIdiomGroupModel;
import fast.dic.dict.models.database.EnglishIdiomsModel;
import fast.dic.dict.models.database.EnglishMeaningModel;
import fast.dic.dict.models.database.EnglishSearchResultModel;
import fast.dic.dict.models.database.EnglishSynonymsAntonymModel;
import fast.dic.dict.models.database.EnglishWordFamily;
import fast.dic.dict.models.database.PersianSearchResultModel;
import fast.dic.dict.models.database.PersianSynonymsAntonyms;
import fast.dic.dict.models.database.PersianWordDetail;
import fast.dic.dict.models.database.PosModel;
import fast.dic.dict.models.database.SentenseModel;
import fast.dic.dict.models.database.TranslateModel;
import fast.dic.dict.p000const.ConfigConstKt;
import fast.dic.dict.p000const.ConstKt;
import fast.dic.dict.services.parse.FDParseUser;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: FDHtml.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B+\b\u0007\u0012\f\b\u0001\u0010\u0002\u001a\u00020\u0003:\u0002\b\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u001a\u0002\b\u000b¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0003J\"\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u001c\u0010\u001d\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J$\u0010\u001e\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\u001aH\u0002J\u001c\u0010\"\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u001c\u0010#\u001a\u00020\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0002J\u0017\u0010$\u001a\u00020\u00162\b\u0010%\u001a\u0004\u0018\u00010&H\u0002¢\u0006\u0002\u0010'J\u0010\u0010(\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0018\u0010)\u001a\u00020\u00162\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010+H\u0002J\u0017\u0010-\u001a\u00020\u00162\b\u0010.\u001a\u0004\u0018\u00010&H\u0002¢\u0006\u0002\u0010'J\u0017\u0010/\u001a\u00020\u00162\b\u00100\u001a\u0004\u0018\u00010&H\u0002¢\u0006\u0002\u0010'J\u0018\u00101\u001a\u00020\u00162\u000e\u00102\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010+H\u0002J\u0016\u00103\u001a\u00020\u00162\f\u00102\u001a\b\u0012\u0004\u0012\u00020\u00160+H\u0002J\u001a\u00104\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u0012\u0010\u0015\u001a\u00020\u00162\b\u00105\u001a\u0004\u0018\u00010\u0016H\u0002J\u0018\u00106\u001a\u00020\u00162\u000e\u00107\u001a\n\u0012\u0004\u0012\u000208\u0018\u00010+H\u0002J\b\u00109\u001a\u00020\u0016H\u0002J\u0018\u0010:\u001a\u00020\u00162\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020<\u0018\u00010+H\u0002J(\u0010=\u001a\u00020\u00162\u000e\u0010>\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010+2\u0006\u0010@\u001a\u00020\u00162\u0006\u0010A\u001a\u00020\u0016H\u0002J\u0012\u0010B\u001a\u00020\u00162\b\u0010C\u001a\u0004\u0018\u00010DH\u0002J\u0012\u0010E\u001a\u00020\u00162\b\u0010F\u001a\u0004\u0018\u000108H\u0002J\"\u0010G\u001a\u00020\u00162\b\u0010H\u001a\u0004\u0018\u00010I2\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u001c\u0010J\u001a\u00020\u00162\b\u0010H\u001a\u0004\u0018\u00010I2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J$\u0010K\u001a\u00020\u00162\b\u0010H\u001a\u0004\u0018\u00010I2\b\u0010\u001f\u001a\u0004\u0018\u00010L2\u0006\u0010!\u001a\u00020\u001aH\u0002J\u001c\u0010M\u001a\u00020\u00162\b\u0010H\u001a\u0004\u0018\u00010I2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u0010\u0010N\u001a\u00020\u00162\u0006\u0010O\u001a\u00020PH\u0002J\u0018\u0010Q\u001a\u00020\u00162\u000e\u0010R\u001a\n\u0012\u0004\u0012\u00020S\u0018\u00010+H\u0002J\"\u0010T\u001a\u00020\u00162\u0006\u0010O\u001a\u00020P2\b\u0010U\u001a\u0004\u0018\u00010\u00162\u0006\u0010H\u001a\u00020IH\u0002J+\u0010V\u001a\u00020\u00162\b\u0010W\u001a\u0004\u0018\u00010\u001a2\b\u0010U\u001a\u0004\u0018\u00010\u00162\b\u0010X\u001a\u0004\u0018\u00010&H\u0002¢\u0006\u0002\u0010YJ\u0016\u0010Z\u001a\u00020\u00162\f\u00107\u001a\b\u0012\u0004\u0012\u0002080+H\u0002J\u0016\u0010[\u001a\u00020\u00162\u0006\u0010\\\u001a\u00020\u00162\u0006\u0010@\u001a\u00020\u0016J\u0010\u0010]\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010^\u001a\u00020\u0016H\u0002R#\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u0092\u0002\u0002\b\u0004¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006_"}, d2 = {"Lfast/dic/dict/utils/FDHtml;", "", Names.CONTEXT, "Landroid/content/Context;", "Ldagger/hilt/android/qualifiers/ApplicationContext;", "favorite", "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;", "resultLabel", "Lfast/dic/dict/helpers/database/FDResultLabel;", "<init>", "(Landroid/content/Context;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/database/FDResultLabel;)V", "Ljavax/inject/Inject;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "updateContext", "", "newContext", "generate", "", "englishSearchResult", "Lfast/dic/dict/models/database/EnglishSearchResultModel;", "isDarkMode", "", "translateModel", "Lfast/dic/dict/models/database/TranslateModel;", "generateEnglishMenu", "getEnglishResultOrders", C4032o2.u, "Lfast/dic/dict/domain/entity/EnglishResultOrder;", "isFirstItem", "generateEnglishBlock", "generateEnglishMeaningForOrder", "generateEnglishCountableUncountable", "countableEnum", "", "(Ljava/lang/Integer;)Ljava/lang/String;", "generateEnglishAudios", "generateEnglishPos", "posModels", "", "Lfast/dic/dict/models/database/PosModel;", "generateFormalInformal", "formalInformalEnum", "generateBritishAmerican", "britishAmericanEnum", "generateEnglishCategories", "categories", "generatePersianCategories", "generateEnglishMeanings", "cefrText", "generateEnglishSentences", "sentenceModel", "Lfast/dic/dict/models/database/SentenseModel;", "generateUserSuggestion", "generateEnglishSynonymsAntonyms", "englishSynonymsAntonyms", "Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;", "generateEnglishIdioms", "groupModels", "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;", "title", "id", "generateWordFamily", "englishWordFamily", "Lfast/dic/dict/models/database/EnglishWordFamily;", "generateNumberToWordsResult", "numberToWordsResult", "generatePersianResult", "persianSearchResult", "Lfast/dic/dict/models/database/PersianSearchResultModel;", "generatePersianMenu", "getPersianResultOrders", "Lfast/dic/dict/domain/entity/PersianResultOrder;", "generatePersianBlock", "generatePersianPhonetic", "wordDetail", "Lfast/dic/dict/models/database/PersianWordDetail;", "generatePersianSynonymsAntonyms", "persianSynonymsAntonyms", "Lfast/dic/dict/models/database/PersianSynonymsAntonyms;", "generatePersianMeanings", "word", "generateImageButton", "hasImage", "detailId", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;", "generatePersianSentences", "generateErrorMessage", "message", "getThemeClass", "getProPlan", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDHtml {

    @ApplicationContext
    private Context context;
    private final FDFavourite favorite;
    private final LocalStorage localStorage;
    private final fast.dic.dict.helpers.database.FDResultLabel resultLabel;

    /* JADX INFO: compiled from: FDHtml.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EnglishResultOrder.values().length];
            try {
                iArr[EnglishResultOrder.MEANING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnglishResultOrder.ENGLISH_SYNONYMS_ANTONYMS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnglishResultOrder.PHRASAL_VERBS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EnglishResultOrder.COLLOCATIONS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[EnglishResultOrder.IDIOMS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[EnglishResultOrder.WORD_FAMILY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Inject
    public FDHtml(@ApplicationContext Context context, FDFavourite favorite, fast.dic.dict.helpers.database.FDResultLabel resultLabel) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(favorite, "favorite");
        Intrinsics.checkNotNullParameter(resultLabel, "resultLabel");
        this.context = context;
        this.favorite = favorite;
        this.resultLabel = resultLabel;
        this.localStorage = new LocalStorage(this.context);
    }

    public final Context getContext() {
        return this.context;
    }

    public final void setContext(Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void updateContext(Context newContext) {
        Intrinsics.checkNotNullParameter(newContext, "newContext");
        this.context = newContext;
        this.resultLabel.updateContext(newContext);
    }

    public final String generate(EnglishSearchResultModel englishSearchResult, boolean isDarkMode, TranslateModel translateModel) {
        return "<!DOCTYPE html><html class=\"" + getThemeClass(isDarkMode) + " " + getProPlan() + "\"><head><meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' /><link type=\"text/css\" rel=\"stylesheet\" href=\"file:///android_asset/css/style-results.css\"/></head><body><noscript><div class=\"hero-alert\">" + this.context.getString(R.string.no_js_message) + "</div></noscript><noscript><div class=\"no-js\"></noscript><div class=\"results js-font-loaded js-results is-english\"><section class=\"results__wrapper\"><section class=\"results__container\"><section class=\"row\"><section class=\"fd-sidebar js-sidebar\">" + generateEnglishMenu(englishSearchResult, translateModel) + "</section><section class=\"fd-container--contents\">" + generateEnglishBlock(englishSearchResult, translateModel) + "</section></section></section></section></div><noscript></div></noscript><script type=\"text/javascript\" src=\"file:///android_asset/js/general.min.js\"></script></body></html>";
    }

    private final String generateEnglishMenu(EnglishSearchResultModel englishSearchResult, TranslateModel translateModel) throws ParseException {
        String str;
        List<String> default_english_result_order_by;
        if (translateModel == null) {
            str = "<ul class=\"fd-sidebar--contents\">";
        } else {
            str = ((Object) ("<ul class=\"fd-sidebar--contents\"><li><a href=\"#translate\" class=\"selected\">" + this.context.getString(R.string.results_translation_in_translator) + "</a>")) + "</li>";
        }
        if ((englishSearchResult != null ? englishSearchResult.getWord() : null) == null) {
            return ((Object) str) + "</ul>";
        }
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null || (default_english_result_order_by = fDParseUser.getEnglishResultsOrderBy()) == null) {
            default_english_result_order_by = ConfigConstKt.getDEFAULT_ENGLISH_RESULT_ORDER_BY();
        }
        int i = 0;
        boolean z = true;
        for (Object obj : default_english_result_order_by) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            String englishResultOrders = getEnglishResultOrders(englishSearchResult, EnglishResultOrder.INSTANCE.convertTo((String) obj), (translateModel == null && i == 0) || (translateModel == null && z));
            str = ((Object) str) + englishResultOrders;
            if (z && englishResultOrders.length() > 0) {
                z = false;
            }
            i = i2;
        }
        return ((Object) str) + "</ul>";
    }

    private final String getEnglishResultOrders(EnglishSearchResultModel englishSearchResult, EnglishResultOrder order, boolean isFirstItem) {
        EnglishWordFamily wordFamily;
        EnglishWordFamily wordFamily2;
        EnglishWordFamily wordFamily3;
        EnglishWordFamily wordFamily4;
        EnglishWordFamily wordFamily5;
        EnglishIdiomsModel idioms;
        List<EnglishIdiomGroupModel> idioms2;
        EnglishIdiomsModel idioms3;
        EnglishIdiomsModel idioms4;
        List<EnglishIdiomGroupModel> collocations;
        EnglishIdiomsModel idioms5;
        EnglishIdiomsModel idioms6;
        List<EnglishIdiomGroupModel> phrasalVerbs;
        EnglishIdiomsModel idioms7;
        List<EnglishSynonymsAntonymModel> englishSynonymsAntonyms;
        if (order == EnglishResultOrder.MEANING) {
            return ((("<li><a href=\"#meanings-sentences\" class" + (isFirstItem ? "=\"selected\"" : "") + ">") + this.resultLabel.getMeaningLabelEnglish(englishSearchResult)) + "</a>") + "</li>";
        }
        Collection adverb = null;
        if (order == EnglishResultOrder.ENGLISH_SYNONYMS_ANTONYMS) {
            if ((englishSearchResult != null ? englishSearchResult.getEnglishSynonymsAntonyms() : null) == null || (englishSynonymsAntonyms = englishSearchResult.getEnglishSynonymsAntonyms()) == null || !(!englishSynonymsAntonyms.isEmpty())) {
                return "";
            }
            String string = this.context.getString(R.string.english_synonyms_and_antonyms);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            Iterator it = StringsKt.split$default((CharSequence) string, new String[]{"|"}, false, 0, 6, (Object) null).iterator();
            String str = "";
            while (it.hasNext()) {
                str = ((Object) str) + "<li><a href=\"#synonyms-antonyms\" class" + (isFirstItem ? "=\"selected\"" : "") + ">" + ((String) it.next()) + "</a></li>";
            }
            return str;
        }
        if (order == EnglishResultOrder.PHRASAL_VERBS) {
            if (englishSearchResult != null && (idioms7 = englishSearchResult.getIdioms()) != null) {
                adverb = idioms7.getPhrasalVerbs();
            }
            if (adverb == null || (idioms6 = englishSearchResult.getIdioms()) == null || (phrasalVerbs = idioms6.getPhrasalVerbs()) == null || !(!phrasalVerbs.isEmpty())) {
                return "";
            }
            return "<li><a href=\"#phrasal-verbs\" class" + (isFirstItem ? "=\"selected\"" : "") + ">Phrasal verbs</a></li>";
        }
        if (order == EnglishResultOrder.COLLOCATIONS) {
            if (englishSearchResult != null && (idioms5 = englishSearchResult.getIdioms()) != null) {
                adverb = idioms5.getCollocations();
            }
            if (adverb == null || (idioms4 = englishSearchResult.getIdioms()) == null || (collocations = idioms4.getCollocations()) == null || !(!collocations.isEmpty())) {
                return "";
            }
            return "<li><a href=\"#collocations\" class" + (isFirstItem ? "=\"selected\"" : "") + ">Collocations</a></li>";
        }
        if (order == EnglishResultOrder.IDIOMS) {
            if (englishSearchResult != null && (idioms3 = englishSearchResult.getIdioms()) != null) {
                adverb = idioms3.getIdioms();
            }
            if (adverb == null || (idioms = englishSearchResult.getIdioms()) == null || (idioms2 = idioms.getIdioms()) == null || !(!idioms2.isEmpty())) {
                return "";
            }
            return "<li><a href=\"#idioms\" class" + (isFirstItem ? "=\"selected\"" : "") + ">Idioms</a></li>";
        }
        if (order != EnglishResultOrder.WORD_FAMILY) {
            return "";
        }
        if (((englishSearchResult == null || (wordFamily5 = englishSearchResult.getWordFamily()) == null) ? null : wordFamily5.getNoun()) == null) {
            if (((englishSearchResult == null || (wordFamily4 = englishSearchResult.getWordFamily()) == null) ? null : wordFamily4.getAdjective()) == null) {
                if (((englishSearchResult == null || (wordFamily3 = englishSearchResult.getWordFamily()) == null) ? null : wordFamily3.getVerbTransitive()) == null) {
                    if (((englishSearchResult == null || (wordFamily2 = englishSearchResult.getWordFamily()) == null) ? null : wordFamily2.getVerbIntransitive()) == null) {
                        if (englishSearchResult != null && (wordFamily = englishSearchResult.getWordFamily()) != null) {
                            adverb = wordFamily.getAdverb();
                        }
                        if (adverb == null) {
                            return "";
                        }
                    }
                }
            }
        }
        return "<li><a href=\"#word-family\" class" + (isFirstItem ? "=\"selected\"" : "") + ">" + this.context.getString(R.string.english_word_family) + "</a></li>";
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0220  */
    /* JADX WARN: Code duplicated, block: B:102:0x023d  */
    /* JADX WARN: Code duplicated, block: B:106:0x0255  */
    /* JADX WARN: Code duplicated, block: B:108:0x025b  */
    /* JADX WARN: Code duplicated, block: B:112:0x029d  */
    /* JADX WARN: Code duplicated, block: B:124:0x033e  */
    /* JADX WARN: Code duplicated, block: B:127:0x0346  */
    /* JADX WARN: Code duplicated, block: B:131:0x0380  */
    /* JADX WARN: Code duplicated, block: B:133:0x0386  */
    /* JADX WARN: Code duplicated, block: B:135:0x038c  */
    /* JADX WARN: Code duplicated, block: B:137:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:141:0x03ec  */
    /* JADX WARN: Code duplicated, block: B:146:0x042c  */
    /* JADX WARN: Code duplicated, block: B:151:0x046c  */
    /* JADX WARN: Code duplicated, block: B:156:0x04ac  */
    /* JADX WARN: Code duplicated, block: B:161:0x04ec  */
    private final String generateEnglishBlock(EnglishSearchResultModel englishSearchResult, TranslateModel translateModel) throws ParseException {
        List<String> default_english_result_order_by;
        String str;
        String str2;
        List<EnglishSynonymsAntonymModel> englishSynonymsAntonyms;
        EnglishIdiomsModel idioms;
        List<EnglishIdiomGroupModel> phrasalVerbs;
        EnglishIdiomsModel idioms2;
        List<EnglishIdiomGroupModel> collocations;
        EnglishIdiomsModel idioms3;
        List<EnglishIdiomGroupModel> idioms4;
        EnglishWordFamily wordFamily;
        String str3;
        Irregular.Companion companion;
        String pastParticiple;
        String str4;
        String pastParticiple2;
        String strUrlEncoded;
        String str5;
        String strUrlEncoded2;
        String infinitive;
        String strUrlEncoded3;
        String strCapitalized;
        String word = englishSearchResult != null ? englishSearchResult.getWord() : null;
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null || (default_english_result_order_by = fDParseUser.getEnglishResultsOrderBy()) == null) {
            default_english_result_order_by = ConfigConstKt.getDEFAULT_ENGLISH_RESULT_ORDER_BY();
        }
        if (word == null) {
            word = translateModel != null ? translateModel.getSentence() : null;
        }
        if (((englishSearchResult != null ? englishSearchResult.getWord() : null) == null || englishSearchResult.isAudioOffline()) && englishSearchResult != null) {
            EnglishAudiosModel englishAudiosModel = new EnglishAudiosModel(null, null, 3, null);
            englishAudiosModel.setAmerican(CollectionsKt.listOf(new EnglishAudioModel(word, null)));
            englishAudiosModel.setBritish(CollectionsKt.listOf(new EnglishAudioModel(word, null)));
            englishSearchResult.setAudios(englishAudiosModel);
        }
        String string = this.context.getString(R.string.save_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String strWordDocumentId = this.favorite.wordDocumentId(word, Category.English.getRawValue());
        String folderNameByWord = this.favorite.getFolderNameByWord(word, Category.English.getRawValue());
        if (strWordDocumentId == null) {
            str = "";
        } else {
            str = "icon-favorite-selected";
        }
        if (folderNameByWord != null) {
            string = folderNameByWord;
        }
        if (translateModel != null) {
            str2 = "<section class=\"meaning-section js-section\" id=\"translate\">";
        } else {
            str2 = "<section class=\"meaning-section js-section\" id=\"word\">";
        }
        String str6 = strWordDocumentId == null ? "" : strWordDocumentId;
        if (strWordDocumentId == null) {
            strWordDocumentId = "";
        }
        String str7 = ((Object) str2) + "<header class=\"results__header\"><div class=\"results__header--dates\"><div class=\"results__header--time\"></div><div id=\"a" + str6 + "\" onclick=\"window.location='fav://" + strWordDocumentId + "'\" class=\"results__favourite js-favorite\"><div class=\"btn-blue persian js-button\"><span class=\"icon icon-favorite " + str + "\"></span><span class=\"w\">" + string + "</span></div></div></div>";
        if ((englishSearchResult != null ? englishSearchResult.getWord() : null) != null) {
            if (word == null || (strCapitalized = StringExtKt.capitalized(word)) == null) {
                strCapitalized = "";
            }
            str7 = ((Object) str7) + "<h1>" + strCapitalized + "</h1>";
        }
        if (englishSearchResult != null) {
            str7 = ((Object) (((Object) (((Object) (((Object) (((Object) (((Object) str7) + "<div class=\"results__header--column-full\">")) + "<div class=\"results__header--audios\">")) + "<div class=\"results__header--audios-w\">")) + generateEnglishAudios(englishSearchResult))) + "</div>")) + "</div>";
        }
        if (englishSearchResult == null || englishSearchResult.getInfinitive() == null || Intrinsics.areEqual(englishSearchResult.getInfinitive(), "")) {
            if ((englishSearchResult != null ? englishSearchResult.getSimplePast() : null) == null || Intrinsics.areEqual(englishSearchResult.getSimplePast(), "")) {
                if ((englishSearchResult != null ? englishSearchResult.getThirdPersonSingular() : null) == null || Intrinsics.areEqual(englishSearchResult.getThirdPersonSingular(), "")) {
                    if ((englishSearchResult != null ? englishSearchResult.getPresentParticiple() : null) == null || Intrinsics.areEqual(englishSearchResult.getPresentParticiple(), "")) {
                        if ((englishSearchResult != null ? englishSearchResult.getPlural() : null) == null || Intrinsics.areEqual(englishSearchResult.getPlural(), "")) {
                            if ((englishSearchResult != null ? englishSearchResult.getComparative() : null) == null || Intrinsics.areEqual(englishSearchResult.getComparative(), "")) {
                                if ((englishSearchResult != null ? englishSearchResult.getSuperlative() : null) == null || Intrinsics.areEqual(englishSearchResult.getSuperlative(), "")) {
                                    if ((englishSearchResult != null ? englishSearchResult.getPastParticiple() : null) == null || Intrinsics.areEqual(englishSearchResult.getPastParticiple(), "")) {
                                        default_english_result_order_by = default_english_result_order_by;
                                    } else {
                                        str3 = ((Object) str7) + "<div class=\"results__header--column\"><div class=\"results__extra\">";
                                        if (englishSearchResult.getInfinitive() != null && !Intrinsics.areEqual(englishSearchResult.getInfinitive(), "")) {
                                            String string2 = this.context.getString(R.string.infinitive);
                                            infinitive = englishSearchResult.getInfinitive();
                                            if (infinitive != null || (strUrlEncoded3 = StringExtKt.urlEncoded(infinitive)) == null) {
                                                strUrlEncoded3 = "";
                                            }
                                            str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string2 + "</p> <strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded3 + "'\">" + englishSearchResult.getInfinitive() + "</a></strong></div>";
                                        }
                                        if (englishSearchResult.getSimplePast() != null || Intrinsics.areEqual(englishSearchResult.getSimplePast(), "")) {
                                            default_english_result_order_by = default_english_result_order_by;
                                        } else {
                                            String str8 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + this.context.getString(R.string.simple_past_tense) + "</p> ";
                                            Irregular.Companion companion2 = Irregular.INSTANCE;
                                            String simplePast = englishSearchResult.getSimplePast();
                                            Intrinsics.checkNotNull(simplePast);
                                            if (companion2.isSimplePastExists(simplePast)) {
                                                String simplePast2 = englishSearchResult.getSimplePast();
                                                if (simplePast2 == null || (strUrlEncoded2 = StringExtKt.urlEncoded(simplePast2)) == null) {
                                                    strUrlEncoded2 = "";
                                                }
                                                str5 = "<strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded2 + "'\">" + englishSearchResult.getSimplePast() + "</a></strong>";
                                            } else {
                                                str5 = "<strong>" + englishSearchResult.getSimplePast() + "</strong>";
                                            }
                                            str3 = ((Object) (((Object) str8) + str5)) + "</div>";
                                        }
                                        if (englishSearchResult.getPastParticiple() != null && !Intrinsics.areEqual(englishSearchResult.getPastParticiple(), "")) {
                                            String str9 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + this.context.getString(R.string.past_participle) + "</p> ";
                                            companion = Irregular.INSTANCE;
                                            pastParticiple = englishSearchResult.getPastParticiple();
                                            Intrinsics.checkNotNull(pastParticiple);
                                            if (companion.isPastParticipleExists(pastParticiple)) {
                                                pastParticiple2 = englishSearchResult.getPastParticiple();
                                                if (pastParticiple2 != null || (strUrlEncoded = StringExtKt.urlEncoded(pastParticiple2)) == null) {
                                                    strUrlEncoded = "";
                                                }
                                                str4 = "<strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded + "'\">" + englishSearchResult.getPastParticiple() + "</a></strong>";
                                            } else {
                                                str4 = "<strong>" + englishSearchResult.getPastParticiple() + "</strong>";
                                            }
                                            str3 = ((Object) (((Object) str9) + str4)) + "</div>";
                                        }
                                        if (englishSearchResult.getThirdPersonSingular() != null && !Intrinsics.areEqual(englishSearchResult.getThirdPersonSingular(), "")) {
                                            String string3 = this.context.getString(R.string.third_person_singular);
                                            String thirdPersonSingular = englishSearchResult.getThirdPersonSingular();
                                            Intrinsics.checkNotNull(thirdPersonSingular);
                                            str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string3 + "</p> <strong>" + thirdPersonSingular + "</strong></div>";
                                        }
                                        if (englishSearchResult.getPresentParticiple() != null && !Intrinsics.areEqual(englishSearchResult.getPresentParticiple(), "")) {
                                            String string4 = this.context.getString(R.string.present_participle);
                                            String presentParticiple = englishSearchResult.getPresentParticiple();
                                            Intrinsics.checkNotNull(presentParticiple);
                                            str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string4 + "</p> <strong>" + presentParticiple + "</strong></div>";
                                        }
                                        if (englishSearchResult.getPlural() != null && !Intrinsics.areEqual(englishSearchResult.getPlural(), "")) {
                                            String string5 = this.context.getString(R.string.plural);
                                            String plural = englishSearchResult.getPlural();
                                            Intrinsics.checkNotNull(plural);
                                            str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string5 + "</p> <strong>" + plural + "</strong></div>";
                                        }
                                        if (englishSearchResult.getComparative() != null && !Intrinsics.areEqual(englishSearchResult.getComparative(), "")) {
                                            String string6 = this.context.getString(R.string.comparative);
                                            String comparative = englishSearchResult.getComparative();
                                            Intrinsics.checkNotNull(comparative);
                                            str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string6 + "</p> <strong>" + comparative + "</strong></div>";
                                        }
                                        if (englishSearchResult.getSuperlative() != null && !Intrinsics.areEqual(englishSearchResult.getSuperlative(), "")) {
                                            String string7 = this.context.getString(R.string.superlative);
                                            String superlative = englishSearchResult.getSuperlative();
                                            Intrinsics.checkNotNull(superlative);
                                            str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string7 + "</p> <strong>" + superlative + "</strong></div>";
                                        }
                                        str7 = ((Object) (((Object) str3) + "</div>")) + "</div>";
                                    }
                                } else {
                                    str3 = ((Object) str7) + "<div class=\"results__header--column\"><div class=\"results__extra\">";
                                    if (englishSearchResult.getInfinitive() != null) {
                                        String string8 = this.context.getString(R.string.infinitive);
                                        infinitive = englishSearchResult.getInfinitive();
                                        if (infinitive != null) {
                                            strUrlEncoded3 = "";
                                        } else {
                                            strUrlEncoded3 = "";
                                        }
                                        str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string8 + "</p> <strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded3 + "'\">" + englishSearchResult.getInfinitive() + "</a></strong></div>";
                                    }
                                    if (englishSearchResult.getSimplePast() != null) {
                                        default_english_result_order_by = default_english_result_order_by;
                                    } else {
                                        default_english_result_order_by = default_english_result_order_by;
                                    }
                                    if (englishSearchResult.getPastParticiple() != null) {
                                        String str10 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + this.context.getString(R.string.past_participle) + "</p> ";
                                        companion = Irregular.INSTANCE;
                                        pastParticiple = englishSearchResult.getPastParticiple();
                                        Intrinsics.checkNotNull(pastParticiple);
                                        if (companion.isPastParticipleExists(pastParticiple)) {
                                            pastParticiple2 = englishSearchResult.getPastParticiple();
                                            if (pastParticiple2 != null) {
                                                strUrlEncoded = "";
                                            } else {
                                                strUrlEncoded = "";
                                            }
                                            str4 = "<strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded + "'\">" + englishSearchResult.getPastParticiple() + "</a></strong>";
                                        } else {
                                            str4 = "<strong>" + englishSearchResult.getPastParticiple() + "</strong>";
                                        }
                                        str3 = ((Object) (((Object) str10) + str4)) + "</div>";
                                    }
                                    if (englishSearchResult.getThirdPersonSingular() != null) {
                                        String string9 = this.context.getString(R.string.third_person_singular);
                                        String thirdPersonSingular2 = englishSearchResult.getThirdPersonSingular();
                                        Intrinsics.checkNotNull(thirdPersonSingular2);
                                        str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string9 + "</p> <strong>" + thirdPersonSingular2 + "</strong></div>";
                                    }
                                    if (englishSearchResult.getPresentParticiple() != null) {
                                        String string10 = this.context.getString(R.string.present_participle);
                                        String presentParticiple2 = englishSearchResult.getPresentParticiple();
                                        Intrinsics.checkNotNull(presentParticiple2);
                                        str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string10 + "</p> <strong>" + presentParticiple2 + "</strong></div>";
                                    }
                                    if (englishSearchResult.getPlural() != null) {
                                        String string11 = this.context.getString(R.string.plural);
                                        String plural2 = englishSearchResult.getPlural();
                                        Intrinsics.checkNotNull(plural2);
                                        str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string11 + "</p> <strong>" + plural2 + "</strong></div>";
                                    }
                                    if (englishSearchResult.getComparative() != null) {
                                        String string12 = this.context.getString(R.string.comparative);
                                        String comparative2 = englishSearchResult.getComparative();
                                        Intrinsics.checkNotNull(comparative2);
                                        str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string12 + "</p> <strong>" + comparative2 + "</strong></div>";
                                    }
                                    if (englishSearchResult.getSuperlative() != null) {
                                        String string13 = this.context.getString(R.string.superlative);
                                        String superlative2 = englishSearchResult.getSuperlative();
                                        Intrinsics.checkNotNull(superlative2);
                                        str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string13 + "</p> <strong>" + superlative2 + "</strong></div>";
                                    }
                                    str7 = ((Object) (((Object) str3) + "</div>")) + "</div>";
                                }
                            } else {
                                str3 = ((Object) str7) + "<div class=\"results__header--column\"><div class=\"results__extra\">";
                                if (englishSearchResult.getInfinitive() != null) {
                                    String string14 = this.context.getString(R.string.infinitive);
                                    infinitive = englishSearchResult.getInfinitive();
                                    if (infinitive != null) {
                                        strUrlEncoded3 = "";
                                    } else {
                                        strUrlEncoded3 = "";
                                    }
                                    str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string14 + "</p> <strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded3 + "'\">" + englishSearchResult.getInfinitive() + "</a></strong></div>";
                                }
                                if (englishSearchResult.getSimplePast() != null) {
                                    default_english_result_order_by = default_english_result_order_by;
                                } else {
                                    default_english_result_order_by = default_english_result_order_by;
                                }
                                if (englishSearchResult.getPastParticiple() != null) {
                                    String str11 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + this.context.getString(R.string.past_participle) + "</p> ";
                                    companion = Irregular.INSTANCE;
                                    pastParticiple = englishSearchResult.getPastParticiple();
                                    Intrinsics.checkNotNull(pastParticiple);
                                    if (companion.isPastParticipleExists(pastParticiple)) {
                                        pastParticiple2 = englishSearchResult.getPastParticiple();
                                        if (pastParticiple2 != null) {
                                            strUrlEncoded = "";
                                        } else {
                                            strUrlEncoded = "";
                                        }
                                        str4 = "<strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded + "'\">" + englishSearchResult.getPastParticiple() + "</a></strong>";
                                    } else {
                                        str4 = "<strong>" + englishSearchResult.getPastParticiple() + "</strong>";
                                    }
                                    str3 = ((Object) (((Object) str11) + str4)) + "</div>";
                                }
                                if (englishSearchResult.getThirdPersonSingular() != null) {
                                    String string15 = this.context.getString(R.string.third_person_singular);
                                    String thirdPersonSingular3 = englishSearchResult.getThirdPersonSingular();
                                    Intrinsics.checkNotNull(thirdPersonSingular3);
                                    str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string15 + "</p> <strong>" + thirdPersonSingular3 + "</strong></div>";
                                }
                                if (englishSearchResult.getPresentParticiple() != null) {
                                    String string16 = this.context.getString(R.string.present_participle);
                                    String presentParticiple3 = englishSearchResult.getPresentParticiple();
                                    Intrinsics.checkNotNull(presentParticiple3);
                                    str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string16 + "</p> <strong>" + presentParticiple3 + "</strong></div>";
                                }
                                if (englishSearchResult.getPlural() != null) {
                                    String string17 = this.context.getString(R.string.plural);
                                    String plural3 = englishSearchResult.getPlural();
                                    Intrinsics.checkNotNull(plural3);
                                    str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string17 + "</p> <strong>" + plural3 + "</strong></div>";
                                }
                                if (englishSearchResult.getComparative() != null) {
                                    String string18 = this.context.getString(R.string.comparative);
                                    String comparative3 = englishSearchResult.getComparative();
                                    Intrinsics.checkNotNull(comparative3);
                                    str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string18 + "</p> <strong>" + comparative3 + "</strong></div>";
                                }
                                if (englishSearchResult.getSuperlative() != null) {
                                    String string19 = this.context.getString(R.string.superlative);
                                    String superlative3 = englishSearchResult.getSuperlative();
                                    Intrinsics.checkNotNull(superlative3);
                                    str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string19 + "</p> <strong>" + superlative3 + "</strong></div>";
                                }
                                str7 = ((Object) (((Object) str3) + "</div>")) + "</div>";
                            }
                        } else {
                            str3 = ((Object) str7) + "<div class=\"results__header--column\"><div class=\"results__extra\">";
                            if (englishSearchResult.getInfinitive() != null) {
                                String string110 = this.context.getString(R.string.infinitive);
                                infinitive = englishSearchResult.getInfinitive();
                                if (infinitive != null) {
                                    strUrlEncoded3 = "";
                                } else {
                                    strUrlEncoded3 = "";
                                }
                                str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string110 + "</p> <strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded3 + "'\">" + englishSearchResult.getInfinitive() + "</a></strong></div>";
                            }
                            if (englishSearchResult.getSimplePast() != null) {
                                default_english_result_order_by = default_english_result_order_by;
                            } else {
                                default_english_result_order_by = default_english_result_order_by;
                            }
                            if (englishSearchResult.getPastParticiple() != null) {
                                String str12 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + this.context.getString(R.string.past_participle) + "</p> ";
                                companion = Irregular.INSTANCE;
                                pastParticiple = englishSearchResult.getPastParticiple();
                                Intrinsics.checkNotNull(pastParticiple);
                                if (companion.isPastParticipleExists(pastParticiple)) {
                                    pastParticiple2 = englishSearchResult.getPastParticiple();
                                    if (pastParticiple2 != null) {
                                        strUrlEncoded = "";
                                    } else {
                                        strUrlEncoded = "";
                                    }
                                    str4 = "<strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded + "'\">" + englishSearchResult.getPastParticiple() + "</a></strong>";
                                } else {
                                    str4 = "<strong>" + englishSearchResult.getPastParticiple() + "</strong>";
                                }
                                str3 = ((Object) (((Object) str12) + str4)) + "</div>";
                            }
                            if (englishSearchResult.getThirdPersonSingular() != null) {
                                String string111 = this.context.getString(R.string.third_person_singular);
                                String thirdPersonSingular4 = englishSearchResult.getThirdPersonSingular();
                                Intrinsics.checkNotNull(thirdPersonSingular4);
                                str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string111 + "</p> <strong>" + thirdPersonSingular4 + "</strong></div>";
                            }
                            if (englishSearchResult.getPresentParticiple() != null) {
                                String string112 = this.context.getString(R.string.present_participle);
                                String presentParticiple4 = englishSearchResult.getPresentParticiple();
                                Intrinsics.checkNotNull(presentParticiple4);
                                str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string112 + "</p> <strong>" + presentParticiple4 + "</strong></div>";
                            }
                            if (englishSearchResult.getPlural() != null) {
                                String string113 = this.context.getString(R.string.plural);
                                String plural4 = englishSearchResult.getPlural();
                                Intrinsics.checkNotNull(plural4);
                                str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string113 + "</p> <strong>" + plural4 + "</strong></div>";
                            }
                            if (englishSearchResult.getComparative() != null) {
                                String string114 = this.context.getString(R.string.comparative);
                                String comparative4 = englishSearchResult.getComparative();
                                Intrinsics.checkNotNull(comparative4);
                                str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string114 + "</p> <strong>" + comparative4 + "</strong></div>";
                            }
                            if (englishSearchResult.getSuperlative() != null) {
                                String string115 = this.context.getString(R.string.superlative);
                                String superlative4 = englishSearchResult.getSuperlative();
                                Intrinsics.checkNotNull(superlative4);
                                str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string115 + "</p> <strong>" + superlative4 + "</strong></div>";
                            }
                            str7 = ((Object) (((Object) str3) + "</div>")) + "</div>";
                        }
                    } else {
                        str3 = ((Object) str7) + "<div class=\"results__header--column\"><div class=\"results__extra\">";
                        if (englishSearchResult.getInfinitive() != null) {
                            String string116 = this.context.getString(R.string.infinitive);
                            infinitive = englishSearchResult.getInfinitive();
                            if (infinitive != null) {
                                strUrlEncoded3 = "";
                            } else {
                                strUrlEncoded3 = "";
                            }
                            str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string116 + "</p> <strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded3 + "'\">" + englishSearchResult.getInfinitive() + "</a></strong></div>";
                        }
                        if (englishSearchResult.getSimplePast() != null) {
                            default_english_result_order_by = default_english_result_order_by;
                        } else {
                            default_english_result_order_by = default_english_result_order_by;
                        }
                        if (englishSearchResult.getPastParticiple() != null) {
                            String str13 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + this.context.getString(R.string.past_participle) + "</p> ";
                            companion = Irregular.INSTANCE;
                            pastParticiple = englishSearchResult.getPastParticiple();
                            Intrinsics.checkNotNull(pastParticiple);
                            if (companion.isPastParticipleExists(pastParticiple)) {
                                pastParticiple2 = englishSearchResult.getPastParticiple();
                                if (pastParticiple2 != null) {
                                    strUrlEncoded = "";
                                } else {
                                    strUrlEncoded = "";
                                }
                                str4 = "<strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded + "'\">" + englishSearchResult.getPastParticiple() + "</a></strong>";
                            } else {
                                str4 = "<strong>" + englishSearchResult.getPastParticiple() + "</strong>";
                            }
                            str3 = ((Object) (((Object) str13) + str4)) + "</div>";
                        }
                        if (englishSearchResult.getThirdPersonSingular() != null) {
                            String string117 = this.context.getString(R.string.third_person_singular);
                            String thirdPersonSingular5 = englishSearchResult.getThirdPersonSingular();
                            Intrinsics.checkNotNull(thirdPersonSingular5);
                            str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string117 + "</p> <strong>" + thirdPersonSingular5 + "</strong></div>";
                        }
                        if (englishSearchResult.getPresentParticiple() != null) {
                            String string118 = this.context.getString(R.string.present_participle);
                            String presentParticiple5 = englishSearchResult.getPresentParticiple();
                            Intrinsics.checkNotNull(presentParticiple5);
                            str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string118 + "</p> <strong>" + presentParticiple5 + "</strong></div>";
                        }
                        if (englishSearchResult.getPlural() != null) {
                            String string119 = this.context.getString(R.string.plural);
                            String plural5 = englishSearchResult.getPlural();
                            Intrinsics.checkNotNull(plural5);
                            str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string119 + "</p> <strong>" + plural5 + "</strong></div>";
                        }
                        if (englishSearchResult.getComparative() != null) {
                            String string1110 = this.context.getString(R.string.comparative);
                            String comparative5 = englishSearchResult.getComparative();
                            Intrinsics.checkNotNull(comparative5);
                            str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string1110 + "</p> <strong>" + comparative5 + "</strong></div>";
                        }
                        if (englishSearchResult.getSuperlative() != null) {
                            String string1111 = this.context.getString(R.string.superlative);
                            String superlative5 = englishSearchResult.getSuperlative();
                            Intrinsics.checkNotNull(superlative5);
                            str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string1111 + "</p> <strong>" + superlative5 + "</strong></div>";
                        }
                        str7 = ((Object) (((Object) str3) + "</div>")) + "</div>";
                    }
                } else {
                    str3 = ((Object) str7) + "<div class=\"results__header--column\"><div class=\"results__extra\">";
                    if (englishSearchResult.getInfinitive() != null) {
                        String string1112 = this.context.getString(R.string.infinitive);
                        infinitive = englishSearchResult.getInfinitive();
                        if (infinitive != null) {
                            strUrlEncoded3 = "";
                        } else {
                            strUrlEncoded3 = "";
                        }
                        str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string1112 + "</p> <strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded3 + "'\">" + englishSearchResult.getInfinitive() + "</a></strong></div>";
                    }
                    if (englishSearchResult.getSimplePast() != null) {
                        default_english_result_order_by = default_english_result_order_by;
                    } else {
                        default_english_result_order_by = default_english_result_order_by;
                    }
                    if (englishSearchResult.getPastParticiple() != null) {
                        String str14 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + this.context.getString(R.string.past_participle) + "</p> ";
                        companion = Irregular.INSTANCE;
                        pastParticiple = englishSearchResult.getPastParticiple();
                        Intrinsics.checkNotNull(pastParticiple);
                        if (companion.isPastParticipleExists(pastParticiple)) {
                            pastParticiple2 = englishSearchResult.getPastParticiple();
                            if (pastParticiple2 != null) {
                                strUrlEncoded = "";
                            } else {
                                strUrlEncoded = "";
                            }
                            str4 = "<strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded + "'\">" + englishSearchResult.getPastParticiple() + "</a></strong>";
                        } else {
                            str4 = "<strong>" + englishSearchResult.getPastParticiple() + "</strong>";
                        }
                        str3 = ((Object) (((Object) str14) + str4)) + "</div>";
                    }
                    if (englishSearchResult.getThirdPersonSingular() != null) {
                        String string1113 = this.context.getString(R.string.third_person_singular);
                        String thirdPersonSingular6 = englishSearchResult.getThirdPersonSingular();
                        Intrinsics.checkNotNull(thirdPersonSingular6);
                        str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string1113 + "</p> <strong>" + thirdPersonSingular6 + "</strong></div>";
                    }
                    if (englishSearchResult.getPresentParticiple() != null) {
                        String string1114 = this.context.getString(R.string.present_participle);
                        String presentParticiple6 = englishSearchResult.getPresentParticiple();
                        Intrinsics.checkNotNull(presentParticiple6);
                        str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string1114 + "</p> <strong>" + presentParticiple6 + "</strong></div>";
                    }
                    if (englishSearchResult.getPlural() != null) {
                        String string1115 = this.context.getString(R.string.plural);
                        String plural6 = englishSearchResult.getPlural();
                        Intrinsics.checkNotNull(plural6);
                        str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string1115 + "</p> <strong>" + plural6 + "</strong></div>";
                    }
                    if (englishSearchResult.getComparative() != null) {
                        String string1116 = this.context.getString(R.string.comparative);
                        String comparative6 = englishSearchResult.getComparative();
                        Intrinsics.checkNotNull(comparative6);
                        str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string1116 + "</p> <strong>" + comparative6 + "</strong></div>";
                    }
                    if (englishSearchResult.getSuperlative() != null) {
                        String string1117 = this.context.getString(R.string.superlative);
                        String superlative6 = englishSearchResult.getSuperlative();
                        Intrinsics.checkNotNull(superlative6);
                        str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string1117 + "</p> <strong>" + superlative6 + "</strong></div>";
                    }
                    str7 = ((Object) (((Object) str3) + "</div>")) + "</div>";
                }
            } else {
                str3 = ((Object) str7) + "<div class=\"results__header--column\"><div class=\"results__extra\">";
                if (englishSearchResult.getInfinitive() != null) {
                    String string1118 = this.context.getString(R.string.infinitive);
                    infinitive = englishSearchResult.getInfinitive();
                    if (infinitive != null) {
                        strUrlEncoded3 = "";
                    } else {
                        strUrlEncoded3 = "";
                    }
                    str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string1118 + "</p> <strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded3 + "'\">" + englishSearchResult.getInfinitive() + "</a></strong></div>";
                }
                if (englishSearchResult.getSimplePast() != null) {
                    default_english_result_order_by = default_english_result_order_by;
                } else {
                    default_english_result_order_by = default_english_result_order_by;
                }
                if (englishSearchResult.getPastParticiple() != null) {
                    String str15 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + this.context.getString(R.string.past_participle) + "</p> ";
                    companion = Irregular.INSTANCE;
                    pastParticiple = englishSearchResult.getPastParticiple();
                    Intrinsics.checkNotNull(pastParticiple);
                    if (companion.isPastParticipleExists(pastParticiple)) {
                        pastParticiple2 = englishSearchResult.getPastParticiple();
                        if (pastParticiple2 != null) {
                            strUrlEncoded = "";
                        } else {
                            strUrlEncoded = "";
                        }
                        str4 = "<strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded + "'\">" + englishSearchResult.getPastParticiple() + "</a></strong>";
                    } else {
                        str4 = "<strong>" + englishSearchResult.getPastParticiple() + "</strong>";
                    }
                    str3 = ((Object) (((Object) str15) + str4)) + "</div>";
                }
                if (englishSearchResult.getThirdPersonSingular() != null) {
                    String string1119 = this.context.getString(R.string.third_person_singular);
                    String thirdPersonSingular7 = englishSearchResult.getThirdPersonSingular();
                    Intrinsics.checkNotNull(thirdPersonSingular7);
                    str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string1119 + "</p> <strong>" + thirdPersonSingular7 + "</strong></div>";
                }
                if (englishSearchResult.getPresentParticiple() != null) {
                    String string11110 = this.context.getString(R.string.present_participle);
                    String presentParticiple7 = englishSearchResult.getPresentParticiple();
                    Intrinsics.checkNotNull(presentParticiple7);
                    str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string11110 + "</p> <strong>" + presentParticiple7 + "</strong></div>";
                }
                if (englishSearchResult.getPlural() != null) {
                    String string11111 = this.context.getString(R.string.plural);
                    String plural7 = englishSearchResult.getPlural();
                    Intrinsics.checkNotNull(plural7);
                    str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string11111 + "</p> <strong>" + plural7 + "</strong></div>";
                }
                if (englishSearchResult.getComparative() != null) {
                    String string11112 = this.context.getString(R.string.comparative);
                    String comparative7 = englishSearchResult.getComparative();
                    Intrinsics.checkNotNull(comparative7);
                    str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string11112 + "</p> <strong>" + comparative7 + "</strong></div>";
                }
                if (englishSearchResult.getSuperlative() != null) {
                    String string11113 = this.context.getString(R.string.superlative);
                    String superlative7 = englishSearchResult.getSuperlative();
                    Intrinsics.checkNotNull(superlative7);
                    str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string11113 + "</p> <strong>" + superlative7 + "</strong></div>";
                }
                str7 = ((Object) (((Object) str3) + "</div>")) + "</div>";
            }
        } else {
            str3 = ((Object) str7) + "<div class=\"results__header--column\"><div class=\"results__extra\">";
            if (englishSearchResult.getInfinitive() != null) {
                String string11114 = this.context.getString(R.string.infinitive);
                infinitive = englishSearchResult.getInfinitive();
                if (infinitive != null) {
                    strUrlEncoded3 = "";
                } else {
                    strUrlEncoded3 = "";
                }
                str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string11114 + "</p> <strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded3 + "'\">" + englishSearchResult.getInfinitive() + "</a></strong></div>";
            }
            if (englishSearchResult.getSimplePast() != null) {
                default_english_result_order_by = default_english_result_order_by;
            } else {
                default_english_result_order_by = default_english_result_order_by;
            }
            if (englishSearchResult.getPastParticiple() != null) {
                String str16 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + this.context.getString(R.string.past_participle) + "</p> ";
                companion = Irregular.INSTANCE;
                pastParticiple = englishSearchResult.getPastParticiple();
                Intrinsics.checkNotNull(pastParticiple);
                if (companion.isPastParticipleExists(pastParticiple)) {
                    pastParticiple2 = englishSearchResult.getPastParticiple();
                    if (pastParticiple2 != null) {
                        strUrlEncoded = "";
                    } else {
                        strUrlEncoded = "";
                    }
                    str4 = "<strong><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded + "'\">" + englishSearchResult.getPastParticiple() + "</a></strong>";
                } else {
                    str4 = "<strong>" + englishSearchResult.getPastParticiple() + "</strong>";
                }
                str3 = ((Object) (((Object) str16) + str4)) + "</div>";
            }
            if (englishSearchResult.getThirdPersonSingular() != null) {
                String string11115 = this.context.getString(R.string.third_person_singular);
                String thirdPersonSingular8 = englishSearchResult.getThirdPersonSingular();
                Intrinsics.checkNotNull(thirdPersonSingular8);
                str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string11115 + "</p> <strong>" + thirdPersonSingular8 + "</strong></div>";
            }
            if (englishSearchResult.getPresentParticiple() != null) {
                String string11116 = this.context.getString(R.string.present_participle);
                String presentParticiple8 = englishSearchResult.getPresentParticiple();
                Intrinsics.checkNotNull(presentParticiple8);
                str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string11116 + "</p> <strong>" + presentParticiple8 + "</strong></div>";
            }
            if (englishSearchResult.getPlural() != null) {
                String string11117 = this.context.getString(R.string.plural);
                String plural8 = englishSearchResult.getPlural();
                Intrinsics.checkNotNull(plural8);
                str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string11117 + "</p> <strong>" + plural8 + "</strong></div>";
            }
            if (englishSearchResult.getComparative() != null) {
                String string11118 = this.context.getString(R.string.comparative);
                String comparative8 = englishSearchResult.getComparative();
                Intrinsics.checkNotNull(comparative8);
                str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string11118 + "</p> <strong>" + comparative8 + "</strong></div>";
            }
            if (englishSearchResult.getSuperlative() != null) {
                String string11119 = this.context.getString(R.string.superlative);
                String superlative8 = englishSearchResult.getSuperlative();
                Intrinsics.checkNotNull(superlative8);
                str3 = ((Object) str3) + "<div class=\"results__extra-item\"><p>" + string11119 + "</p> <strong>" + superlative8 + "</strong></div>";
            }
            str7 = ((Object) (((Object) str3) + "</div>")) + "</div>";
        }
        String str17 = ((Object) (((Object) str7) + "</header>")) + "</section>";
        if (translateModel != null) {
            str17 = ((Object) str17) + generateEnglishMeaningForOrder(translateModel, englishSearchResult);
        }
        int i = 0;
        for (Object obj : default_english_result_order_by) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            EnglishResultOrder englishResultOrderConvertTo = EnglishResultOrder.INSTANCE.convertTo((String) obj);
            Intrinsics.checkNotNull(englishResultOrderConvertTo);
            switch (WhenMappings.$EnumSwitchMapping$0[englishResultOrderConvertTo.ordinal()]) {
                case 1:
                    str17 = ((Object) str17) + generateEnglishMeaningForOrder(null, englishSearchResult);
                    continue;
                    i = i2;
                    break;
                case 2:
                    if (englishSearchResult != null && (englishSynonymsAntonyms = englishSearchResult.getEnglishSynonymsAntonyms()) != null) {
                        str17 = ((Object) str17) + generateEnglishSynonymsAntonyms(englishSynonymsAntonyms);
                    }
                    break;
                case 3:
                    if (englishSearchResult != null && (idioms = englishSearchResult.getIdioms()) != null && (phrasalVerbs = idioms.getPhrasalVerbs()) != null) {
                        str17 = ((Object) str17) + generateEnglishIdioms(phrasalVerbs, "Phrasal verbs", "phrasal-verbs");
                    }
                    break;
                case 4:
                    if (englishSearchResult != null && (idioms2 = englishSearchResult.getIdioms()) != null && (collocations = idioms2.getCollocations()) != null) {
                        str17 = ((Object) str17) + generateEnglishIdioms(collocations, "Collocations", "collocations");
                    }
                    break;
                case 5:
                    if (englishSearchResult != null && (idioms3 = englishSearchResult.getIdioms()) != null && (idioms4 = idioms3.getIdioms()) != null) {
                        str17 = ((Object) str17) + generateEnglishIdioms(idioms4, "Idioms", "idioms");
                    }
                    break;
                case 6:
                    if (englishSearchResult != null && (wordFamily = englishSearchResult.getWordFamily()) != null) {
                        str17 = ((Object) str17) + generateWordFamily(wordFamily);
                    }
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            i = i2;
        }
        return str17;
    }

    private final String generateEnglishMeaningForOrder(TranslateModel translateModel, EnglishSearchResultModel englishSearchResult) {
        String str = "";
        if (translateModel != null) {
            String str2 = ((("<section class=\"group-section js-section\" id=\"translator\"><h2>" + this.context.getString(R.string.results_translation_in_translator) + "</h2>") + "<div class=\"result\">") + "<div class=\"meaning persian\">") + "<a href=\"#\" onclick=\"window.location='fdcopy://'\" class=\"copy\"></a>";
            String result = translateModel.getResult();
            return (((str2 + "<p>" + (result != null ? result : "") + "</p>") + "</div>") + "</div>") + "</section>";
        }
        if ((englishSearchResult != null ? englishSearchResult.getWordDescriptionHtml() : null) != null && !Intrinsics.areEqual(englishSearchResult.getWordDescriptionHtml(), "")) {
            String str3 = "<div class=\"results__extra--description persian\"><h2>" + this.context.getString(R.string.results_description) + "</h2>";
            String wordDescriptionHtml = englishSearchResult.getWordDescriptionHtml();
            str = (str3 + (wordDescriptionHtml != null ? wordDescriptionHtml : "")) + "</div>";
        }
        if (englishSearchResult != null && englishSearchResult.isNumber()) {
            return (str + generateNumberToWordsResult(englishSearchResult.getEnglishNumbers())) + "</section>";
        }
        if (englishSearchResult == null) {
            return str;
        }
        String str4 = str + generateEnglishMeanings(englishSearchResult, translateModel);
        List<EnglishMeaningModel> meanings = englishSearchResult.getMeanings();
        if (meanings == null || meanings.isEmpty()) {
            return str4;
        }
        return str4 + generateUserSuggestion();
    }

    private final String generateEnglishCountableUncountable(Integer countableEnum) {
        if (countableEnum == null) {
            return "";
        }
        int iIntValue = countableEnum.intValue();
        if (iIntValue == 0) {
            return "<span class=\"countable-uncountable\">uncountable</span>";
        }
        if (iIntValue == 1) {
            return "<span class=\"countable-uncountable\">countable</span>";
        }
        if (iIntValue != 2) {
            return "";
        }
        return "<span class=\"countable-uncountable\">countable</span> <span class=\"countable-uncountable\">uncountable</span>";
    }

    private final String generateEnglishAudios(EnglishSearchResultModel englishSearchResult) {
        String phonetic;
        String phonetic2;
        if (englishSearchResult.getAudios() == null) {
            return "";
        }
        EnglishAudiosModel audios = englishSearchResult.getAudios();
        List<EnglishAudioModel> american = audios != null ? audios.getAmerican() : null;
        Intrinsics.checkNotNull(american);
        Iterator<EnglishAudioModel> it = american.iterator();
        String str = "";
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            EnglishAudioModel next = it.next();
            String str2 = str + (((next != null ? next.getFilename() : null) == null || Intrinsics.areEqual(next.getFilename(), "")) ? "<span class=\"audio audio-no-hand\">" : "<span class=\"audio\">");
            if ((next != null ? next.getFilename() : null) == null || Intrinsics.areEqual(next.getFilename(), "")) {
                str2 = str2 + "<span class=\"phonetic-title\">American:</span>";
            }
            if (next == null || (phonetic2 = next.getPhonetic()) == null) {
                phonetic2 = "";
            }
            String str3 = str2 + phonetic2;
            if ((next != null ? next.getFilename() : null) != null && !Intrinsics.areEqual(next.getFilename(), "")) {
                Integer wordId = englishSearchResult.getWordId();
                int iIntValue = wordId != null ? wordId.intValue() : -1;
                String filename = next.getFilename();
                Intrinsics.checkNotNull(filename);
                str3 = str3 + "<span onclick=\"window.location='sound-am://" + iIntValue + "__________" + StringExtKt.urlEncoded(filename) + "'\" class=\"audio-icon js-audio sicon-audio-am\"></span>";
            }
            str = str3 + "</span>";
        }
        EnglishAudiosModel audios2 = englishSearchResult.getAudios();
        List<EnglishAudioModel> british = audios2 != null ? audios2.getBritish() : null;
        Intrinsics.checkNotNull(british);
        Iterator<EnglishAudioModel> it2 = british.iterator();
        while (it2.hasNext()) {
            EnglishAudioModel next2 = it2.next();
            String str4 = str + (((next2 != null ? next2.getFilename() : null) == null || Intrinsics.areEqual(next2.getFilename(), "")) ? "<span class=\"audio audio-no-hand\">" : "<span class=\"audio\">");
            if ((next2 != null ? next2.getFilename() : null) == null || Intrinsics.areEqual(next2.getFilename(), "")) {
                str4 = str4 + "<span class=\"phonetic-title\">British:</span>";
            }
            if (next2 == null || (phonetic = next2.getPhonetic()) == null) {
                phonetic = "";
            }
            String str5 = str4 + phonetic;
            if ((next2 != null ? next2.getFilename() : null) != null && !Intrinsics.areEqual(next2.getFilename(), "")) {
                Integer wordId2 = englishSearchResult.getWordId();
                int iIntValue2 = wordId2 != null ? wordId2.intValue() : -1;
                String filename2 = next2.getFilename();
                Intrinsics.checkNotNull(filename2);
                str5 = str5 + "<span onclick=\"window.location='sound-br://" + iIntValue2 + "__________" + StringExtKt.urlEncoded(filename2) + "'\" class=\"audio-icon js-audio sicon-audio-br\"></span>";
            }
            str = str5 + "</span>";
        }
        return str;
    }

    private final String generateEnglishPos(List<PosModel> posModels) {
        if ((posModels != null ? posModels.size() : 0) > 6 || posModels == null) {
            return "";
        }
        String str = "";
        for (PosModel posModel : CollectionsKt.reversed(posModels)) {
            String posEquivalent = posModel.getPosEquivalent();
            if (posEquivalent == null) {
                posEquivalent = "";
            }
            String pos = posModel.getPos();
            if (pos == null) {
                pos = "";
            }
            str = str + "<span class=\"p js-tooltip\" data-align=\"top\" data-tooltip=\"" + posEquivalent + "\">" + pos + "</span> ";
        }
        return str;
    }

    private final String generateFormalInformal(Integer formalInformalEnum) {
        if (formalInformalEnum == null) {
            return "";
        }
        int iIntValue = formalInformalEnum.intValue();
        if (iIntValue == 0) {
            return "<span class=\"formal-informal\">informal</span>";
        }
        if (iIntValue != 1) {
            return "";
        }
        return "<span class=\"formal-informal\">formal</span>";
    }

    private final String generateBritishAmerican(Integer britishAmericanEnum) {
        if (britishAmericanEnum == null) {
            return "";
        }
        int iIntValue = britishAmericanEnum.intValue();
        if (iIntValue == 0) {
            return "<span class=\"british-american\">انگلیسی بریتانیایی</span>";
        }
        if (iIntValue != 1) {
            return "";
        }
        return "<span class=\"british-american\">انگلیسی آمریکایی</span>";
    }

    private final String generateEnglishCategories(List<String> categories) {
        List<String> list = categories;
        if (list == null || list.isEmpty()) {
            return "";
        }
        String str = "";
        for (String str2 : categories) {
            if (!Intrinsics.areEqual(str2, "")) {
                str = (str + "<span class=\"british-american\">" + str2 + "</span>") + " ";
            }
        }
        return str;
    }

    private final String generatePersianCategories(List<String> categories) {
        if (categories.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str : categories) {
            if (str.length() != 0) {
                sb.append("<span class=\"persian british-american\">").append(str).append("</span> ");
            }
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    private final String generateEnglishMeanings(EnglishSearchResultModel englishSearchResult, TranslateModel translateModel) {
        String str;
        List<EnglishMeaningModel> meanings = englishSearchResult.getMeanings();
        if (meanings == null || meanings.isEmpty()) {
            return "";
        }
        String str2 = ((("<section class=\"meaning-section js-section js-hotlink \" id=\"" + (translateModel == null ? "meanings-sentences" : "") + "\">") + "<section class=\"group-section\">") + "<h2>" + new FDResultLabel().getMeaningLabel(englishSearchResult, this.context) + "</h2>") + "<div class=\"result\">";
        List<EnglishMeaningModel> meanings2 = englishSearchResult.getMeanings();
        Intrinsics.checkNotNull(meanings2);
        for (EnglishMeaningModel englishMeaningModel : meanings2) {
            List<SentenseModel> sentenses = englishMeaningModel.getSentenses();
            if ((sentenses != null ? sentenses.size() : 0) > 2) {
                str = "<div class=\"js-content  meaning\">";
            } else {
                str = "<div class=\"meaning\">";
            }
            String str3 = (((((((((((str2 + str) + "<div class=\"pos\">") + generateFormalInformal(englishMeaningModel.getFormalInformal())) + generateEnglishCountableUncountable(englishMeaningModel.getCountableUncountable())) + generateEnglishPos(englishMeaningModel.getPos())) + generate(englishMeaningModel.getCefr())) + "</div>") + "<p>") + generateBritishAmerican(englishMeaningModel.getBritishAmerican())) + " ") + generateEnglishCategories(englishMeaningModel.getCategories())) + " ";
            String meaning = englishMeaningModel.getMeaning();
            if (meaning == null) {
                meaning = "";
            }
            String str4 = ((str3 + meaning) + "</p>") + generateImageButton(englishMeaningModel.getHasImage(), englishSearchResult.getWord(), englishMeaningModel.getDetailId());
            if (!Intrinsics.areEqual(englishMeaningModel.getDescriptionHtml(), "") && englishMeaningModel.getDescriptionHtml() != null) {
                String str5 = str4 + "<div class=\"meaning-description\">";
                String descriptionHtml = englishMeaningModel.getDescriptionHtml();
                if (descriptionHtml == null) {
                    descriptionHtml = "";
                }
                str4 = (str5 + descriptionHtml) + "</div>";
            }
            str2 = (str4 + generateEnglishSentences(englishMeaningModel.getSentenses())) + "</div>";
        }
        return ((str2 + "</div>") + "</section>") + "</section>";
    }

    private final String generate(String cefrText) {
        if (cefrText == null) {
            return "";
        }
        return "<span class=\"space\"></span><span class=\"cefr js-tooltip\" data-align=\"left\" data-tooltip=\" A1 (Beginner)\n  A2 (Elementary)\n  B1 (Intermediate)\n  B2 (Upper Intermediate)\n  C1 (Advanced)\n  C2 (Proficiency)\n \">" + cefrText + "</span>";
    }

    private final String generateEnglishSentences(List<SentenseModel> sentenceModel) {
        List<SentenseModel> list = sentenceModel;
        if (list == null || list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder("<div class=\"sentences js-sentences\">");
        int i = 0;
        for (Object obj : sentenceModel) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            SentenseModel sentenseModel = (SentenseModel) obj;
            String str = i2 <= 2 ? "" : " is-hide";
            Integer english_sentence_id = sentenseModel.getEnglish_sentence_id();
            int iIntValue = english_sentence_id != null ? english_sentence_id.intValue() : -1;
            String english = sentenseModel.getEnglish();
            if (english == null) {
                english = "";
            }
            String persian = sentenseModel.getPersian();
            if (persian == null) {
                persian = "";
            }
            sb.append(StringsKt.trimIndent("\n                <div class=\"result__sentences" + str + "\">\n                    <div class=\"sentence\">\n                        <div class=\"audios\">\n                            <span onclick=\"window.location='sentence-en-am://" + iIntValue + "'\" class=\"sicon-audio-am audio js-audio\"></span>\n                            <span onclick=\"window.location='sentence-en-br://" + iIntValue + "'\" class=\"sicon-audio-br audio js-audio\"></span>\n                        </div>\n                        <p>" + english + "</p>\n                    </div>\n                    <div class=\"sentence\">\n                        <p>" + persian + "</p>\n                    </div>\n                </div>\n                "));
            if (i2 == 2 && sentenceModel.size() > 2) {
                sb.append(StringsKt.trimIndent("\n                    <div class=\"more-sentences-wrapper js-more-content\">\n                        <div class=\"more-sentences\">" + this.context.getString(R.string.more_sample_sentences) + "</div>\n                    </div>\n                    "));
            }
            i = i2;
        }
        sb.append("</div>");
        return sb.toString();
    }

    private final String generateUserSuggestion() {
        return "\n        <section class=\"suggestion-form-btn\">\n            <a class=\"button\" href=\"#\" onclick=\"window.location='fdusersuggestion://'\">\n                <span class=\"text\">" + this.context.getString(R.string.suggest_improvments_cta_title) + "</span>\n            </a>\n        </section>\n    ";
    }

    /* JADX WARN: Code duplicated, block: B:36:0x01f2  */
    private final String generateEnglishSynonymsAntonyms(List<EnglishSynonymsAntonymModel> englishSynonymsAntonyms) {
        Iterator<EnglishSynonymsAntonymModel> it;
        double d;
        int i;
        String str;
        String str2;
        List<EnglishSynonymsAntonymModel> list = englishSynonymsAntonyms;
        if (list == null || list.isEmpty()) {
            return "";
        }
        String str3 = "<section class=\"group-section js-section js-hotlink\" id=\"synonyms-antonyms\"><h2>" + this.context.getString(R.string.english_synonyms_and_antonyms) + "</h2>";
        Iterator<EnglishSynonymsAntonymModel> it2 = englishSynonymsAntonyms.iterator();
        while (it2.hasNext()) {
            EnglishSynonymsAntonymModel next = it2.next();
            String str4 = ((Object) (((Object) (((Object) (((Object) str3) + "<div class=\"results__english-synonyms_antonyms\">")) + "<ol>")) + "<li class=\"result__synonyms_antonyms\">")) + "<div class=\"definition\">";
            String pos = next.getPos();
            if (pos != null) {
                str4 = ((Object) str4) + "<span class=\"pos\"><span class=\"p\">" + pos + "</span></span> ";
            }
            String definitions = next.getDefinitions();
            if (definitions != null) {
                str4 = ((Object) str4) + "<span>" + definitions + "</span>";
            }
            String str5 = ((Object) str4) + "</div>";
            String synonyms = next.getSynonyms();
            double d2 = 3.0d;
            int i2 = 0;
            int i3 = 1;
            if (synonyms != null) {
                String str6 = synonyms;
                if (str6.length() == 0) {
                    it = it2;
                    d = 3.0d;
                    i = 0;
                } else {
                    List<String> listSplit$default = StringsKt.split$default((CharSequence) str6, new String[]{io.appmetrica.analytics.coreutils.internal.StringUtils.COMMA}, false, 0, 6, (Object) null);
                    if (listSplit$default.isEmpty()) {
                        it = it2;
                        d = 3.0d;
                        i = 0;
                    } else {
                        int iCeil = (int) Math.ceil(((double) listSplit$default.size()) / 3.0d);
                        String str7 = ((Object) (((Object) (((Object) str5) + "<div class=\"synonyms_antonyms synonyms_antonyms--synonyms\">")) + "<div class=\"synonyms_antonyms--title\"><strong>Synonyms:</strong></div>")) + "<div class=\"synonyms_antonyms--content\">";
                        int i4 = 0;
                        for (String str8 : listSplit$default) {
                            double d3 = d2;
                            i4 += i3;
                            if (i4 <= iCeil) {
                                str2 = "synonyms-color-1";
                            } else if (i4 <= iCeil * 2) {
                                str2 = "synonyms-color-2";
                            } else {
                                str2 = "synonyms-color-3";
                            }
                            int i5 = i2;
                            str7 = ((Object) str7) + StringsKt.trimIndent("\n                            <div class=\"synonyms " + str2 + "\">\n                                <a href=\"#\" onclick=\"window.location='fdword://" + StringExtKt.urlEncoded(str8) + "'\">\n                                    " + str8 + "\n                                </a>\n                            </div>\n                        ");
                            d2 = d3;
                            i2 = i5;
                            it2 = it2;
                            i3 = 1;
                        }
                        it = it2;
                        d = d2;
                        i = i2;
                        str5 = ((Object) (((Object) str7) + "</div>")) + "</div>";
                    }
                }
            } else {
                it = it2;
                d = 3.0d;
                i = 0;
            }
            String antonyms = next.getAntonyms();
            if (antonyms != null) {
                String str9 = antonyms;
                if (str9.length() != 0) {
                    String[] strArr = new String[1];
                    strArr[i] = io.appmetrica.analytics.coreutils.internal.StringUtils.COMMA;
                    List<String> listSplit$default2 = StringsKt.split$default((CharSequence) str9, strArr, false, 0, 6, (Object) null);
                    if (!listSplit$default2.isEmpty()) {
                        int iCeil2 = (int) Math.ceil(((double) listSplit$default2.size()) / d);
                        String str10 = ((Object) (((Object) (((Object) str5) + "<div class=\"synonyms_antonyms synonyms_antonyms--antonyms\">")) + "<div class=\"synonyms_antonyms--title\"><strong>Antonyms:</strong></div>")) + "<div class=\"synonyms_antonyms--content\">";
                        int i6 = i;
                        for (String str11 : listSplit$default2) {
                            i6++;
                            if (i6 <= iCeil2) {
                                str = "antonyms-color-1";
                            } else if (i6 <= iCeil2 * 2) {
                                str = "antonyms-color-2";
                            } else {
                                str = "antonyms-color-3";
                            }
                            str10 = ((Object) str10) + StringsKt.trimIndent("\n                            <div class=\"antonyms " + str + "\">\n                                <a href=\"#\" onclick=\"window.location='fdword://" + StringExtKt.urlEncoded(str11) + "'\">\n                                    " + str11 + "\n                                </a>\n                            </div>\n                        ");
                        }
                        str5 = ((Object) (((Object) str10) + "</div>")) + "</div>";
                    }
                }
            }
            str3 = ((Object) (((Object) (((Object) str5) + "</li>")) + "</ol>")) + "</div>";
            it2 = it;
        }
        return ((Object) str3) + "</section>";
    }

    private final String generateEnglishIdioms(List<EnglishIdiomGroupModel> groupModels, String title, String id) {
        List<EnglishIdiomGroupModel> list = groupModels;
        if (list == null || list.isEmpty()) {
            return "";
        }
        String str = ((Object) (((Object) ("<section class=\"group-section js-section js-content js-hotlink\" id=\"" + id + "\">")) + "<h2 class=\"ltr\">" + title + "</h2>")) + "<div class=\"results__english-idioms-container\">";
        List<EnglishIdiomGroupModel> list2 = groupModels;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        int i = 0;
        for (Object obj : list2) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            EnglishIdiomGroupModel englishIdiomGroupModel = (EnglishIdiomGroupModel) obj;
            String str2 = ((Object) str) + "<div class=\"results__english-idioms" + (i2 <= 5 ? "" : " is-hide") + "\">";
            String englishWord = englishIdiomGroupModel.getEnglishWord();
            if (englishWord != null) {
                str2 = ((Object) str2) + "<p class=\"english\"><a href=\"#\" onclick=\"window.location='fdword://" + StringExtKt.urlEncoded(englishWord) + "'\">" + englishWord + "</a></p>";
            }
            List<String> persianMeanings = englishIdiomGroupModel.getPersianMeanings();
            if (persianMeanings != null) {
                Iterator<String> it = persianMeanings.iterator();
                while (it.hasNext()) {
                    str2 = ((Object) str2) + "<p class=\"persian\">" + it.next() + "</p>";
                }
            }
            str = ((Object) str2) + "</div>";
            if (i2 == 5 && groupModels.size() > 5) {
                str = ((Object) str) + "\n                    <div class=\"more-content-wrapper js-more-content\">\n                        <div class=\"more-content\">" + this.context.getString(R.string.more_content) + "</div>\n                    </div>\n                    ";
            }
            arrayList.add(Unit.INSTANCE);
            i = i2;
        }
        return ((Object) (((Object) str) + "</div>")) + "</section>";
    }

    private final String generateWordFamily(EnglishWordFamily englishWordFamily) {
        if (englishWordFamily == null) {
            return "";
        }
        if (englishWordFamily.getNoun() == null && englishWordFamily.getAdjective() == null && englishWordFamily.getVerbTransitive() == null && englishWordFamily.getVerbIntransitive() == null && englishWordFamily.getAdverb() == null) {
            return "";
        }
        String str = ((Object) ("<section class=\"group-section js-section\" id=\"word-family\"><h2>" + this.context.getString(R.string.english_word_family) + "</h2>")) + "<div class=\"results__english-word-family\">";
        List<String> noun = englishWordFamily.getNoun();
        if (noun != null) {
            String str2 = ((Object) (((Object) str) + "<div class=\"result__word-family\">")) + "<div class=\"pos\"><span class=\"p\">" + FDWordPartOfSpeech.INSTANCE.getPos(FDLanguageWord.LanguageType.English, 1) + "</span></div>";
            int i = 0;
            for (String str3 : noun) {
                i++;
                str2 = ((Object) str2) + "<a href=\"#\" onclick=\"window.location='fdword://" + StringExtKt.urlEncoded(str3) + "'\">" + str3 + "</a>";
                if (noun.size() > i) {
                    str2 = ((Object) str2) + ", ";
                }
            }
            str = ((Object) str2) + "</div>";
        }
        List<String> adjective = englishWordFamily.getAdjective();
        if (adjective != null) {
            String str4 = ((Object) (((Object) str) + "<div class=\"result__word-family\">")) + "<div class=\"pos\"><span class=\"p\">" + FDWordPartOfSpeech.INSTANCE.getPos(FDLanguageWord.LanguageType.English, 7) + "</span></div>";
            int i2 = 0;
            for (String str5 : adjective) {
                i2++;
                str4 = ((Object) str4) + "<a href=\"#\" onclick=\"window.location='fdword://" + StringExtKt.urlEncoded(str5) + "'\">" + str5 + "</a>";
                if (adjective.size() > i2) {
                    str4 = ((Object) str4) + ", ";
                }
            }
            str = ((Object) str4) + "</div>";
        }
        List<String> verbTransitive = englishWordFamily.getVerbTransitive();
        if (verbTransitive != null) {
            String str6 = ((Object) (((Object) str) + "<div class=\"result__word-family\">")) + "<div class=\"pos\"><span class=\"p\">" + FDWordPartOfSpeech.INSTANCE.getPos(FDLanguageWord.LanguageType.English, 5) + "</span></div>";
            int i3 = 0;
            for (String str7 : verbTransitive) {
                i3++;
                str6 = ((Object) str6) + "<a href=\"#\" onclick=\"window.location='fdword://" + StringExtKt.urlEncoded(str7) + "'\">" + str7 + "</a>";
                if (verbTransitive.size() > i3) {
                    str6 = ((Object) str6) + ", ";
                }
            }
            str = ((Object) str6) + "</div>";
        }
        List<String> verbIntransitive = englishWordFamily.getVerbIntransitive();
        if (verbIntransitive != null) {
            String str8 = ((Object) (((Object) str) + "<div class=\"result__word-family\">")) + "<div class=\"pos\"><span class=\"p\">" + FDWordPartOfSpeech.INSTANCE.getPos(FDLanguageWord.LanguageType.English, 6) + "</span></div>";
            int i4 = 0;
            for (String str9 : verbIntransitive) {
                i4++;
                str8 = ((Object) str8) + "<a href=\"#\" onclick=\"window.location='fdword://" + StringExtKt.urlEncoded(str9) + "'\">" + str9 + "</a>";
                if (verbIntransitive.size() > i4) {
                    str8 = ((Object) str8) + ", ";
                }
            }
            str = ((Object) str8) + "</div>";
        }
        List<String> adverb = englishWordFamily.getAdverb();
        if (adverb != null) {
            String str10 = ((Object) (((Object) str) + "<div class=\"result__word-family\">")) + "<div class=\"pos\"><span class=\"p\">" + FDWordPartOfSpeech.INSTANCE.getPos(FDLanguageWord.LanguageType.English, 8) + "</span></div>";
            int i5 = 0;
            for (String str11 : adverb) {
                i5++;
                str10 = ((Object) str10) + "<a href=\"#\" onclick=\"window.location='fdword://" + StringExtKt.urlEncoded(str11) + "'\">" + str11 + "</a>";
                if (adverb.size() > i5) {
                    str10 = ((Object) str10) + ", ";
                }
            }
            str = ((Object) str10) + "</div>";
        }
        return ((Object) (((Object) str) + "</div>")) + "</section>";
    }

    private final String generateNumberToWordsResult(SentenseModel numberToWordsResult) {
        if (numberToWordsResult == null) {
            return "";
        }
        String persian = numberToWordsResult.getPersian();
        if (persian == null) {
            persian = "";
        }
        String str = "<section class=\"group-section is-number js-hotlink\"><div class=\"result\"><div class=\"meaning\"><p class=\"persian\">" + persian + " </p>";
        String english = numberToWordsResult.getEnglish();
        return (((str + "<p class=\"english\">" + (english != null ? english : "") + " </p>") + "</div>") + "</div>") + "</section>";
    }

    public final String generatePersianResult(PersianSearchResultModel persianSearchResult, boolean isDarkMode, TranslateModel translateModel) {
        return "<!DOCTYPE html><html class=\"" + getThemeClass(isDarkMode) + " " + getProPlan() + "\"><head><meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' /><link type=\"text/css\" rel=\"stylesheet\" href=\"file:///android_asset/css/style-results.css\"/></head><body><noscript><div class=\"hero-alert\">" + this.context.getString(R.string.no_js_message) + "</div></noscript><noscript><div class=\"no-js\"></noscript><div class=\"results js-font-loaded js-results is-persian\"><section class=\"results__wrapper\"><section class=\"results__container\"><section class=\"row\"><section class=\"fd-sidebar js-sidebar\">" + generatePersianMenu(persianSearchResult, translateModel) + "</section><section class=\"fd-container--contents\">" + generatePersianBlock(persianSearchResult, translateModel) + "</section></section></section></section></div><noscript></div></noscript><script type=\"text/javascript\" src=\"file:///android_asset/js/general.min.js\"></script></body></html>";
    }

    private final String generatePersianMenu(PersianSearchResultModel persianSearchResult, TranslateModel translateModel) throws ParseException {
        String str;
        List<String> default_persian_result_order_by;
        if (persianSearchResult == null) {
            return "";
        }
        if (translateModel == null) {
            str = "<ul class=\"fd-sidebar--contents\">";
        } else {
            str = ((Object) ("<ul class=\"fd-sidebar--contents\"><li><a href=\"#translate\" class=\"selected\">" + this.context.getString(R.string.results_translation_in_translator) + "</a>")) + "</li>";
        }
        if (persianSearchResult.getWord() == null) {
            return ((Object) str) + "</ul>";
        }
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null || (default_persian_result_order_by = fDParseUser.getPersianResultsOrderBy()) == null) {
            default_persian_result_order_by = ConfigConstKt.getDEFAULT_PERSIAN_RESULT_ORDER_BY();
        }
        int i = 0;
        for (Object obj : default_persian_result_order_by) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            str = ((Object) str) + getPersianResultOrders(persianSearchResult, PersianResultOrder.INSTANCE.convertTo((String) obj), translateModel == null && i == 0);
            i = i2;
        }
        return ((Object) str) + "</ul>";
    }

    private final String getPersianResultOrders(PersianSearchResultModel persianSearchResult, PersianResultOrder order, boolean isFirstItem) {
        List<PersianSynonymsAntonyms> persianSynonymsAntonyms;
        if (order == PersianResultOrder.MEANING) {
            return ((("<li><a href=\"#meanings-sentences\" " + (isFirstItem ? "class=\"selected\"" : "") + ">") + this.resultLabel.getMeaningLabelPersian(persianSearchResult)) + "</a>") + "</li>";
        }
        if (order == PersianResultOrder.PERSIAN_SYNONYMS_ANTONYMS) {
            if ((persianSearchResult != null ? persianSearchResult.getPersianSynonymsAntonyms() : null) != null && (persianSynonymsAntonyms = persianSearchResult.getPersianSynonymsAntonyms()) != null && (!persianSynonymsAntonyms.isEmpty())) {
                return ("<li><a href=\"#synonyms-antonyms\" " + (isFirstItem ? "class=\"selected\"" : "") + ">" + this.context.getString(R.string.synonyms_and_antonyms) + "</a>") + "</li>";
            }
        }
        return "";
    }

    private final String generatePersianBlock(PersianSearchResultModel persianSearchResult, TranslateModel translateModel) throws ParseException {
        String str;
        String str2;
        List<PersianWordDetail> wordDetails;
        List<String> default_persian_result_order_by;
        String word = persianSearchResult != null ? persianSearchResult.getWord() : null;
        if (word == null) {
            word = translateModel != null ? translateModel.getSentence() : null;
        }
        String string = this.context.getString(R.string.save_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String strWordDocumentId = this.favorite.wordDocumentId(word, Category.Persian.getRawValue());
        String folderNameByWord = this.favorite.getFolderNameByWord(word, Category.Persian.getRawValue());
        if (strWordDocumentId == null) {
            str = "";
        } else {
            str = "icon-favorite-selected";
        }
        if (folderNameByWord != null) {
            string = folderNameByWord;
        }
        if (translateModel != null) {
            str2 = "<section class=\"meaning-section js-section js-hotlink\" id=\"translate\">";
        } else {
            str2 = "<section>";
        }
        String str3 = ((Object) str2) + "<header class=\"results__header\">";
        String str4 = strWordDocumentId == null ? "" : strWordDocumentId;
        if (strWordDocumentId == null) {
            strWordDocumentId = "";
        }
        String str5 = ((Object) str3) + "<div class=\"results__header--dates\"><div class=\"results__header--time\"></div><div id=\"a" + str4 + "\" onclick=\"window.location='fav://" + strWordDocumentId + "'\" class=\"results__favourite js-favorite\"><div class=\"btn-blue persian js-button\"><span class=\"icon icon-favorite " + str + "\"></span><span class=\"w\">" + string + "</span></div></div></div>";
        if ((persianSearchResult != null ? persianSearchResult.getWord() : null) != null) {
            String word2 = persianSearchResult.getWord();
            if (word2 == null) {
                word2 = "";
            }
            str5 = ((Object) str5) + "<h1>" + word2 + "</h1>";
        }
        if (translateModel != null) {
            str5 = ((Object) (((Object) (((Object) (((Object) (((Object) (((Object) (((Object) (((Object) (((Object) (((Object) str5) + "<div class=\"results__header--audios\">")) + "<div class=\"results__header--audios-w\">")) + "<span onclick=\"window.location='sound-am://'\" class=\"audio js-audio\">")) + "<span class=\"audio-icon sicon-audio-am\"></span>")) + "</span>")) + "<span onclick=\"window.location='sound-br://'\" class=\"audio js-audio\">")) + "<span class=\"audio-icon sicon-audio-br\"></span>")) + "</span>")) + "</div>")) + "</div>";
        }
        String str6 = ((Object) str5) + "</header>";
        if (translateModel != null) {
            String str7 = ((Object) (((Object) (((Object) (((Object) (((Object) str6) + "<section class=\"group-section js-section\" id=\"translator\">")) + "<h2>" + this.context.getString(R.string.results_translation_in_translator) + "</h2>")) + "<div class=\"result\">")) + "<div class=\"meaning english\">")) + "<a href=\"#\" onclick=\"window.location='fdcopy://'\" class=\"copy\"></a>";
            String result = translateModel.getResult();
            if (result == null) {
                result = "";
            }
            str6 = ((Object) (((Object) (((Object) (((Object) str7) + "<p>" + result + "</p>")) + "</div>")) + "</div>")) + "</section>";
        }
        if ((persianSearchResult != null ? persianSearchResult.getWordDescriptionHtml() : null) != null && !Intrinsics.areEqual(persianSearchResult.getWordDescriptionHtml(), "")) {
            String str8 = ((Object) (((Object) str6) + "<div class=\"results__extra--description persian\">")) + "<h2>" + this.context.getString(R.string.results_description) + "</h2>";
            String wordDescriptionHtml = persianSearchResult.getWordDescriptionHtml();
            str6 = ((Object) (((Object) str8) + (wordDescriptionHtml != null ? wordDescriptionHtml : ""))) + "</div>";
        }
        if (persianSearchResult != null && (wordDetails = persianSearchResult.getWordDetails()) != null) {
            ParseUser currentUser = ParseUser.getCurrentUser();
            FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
            if (fDParseUser == null || (default_persian_result_order_by = fDParseUser.getPersianResultsOrderBy()) == null) {
                default_persian_result_order_by = ConfigConstKt.getDEFAULT_PERSIAN_RESULT_ORDER_BY();
            }
            Iterator<T> it = default_persian_result_order_by.iterator();
            while (it.hasNext()) {
                if (PersianResultOrder.INSTANCE.convertTo((String) it.next()) == PersianResultOrder.MEANING) {
                    Iterator<PersianWordDetail> it2 = wordDetails.iterator();
                    while (it2.hasNext()) {
                        str6 = ((Object) str6) + generatePersianMeanings(it2.next(), persianSearchResult.getWord(), persianSearchResult);
                    }
                    if (translateModel == null) {
                        str6 = ((Object) str6) + generateUserSuggestion();
                    }
                } else {
                    str6 = ((Object) str6) + generatePersianSynonymsAntonyms(persianSearchResult.getPersianSynonymsAntonyms());
                }
            }
        }
        return str6;
    }

    private final String generatePersianPhonetic(PersianWordDetail wordDetail) {
        if (Intrinsics.areEqual(wordDetail.getPhonetics(), "") || wordDetail.getPhonetics() == null) {
            return "";
        }
        String string = this.context.getString(R.string.results_persian_phonetic);
        String phonetics = wordDetail.getPhonetics();
        return "<span class=\"phonetics js-no-hotlink\">" + string + "<strong class=\"js-no-hotlink\"> /" + (phonetics != null ? phonetics : "") + "/</strong></span>";
    }

    private final String generatePersianSynonymsAntonyms(List<PersianSynonymsAntonyms> persianSynonymsAntonyms) {
        if (persianSynonymsAntonyms == null || persianSynonymsAntonyms.isEmpty()) {
            return "";
        }
        String str = "<section class=\"group-section js-section js-hotlink\" id=\"synonyms-antonyms\"><h2>" + this.context.getString(R.string.synonyms_and_antonyms) + "</h2>";
        Iterator<PersianSynonymsAntonyms> it = persianSynonymsAntonyms.iterator();
        while (it.hasNext()) {
            String synonymAntonym = it.next().getSynonymAntonym();
            Intrinsics.checkNotNull(synonymAntonym);
            List listSplit$default = StringsKt.split$default((CharSequence) synonymAntonym, new String[]{"≠"}, false, 0, 6, (Object) null);
            List<String> listEmptyList = CollectionsKt.emptyList();
            List<String> listSplit$default2 = StringsKt.split$default((CharSequence) listSplit$default.get(0), new String[]{"،"}, false, 0, 6, (Object) null);
            if (listSplit$default.size() > 1) {
                listSplit$default2 = StringsKt.split$default((CharSequence) listSplit$default.get(0), new String[]{"،"}, false, 0, 6, (Object) null);
                listEmptyList = StringsKt.split$default((CharSequence) listSplit$default.get(1), new String[]{"،"}, false, 0, 6, (Object) null);
            }
            String str2 = (((((str + "<div class=\"results__persian-synonyms_antonyms\">") + "<div class=\"results__persian-synonyms_antonyms-container\">") + "<div class=\"results__persian-synonyms_antonyms-container-item\">") + "<div class=\"synonyms_antonyms synonyms_antonyms--synonyms\">") + "<div class=\"synonyms_antonyms--title\"><strong>مترادف:</strong></div>") + "<div class=\"synonyms_antonyms--content\">";
            for (String str3 : listSplit$default2) {
                String strUrlEncoded = StringExtKt.urlEncoded(str3);
                if (strUrlEncoded == null) {
                    strUrlEncoded = "";
                }
                str2 = str2 + "<span class=\"synonyms\"><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded + "'\">" + str3 + "</a></span>";
            }
            String str4 = ((str2 + "</div>") + "</div>") + "</div>";
            if (!listEmptyList.isEmpty()) {
                String str5 = (((str4 + "<div class=\"results__persian-synonyms_antonyms-container-item\">") + "<div class=\"synonyms_antonyms synonyms_antonyms--antonyms\">") + "<div class=\"synonyms_antonyms--title\"><strong>متضاد:</strong></div>") + "<div class=\"synonyms_antonyms--content\">";
                for (String str6 : listEmptyList) {
                    String strUrlEncoded2 = StringExtKt.urlEncoded(str6);
                    if (strUrlEncoded2 == null) {
                        strUrlEncoded2 = "";
                    }
                    str5 = str5 + "<span class=\"antonyms\"><a href=\"#\" onclick=\"window.location='fdword://" + strUrlEncoded2 + "'\">" + str6 + "</a></span>";
                }
                str4 = ((str5 + "</div>") + "</div>") + "</div>";
            }
            str = (str4 + "</div>") + "</div>";
        }
        return str + "</section>";
    }

    private final String generatePersianMeanings(PersianWordDetail wordDetail, String word, PersianSearchResultModel persianSearchResult) {
        String str;
        String str2 = ("<section class=\"group-section js-section js-hotlink\" id=\"meanings-sentences\"><h2>" + new FDResultLabel().getMeaningLabel(persianSearchResult, this.context) + "</h2>") + "<div class=\"result js-result\">";
        List<SentenseModel> sentenses = wordDetail.getSentenses();
        if ((sentenses != null ? sentenses.size() : 0) > 2) {
            str = "<div class=\"js-content meaning\">";
        } else {
            str = "<div class=\"meaning\">";
        }
        String str3 = str2 + str;
        List<PosModel> pos = wordDetail.getPos();
        if ((pos != null && !pos.isEmpty()) || wordDetail.getPhonetics() != null) {
            String str4 = str3 + "<div class=\"pos\">";
            List<PosModel> pos2 = wordDetail.getPos();
            if (pos2 != null && (!pos2.isEmpty())) {
                for (PosModel posModel : pos2) {
                    String posEquivalent = posModel.getPosEquivalent();
                    if (posEquivalent == null) {
                        posEquivalent = "";
                    }
                    String pos3 = posModel.getPos();
                    if (pos3 == null) {
                        pos3 = "";
                    }
                    str4 = str4 + "<span class=\"p js-tooltip\" data-align=\"top\" data-tooltip=\"" + posEquivalent + "\">" + pos3 + "</span>";
                }
            }
            if (wordDetail.getPhonetics() != null && !Intrinsics.areEqual(wordDetail.getPhonetics(), "")) {
                str4 = str4 + generatePersianPhonetic(wordDetail);
            }
            str3 = str4 + "</div>";
        }
        String str5 = str3 + "<p>";
        List<String> categories = wordDetail.getCategories();
        if (categories == null) {
            categories = CollectionsKt.emptyList();
        }
        String str6 = str5 + generatePersianCategories(categories);
        String meaning = wordDetail.getMeaning();
        if (meaning == null) {
            meaning = "";
        }
        String str7 = ((str6 + meaning) + "</p>") + generateImageButton(wordDetail.getHasImage(), word, wordDetail.getDetailId());
        if (wordDetail.getPersianMeanings() != null && !Intrinsics.areEqual(wordDetail.getPersianMeanings(), "")) {
            String persianMeanings = wordDetail.getPersianMeanings();
            str7 = str7 + "<div class=\"persian-meaning\">" + (persianMeanings != null ? persianMeanings : "") + "</div>";
        }
        List<SentenseModel> sentenses2 = wordDetail.getSentenses();
        if (sentenses2 == null) {
            sentenses2 = CollectionsKt.emptyList();
        }
        return str7 + generatePersianSentences(sentenses2) + "</li></div></section>";
    }

    private final String generateImageButton(Boolean hasImage, String word, Integer detailId) {
        if (!Intrinsics.areEqual((Object) hasImage, (Object) true) || word == null || detailId == null) {
            return "";
        }
        int iIntValue = detailId.intValue();
        return "<div class=\"image\"><button class=\"button btn-blue js-no-hotlink\" onclick=\"window.location='fdimage://" + StringExtKt.urlEncoded(word) + "#&gid=" + iIntValue + "&pid=1'\">" + this.context.getString(R.string.word_picture_button_title) + "</button></div>";
    }

    private final String generatePersianSentences(List<SentenseModel> sentenceModel) {
        if (sentenceModel.isEmpty()) {
            return "";
        }
        String str = "<div class=\"sentences js-sentences\">";
        int i = 0;
        for (Object obj : sentenceModel) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            SentenseModel sentenseModel = (SentenseModel) obj;
            String str2 = i2 <= 2 ? "" : " is-hide";
            Integer english_sentence_id = sentenseModel.getEnglish_sentence_id();
            int iIntValue = english_sentence_id != null ? english_sentence_id.intValue() : -1;
            String english = sentenseModel.getEnglish();
            if (english == null) {
                english = "";
            }
            String persian = sentenseModel.getPersian();
            if (persian == null) {
                persian = "";
            }
            str = ((Object) str) + "\n                <div class=\"result__sentences" + str2 + "\">\n                    <div class=\"sentence\">\n                        <div class=\"audios\">\n                            <span onclick=\"window.location='sentence-fa-am://" + iIntValue + "'\" class=\"sicon-audio-am audio js-audio\"></span>\n                            <span onclick=\"window.location='sentence-fa-br://" + iIntValue + "'\" class=\"sicon-audio-br audio js-audio\"></span>\n                        </div>\n                        <p class=\"persian\">" + persian + "</p>\n                    </div>\n                    <div class=\"sentence\">\n                        <p class=\"english\">" + english + "</p>\n                    </div>\n                </div>\n                ";
            if (i2 == 2 && sentenceModel.size() > 2) {
                str = ((Object) str) + "\n                    <div class=\"more-sentences-wrapper js-more-content\">\n                    <div class=\"more-sentences\">" + this.context.getString(R.string.more_sample_sentences) + "</div>\n                    </div>\n                    ";
            }
            i = i2;
        }
        return ((Object) str) + "</div>";
    }

    public final String generateErrorMessage(String message, String title) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(title, "title");
        boolean zCurrentLanguageIsPersian = this.localStorage.currentLanguageIsPersian();
        String str = LocalePreferences.CalendarType.PERSIAN;
        String str2 = zCurrentLanguageIsPersian ? LocalePreferences.CalendarType.PERSIAN : "english";
        if (!this.localStorage.currentLanguageIsPersian()) {
            str = "english";
        }
        return "<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' /><link type=\"text/css\" rel=\"stylesheet\" href=\"file:///android_asset/css/style-results.css\"/><html><body><section class=\"not-found\"><div class=\"not-found__detail\"><h2 class=\"" + str2 + "\">" + title + "</h2><p  class=\"" + str + "\">" + message + "</p></div></section><script type=\"text/javascript\" src=\"file:///android_asset/js/general.min.js\"></script></body></html>";
    }

    private final String getThemeClass(boolean isDarkMode) {
        return (isDarkMode ? ConstKt.DARK_MODE_CLASS : "") + " " + (this.localStorage.currentLanguageIsPersian() ? "" : "is-english-menu");
    }

    private final String getProPlan() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        return (fDParseUser != null && fDParseUser.hasPlan2InView()) ? "is-pro-user" : "";
    }
}
