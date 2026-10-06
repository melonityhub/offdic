package fast.dic.dict.presentation.word_result_screen;

import android.content.Context;
import android.os.Bundle;
import androidx.core.text.util.LocalePreferences;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.fastdic.android.modules.fdnumberstowords.FDEnNumberToWords;
import com.fastdic.android.modules.fdnumberstowords.FDPeNumberToWords;
import com.fastdic.android.modules.fdnumberstowords.utils.FDStringExtKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseUser;
import com.yandex.div.core.dagger.Names;
import dagger.hilt.android.qualifiers.ApplicationContext;
import fast.dic.dict.R;
import fast.dic.dict.database.FDDatabaseManager;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.helpers.FDConnectivityHelper;
import fast.dic.dict.helpers.FDOfflineTranslator;
import fast.dic.dict.helpers.FDOnlineTranslator;
import fast.dic.dict.helpers.FDSoundEffect;
import fast.dic.dict.helpers.database.couchbase.FDFavourite;
import fast.dic.dict.helpers.database.couchbase.FDFavouriteFolder;
import fast.dic.dict.helpers.database.couchbase.FDHistory;
import fast.dic.dict.models.database.EnglishAudioModel;
import fast.dic.dict.models.database.EnglishAudiosModel;
import fast.dic.dict.models.database.EnglishMeaningModel;
import fast.dic.dict.models.database.EnglishSearchResultModel;
import fast.dic.dict.models.database.FolderModel;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.models.database.PersianSearchResultModel;
import fast.dic.dict.models.database.PersianWordDetail;
import fast.dic.dict.models.database.SearchResultModel;
import fast.dic.dict.models.database.SentenseModel;
import fast.dic.dict.models.database.TranslateModel;
import fast.dic.dict.services.FDAds;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.services.parse.FDParseWrapper;
import fast.dic.dict.services.parse.FDPurchased;
import fast.dic.dict.utils.Category;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.FDCategory;
import fast.dic.dict.utils.FDHtml;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.StringExtKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: WordResultViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000Â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001Bk\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\f\b\u0001\u0010\u0014\u001a\u00020\u0015:\u0002\b\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u001a\u0002\b\u001b¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u0015J\u001d\u00104\u001a\u0002022\u0006\u00105\u001a\u0002062\b\u00107\u001a\u0004\u0018\u000108¢\u0006\u0002\u00109J\u0016\u0010:\u001a\u0002022\u0006\u0010;\u001a\u0002062\u0006\u0010<\u001a\u000206J\u000e\u0010=\u001a\u0002022\u0006\u0010>\u001a\u000206J\u001a\u0010?\u001a\u0002022\u0006\u0010@\u001a\u0002062\n\b\u0002\u0010A\u001a\u0004\u0018\u000106J\u001c\u0010C\u001a\u0002022\u0006\u0010D\u001a\u00020E2\f\u0010F\u001a\b\u0012\u0004\u0012\u0002020GJ2\u0010H\u001a\u0002062\u0006\u0010I\u001a\u00020J2\u0006\u0010@\u001a\u0002062\b\u0010A\u001a\u0004\u0018\u0001062\u0006\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020+H\u0002J\u0018\u0010N\u001a\u0002022\u0006\u0010@\u001a\u0002062\u0006\u00103\u001a\u00020\u0015H\u0002JG\u0010O\u001a\u0002022\b\u0010P\u001a\u0004\u0018\u0001082\u0006\u0010@\u001a\u0002062\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020L2\u0006\u0010Q\u001a\u00020R2\u0006\u0010M\u001a\u00020+2\u0006\u00103\u001a\u00020\u0015H\u0002¢\u0006\u0002\u0010SJ\u0006\u0010T\u001a\u00020+J\u0006\u0010U\u001a\u00020+J\u0006\u0010V\u001a\u00020+J\u0006\u0010W\u001a\u000202J\u000e\u0010X\u001a\u0002022\u0006\u0010Q\u001a\u00020RR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\u00020\u00158\u0002@\u0002X\u0083\u000e\u0092\u0002\u0002\b\u0016¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0 ¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0014\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010&\u001a\b\u0012\u0004\u0012\u00020%0'¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R$\u0010,\u001a\u00020+2\u0006\u0010*\u001a\u00020+@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u000e\u0010B\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000Ê\u0001\u0002\bZ¨\u0006Y"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;", "Landroidx/lifecycle/ViewModel;", "html", "Lfast/dic/dict/utils/FDHtml;", "fdAds", "Lfast/dic/dict/services/FDAds;", "history", "Lfast/dic/dict/helpers/database/couchbase/FDHistory;", "favorite", "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;", "soundEffect", "Lfast/dic/dict/helpers/FDSoundEffect;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "historyCategory", "Lfast/dic/dict/utils/FDCategory;", "fdParseWrapper", "Lfast/dic/dict/services/parse/FDParseWrapper;", "databaseHelper", "Lfast/dic/dict/database/FDDatabaseManager;", "mContext", "Landroid/content/Context;", "Ldagger/hilt/android/qualifiers/ApplicationContext;", "connectivityHelper", "Lfast/dic/dict/helpers/FDConnectivityHelper;", "<init>", "(Lfast/dic/dict/utils/FDHtml;Lfast/dic/dict/services/FDAds;Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/FDSoundEffect;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/utils/FDCategory;Lfast/dic/dict/services/parse/FDParseWrapper;Lfast/dic/dict/database/FDDatabaseManager;Landroid/content/Context;Lfast/dic/dict/helpers/FDConnectivityHelper;)V", "Ljavax/inject/Inject;", "_state", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;", "state", "Lkotlinx/coroutines/flow/StateFlow;", "getState", "()Lkotlinx/coroutines/flow/StateFlow;", "_favoriteStatus", "Landroidx/lifecycle/MutableLiveData;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState;", "favoriteStatus", "Landroidx/lifecycle/LiveData;", "getFavoriteStatus", "()Landroidx/lifecycle/LiveData;", "value", "", "offlineTranslator", "getOfflineTranslator", "()Z", "setOfflineTranslator", "(Z)V", "updateContext", "", Names.CONTEXT, "getWordResult", "word", "", "wordId", "", "(Ljava/lang/String;Ljava/lang/Integer;)V", "generateErrorHtml", "message", "title", "getNumberResult", "number", "getTranslatorResult", "sentence", "meaning", "interstitialRequested", "handleFullscreenAdsForFreeUsers", "activity", "Landroidx/fragment/app/FragmentActivity;", "onReasonShowAdd", "Lkotlin/Function0;", "prepareHtmlForTranslatorHistory", "model", "Lfast/dic/dict/models/database/TranslateModel;", "language", "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;", "isDarkMode", "trackTranslateWithAnalytics", "handleOfflineTranslator", "category", "listModel", "Lfast/dic/dict/models/database/ListModel;", "(Ljava/lang/Integer;Ljava/lang/String;Lfast/dic/dict/models/database/TranslateModel;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Lfast/dic/dict/models/database/ListModel;ZLandroid/content/Context;)V", "isOfflineSpeech", "isInternetAvailable", "validRewardedAdsForSentencePronunciation", "triggerTapHaptic", "insertOrDeleteFavorite", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class WordResultViewModel extends ViewModel {
    private final MutableLiveData<WordResultViewModelFavoriteUIState> _favoriteStatus;
    private final MutableStateFlow<WordResultViewModelUIState> _state;
    private final FDConnectivityHelper connectivityHelper;
    private final FDDatabaseManager databaseHelper;
    private final FDFavourite favorite;
    private final LiveData<WordResultViewModelFavoriteUIState> favoriteStatus;
    private final FDAds fdAds;
    private final FDParseWrapper fdParseWrapper;
    private final FDHistory history;
    private final FDCategory historyCategory;
    private final FDHtml html;
    private boolean interstitialRequested;
    private final LocalStorage localStorage;

    @ApplicationContext
    private Context mContext;
    private boolean offlineTranslator;
    private FDSoundEffect soundEffect;
    private final StateFlow<WordResultViewModelUIState> state;

    @Inject
    public WordResultViewModel(FDHtml html, FDAds fdAds, FDHistory history, FDFavourite favorite, FDSoundEffect soundEffect, LocalStorage localStorage, FDCategory historyCategory, FDParseWrapper fdParseWrapper, FDDatabaseManager databaseHelper, @ApplicationContext Context mContext, FDConnectivityHelper connectivityHelper) {
        Intrinsics.checkNotNullParameter(html, "html");
        Intrinsics.checkNotNullParameter(fdAds, "fdAds");
        Intrinsics.checkNotNullParameter(history, "history");
        Intrinsics.checkNotNullParameter(favorite, "favorite");
        Intrinsics.checkNotNullParameter(soundEffect, "soundEffect");
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        Intrinsics.checkNotNullParameter(historyCategory, "historyCategory");
        Intrinsics.checkNotNullParameter(fdParseWrapper, "fdParseWrapper");
        Intrinsics.checkNotNullParameter(databaseHelper, "databaseHelper");
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Intrinsics.checkNotNullParameter(connectivityHelper, "connectivityHelper");
        this.html = html;
        this.fdAds = fdAds;
        this.history = history;
        this.favorite = favorite;
        this.soundEffect = soundEffect;
        this.localStorage = localStorage;
        this.historyCategory = historyCategory;
        this.fdParseWrapper = fdParseWrapper;
        this.databaseHelper = databaseHelper;
        this.mContext = mContext;
        this.connectivityHelper = connectivityHelper;
        MutableStateFlow<WordResultViewModelUIState> MutableStateFlow = StateFlowKt.MutableStateFlow(null);
        this._state = MutableStateFlow;
        this.state = FlowKt.asStateFlow(MutableStateFlow);
        MutableLiveData<WordResultViewModelFavoriteUIState> mutableLiveData = new MutableLiveData<>();
        this._favoriteStatus = mutableLiveData;
        this.favoriteStatus = mutableLiveData;
        this.offlineTranslator = localStorage.offlineTranslatorIsEnabled();
    }

    public final StateFlow<WordResultViewModelUIState> getState() {
        return this.state;
    }

    public final LiveData<WordResultViewModelFavoriteUIState> getFavoriteStatus() {
        return this.favoriteStatus;
    }

    public final boolean getOfflineTranslator() {
        return this.offlineTranslator;
    }

    public final void setOfflineTranslator(boolean z) {
        this.offlineTranslator = z;
        this.localStorage.setOfflineTranslator(z);
    }

    public final void updateContext(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.mContext = context;
        this.html.updateContext(context);
    }

    public final void getWordResult(String word, Integer wordId) {
        Intrinsics.checkNotNullParameter(word, "word");
        this._state.setValue(WordResultViewModelUIState.Loading.INSTANCE);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45351(word, this, wordId, ContextExtKt.isDarkThemeOn(this.mContext), null), 2, null).invokeOnCompletion(new Function1() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultViewModel$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WordResultViewModel.getWordResult$lambda$0(this.f$0, (Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.word_result_screen.WordResultViewModel$getWordResult$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.word_result_screen.WordResultViewModel$getWordResult$1", f = "WordResultViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45351 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $isDarkMode;
        final /* synthetic */ String $word;
        final /* synthetic */ Integer $wordId;
        int label;
        final /* synthetic */ WordResultViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45351(String str, WordResultViewModel wordResultViewModel, Integer num, boolean z, Continuation<? super C45351> continuation) {
            super(2, continuation);
            this.$word = str;
            this.this$0 = wordResultViewModel;
            this.$wordId = num;
            this.$isDarkMode = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C45351(this.$word, this.this$0, this.$wordId, this.$isDarkMode, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45351) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:34:0x00c5  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String meaning;
            List<PersianWordDetail> wordDetails;
            List<PersianWordDetail> wordDetails2;
            PersianWordDetail persianWordDetail;
            String str;
            String strGeneratePersianResult;
            ArrayList arrayList;
            List<EnglishMeaningModel> meanings;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            FDLanguageWord.LanguageType languageTypeFind = FDLanguageWord.INSTANCE.find(this.$word);
            Integer wordIdParent = this.this$0.databaseHelper.getWordIdParent(languageTypeFind, this.$word);
            WordResultViewModel wordResultViewModel = this.this$0;
            SearchResultModel detailByWordId = wordIdParent != null ? wordResultViewModel.databaseHelper.getDetailByWordId(languageTypeFind, wordIdParent.intValue()) : wordResultViewModel.databaseHelper.getDetailByWordGetOtherFormOfWord(languageTypeFind, this.$word);
            if (languageTypeFind == FDLanguageWord.LanguageType.English) {
                EnglishSearchResultModel englishSearchResultModel = detailByWordId.getEnglishSearchResultModel();
                if (englishSearchResultModel == null || (meanings = englishSearchResultModel.getMeanings()) == null) {
                    arrayList = null;
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj2 : meanings) {
                        String meaning2 = ((EnglishMeaningModel) obj2).getMeaning();
                        if (!(meaning2 == null || meaning2.length() == 0)) {
                            arrayList2.add(obj2);
                        }
                    }
                    ArrayList arrayList3 = arrayList2;
                    ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList3, 10));
                    Iterator it = arrayList3.iterator();
                    while (it.hasNext()) {
                        arrayList4.add(((EnglishMeaningModel) it.next()).getMeaning());
                    }
                    arrayList = arrayList4;
                }
                if (arrayList != null) {
                    meaning = CollectionsKt.joinToString$default(arrayList, "، ", null, null, 0, null, null, 62, null);
                    str = meaning;
                } else {
                    str = null;
                }
            } else {
                PersianSearchResultModel persianSearchResultModel = detailByWordId.getPersianSearchResultModel();
                if (persianSearchResultModel != null && (wordDetails = persianSearchResultModel.getWordDetails()) != null && (!wordDetails.isEmpty())) {
                    PersianSearchResultModel persianSearchResultModel2 = detailByWordId.getPersianSearchResultModel();
                    if (persianSearchResultModel2 == null || (wordDetails2 = persianSearchResultModel2.getWordDetails()) == null || (persianWordDetail = wordDetails2.get(0)) == null) {
                        str = null;
                    } else {
                        meaning = persianWordDetail.getMeaning();
                    }
                } else {
                    meaning = "";
                }
                str = meaning;
            }
            EnglishSearchResultModel englishSearchResultModel2 = detailByWordId.getEnglishSearchResultModel();
            if ((englishSearchResultModel2 != null ? englishSearchResultModel2.getWord() : null) == null) {
                PersianSearchResultModel persianSearchResultModel3 = detailByWordId.getPersianSearchResultModel();
                if ((persianSearchResultModel3 != null ? persianSearchResultModel3.getWord() : null) == null) {
                    EnglishSearchResultModel englishSearchResultModel3 = detailByWordId.getEnglishSearchResultModel();
                    if ((englishSearchResultModel3 != null ? englishSearchResultModel3.getEnglishNumbers() : null) == null) {
                        WordResultViewModel.getTranslatorResult$default(this.this$0, this.$word, null, 2, null);
                        return Unit.INSTANCE;
                    }
                }
            }
            this.this$0.history.deleteAndInsert(new ListModel(false, false, this.$wordId, 0, null, null, null, null, null, null, false, null, null, false, str, null, this.this$0.historyCategory.findLanguage(this.$word), null, this.$word, null, 0, 1753083, null));
            FDLanguageWord.LanguageType languageType = FDLanguageWord.LanguageType.English;
            WordResultViewModel wordResultViewModel2 = this.this$0;
            if (languageTypeFind == languageType) {
                strGeneratePersianResult = wordResultViewModel2.html.generate(detailByWordId.getEnglishSearchResultModel(), this.$isDarkMode, null);
            } else {
                strGeneratePersianResult = wordResultViewModel2.html.generatePersianResult(detailByWordId.getPersianSearchResultModel(), this.$isDarkMode, null);
            }
            this.this$0._state.setValue(new WordResultViewModelUIState.HtmlResult(strGeneratePersianResult, detailByWordId));
            return Unit.INSTANCE;
        }
    }

    static final Unit getWordResult$lambda$0(WordResultViewModel wordResultViewModel, Throwable th) {
        if (th != null) {
            th.printStackTrace();
            MutableStateFlow<WordResultViewModelUIState> mutableStateFlow = wordResultViewModel._state;
            String message = th.getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            mutableStateFlow.setValue(new WordResultViewModelUIState.ErrorResult(message));
        }
        return Unit.INSTANCE;
    }

    public final void generateErrorHtml(String message, String title) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(title, "title");
        this._state.setValue(WordResultViewModelUIState.Loading.INSTANCE);
        ContextExtKt.isDarkThemeOn(this.mContext);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new AnonymousClass1(message, title, null), 2, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.word_result_screen.WordResultViewModel$generateErrorHtml$1, reason: invalid class name */
    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.word_result_screen.WordResultViewModel$generateErrorHtml$1", f = "WordResultViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $message;
        final /* synthetic */ String $title;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, String str2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$message = str;
            this.$title = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WordResultViewModel.this.new AnonymousClass1(this.$message, this.$title, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                WordResultViewModel.this._state.setValue(new WordResultViewModelUIState.ErrorResult(WordResultViewModel.this.html.generateErrorMessage(this.$message, this.$title)));
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void getNumberResult(String number) {
        Intrinsics.checkNotNullParameter(number, "number");
        this._state.setValue(WordResultViewModelUIState.Loading.INSTANCE);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45331(number, this, ContextExtKt.isDarkThemeOn(this.mContext), null), 2, null).invokeOnCompletion(new Function1() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultViewModel$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WordResultViewModel.getNumberResult$lambda$0(this.f$0, (Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.word_result_screen.WordResultViewModel$getNumberResult$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.word_result_screen.WordResultViewModel$getNumberResult$1", f = "WordResultViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45331 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $isDarkMode;
        final /* synthetic */ String $number;
        int label;
        final /* synthetic */ WordResultViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45331(String str, WordResultViewModel wordResultViewModel, boolean z, Continuation<? super C45331> continuation) {
            super(2, continuation);
            this.$number = str;
            this.this$0 = wordResultViewModel;
            this.$isDarkMode = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C45331(this.$number, this.this$0, this.$isDarkMode, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45331) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String words = FDEnNumberToWords.INSTANCE.convertNumber(this.$number).getWords();
            String words2 = FDPeNumberToWords.INSTANCE.convertNumber(this.$number).getWords();
            SentenseModel sentenseModel = new SentenseModel();
            sentenseModel.setPersian(words2);
            sentenseModel.setEnglish(words);
            int i = 2;
            EnglishAudiosModel englishAudiosModel = new EnglishAudiosModel(CollectionsKt.listOf(new EnglishAudioModel(words, 0 == true ? 1 : 0, i, 0 == true ? 1 : 0)), CollectionsKt.listOf(new EnglishAudioModel(words, null, i, 0 == true ? 1 : 0)));
            String str = null;
            String str2 = null;
            ArrayList arrayListArrayListOf = CollectionsKt.arrayListOf(new EnglishMeaningModel(null, null, str, null, str2, null, null, null, null, CollectionsKt.listOf(sentenseModel), null, 1535, null));
            byte b = 0 == true ? 1 : 0;
            byte b2 = 0 == true ? 1 : 0;
            byte b3 = 0 == true ? 1 : 0;
            byte b4 = 0 == true ? 1 : 0;
            byte b5 = 0 == true ? 1 : 0;
            byte b6 = 0 == true ? 1 : 0;
            byte b7 = 0 == true ? 1 : 0;
            byte b8 = 0 == true ? 1 : 0;
            SearchResultModel searchResultModel = new SearchResultModel(0 == true ? 1 : 0, 0 == true ? 1 : 0, new EnglishSearchResultModel(this.$number, Boxing.boxInt(-1), b2, b3, str, b4, str2, b5, b6, b7, b8, englishAudiosModel, true, arrayListArrayListOf, b, null, true, sentenseModel, null, 313340, null), 0 == true ? 1 : 0, 11, 0 == true ? 1 : 0);
            Integer numFindLanguage = this.this$0.historyCategory.findLanguage(this.$number);
            String str3 = this.$number;
            this.this$0.history.deleteAndInsert(new ListModel(false, false, null, 0, null, null, null, null, null, null, true, null, null, false, words2, null, numFindLanguage, str3, str3, null, 0, 1620991, null));
            this.this$0._state.setValue(new WordResultViewModelUIState.HtmlNumberResult(this.this$0.html.generate(searchResultModel.getEnglishSearchResultModel(), this.$isDarkMode, null), words, words2, this.$number, this.$isDarkMode));
            return Unit.INSTANCE;
        }
    }

    static final Unit getNumberResult$lambda$0(WordResultViewModel wordResultViewModel, Throwable th) {
        if (th != null) {
            th.printStackTrace();
            MutableStateFlow<WordResultViewModelUIState> mutableStateFlow = wordResultViewModel._state;
            String message = th.getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            mutableStateFlow.setValue(new WordResultViewModelUIState.ErrorResult(message));
        }
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void getTranslatorResult$default(WordResultViewModel wordResultViewModel, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        wordResultViewModel.getTranslatorResult(str, str2);
    }

    public final void getTranslatorResult(String sentence, String meaning) {
        Intrinsics.checkNotNullParameter(sentence, "sentence");
        if (!Intrinsics.areEqual(this._state.getValue(), WordResultViewModelUIState.Loading.INSTANCE)) {
            this._state.setValue(WordResultViewModelUIState.Loading.INSTANCE);
        }
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45341(sentence, this, meaning, ContextExtKt.isDarkThemeOn(this.mContext), null), 2, null).invokeOnCompletion(new Function1() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultViewModel$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WordResultViewModel.getTranslatorResult$lambda$0(this.f$0, (Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.word_result_screen.WordResultViewModel$getTranslatorResult$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.word_result_screen.WordResultViewModel$getTranslatorResult$1", f = "WordResultViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45341 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $isDarkMode;
        final /* synthetic */ String $meaning;
        final /* synthetic */ String $sentence;
        int label;
        final /* synthetic */ WordResultViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45341(String str, WordResultViewModel wordResultViewModel, String str2, boolean z, Continuation<? super C45341> continuation) {
            super(2, continuation);
            this.$sentence = str;
            this.this$0 = wordResultViewModel;
            this.$meaning = str2;
            this.$isDarkMode = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C45341(this.$sentence, this.this$0, this.$meaning, this.$isDarkMode, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45341) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws ParseException {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            final FDLanguageWord.LanguageType languageTypeFind = FDLanguageWord.INSTANCE.find(this.$sentence);
            Integer numFindLanguage = this.this$0.historyCategory.findLanguage(this.$sentence);
            final ListModel listModel = new ListModel(false, false, Boxing.boxInt(-1), 0, null, null, null, Boxing.boxBoolean(true), null, null, false, null, null, false, null, null, numFindLanguage, null, this.$sentence, null, 0, 1769339, null);
            final TranslateModel translateModel = new TranslateModel(false, null, null, null, 15, null);
            String str = this.$meaning;
            if (str == null || str.length() == 0) {
                if (!this.this$0.connectivityHelper.isInternetAvailable() && !this.this$0.localStorage.offlineTranslatorIsEnabled()) {
                    translateModel.setSuccessful(true);
                    translateModel.setSentence(this.$sentence);
                    translateModel.setResult(this.this$0.mContext.getString(R.string.no_internet_error_for_translator));
                    translateModel.setLanguage(this.this$0.localStorage.currentLanguageIsPersian() ? "english" : LocalePreferences.CalendarType.PERSIAN);
                    this.this$0._state.setValue(new WordResultViewModelUIState.TranslatorHtmlResult(this.this$0.html.generate(null, this.$isDarkMode, translateModel), this.$sentence, this.$meaning, this.$isDarkMode, true));
                    return Unit.INSTANCE;
                }
                ParseUser currentUser = ParseUser.getCurrentUser();
                FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
                if (fDParseUser == null || !fDParseUser.isAuthenticated()) {
                    this.this$0._state.setValue(WordResultViewModelUIState.ErrorUnauthorized.INSTANCE);
                    return Unit.INSTANCE;
                }
                if (this.this$0.localStorage.offlineTranslatorIsEnabled()) {
                    WordResultViewModel wordResultViewModel = this.this$0;
                    wordResultViewModel.handleOfflineTranslator(numFindLanguage, this.$sentence, translateModel, languageTypeFind, listModel, this.$isDarkMode, wordResultViewModel.mContext);
                    return Unit.INSTANCE;
                }
                FDOnlineTranslator fDOnlineTranslator = FDOnlineTranslator.INSTANCE;
                final String str2 = this.$sentence;
                final WordResultViewModel wordResultViewModel2 = this.this$0;
                final boolean z = this.$isDarkMode;
                fDOnlineTranslator.translate(str2, fDParseUser, new Function2() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return WordResultViewModel.C45341.invokeSuspend$lambda$0(wordResultViewModel2, listModel, translateModel, languageTypeFind, str2, z, (TranslateModel) obj2, (Throwable) obj3);
                    }
                });
                return Unit.INSTANCE;
            }
            this.this$0._state.setValue(new WordResultViewModelUIState.TranslatorHtmlResult(this.this$0.prepareHtmlForTranslatorHistory(translateModel, this.$sentence, this.$meaning, languageTypeFind, this.$isDarkMode), this.$sentence, this.$meaning, this.$isDarkMode, false, 16, null));
            return Unit.INSTANCE;
        }

        static final Unit invokeSuspend$lambda$0(final WordResultViewModel wordResultViewModel, ListModel listModel, final TranslateModel translateModel, FDLanguageWord.LanguageType languageType, final String str, final boolean z, TranslateModel translateModel2, Throwable th) throws ParseException {
            String result;
            SearchResultModel detailByWordGetOtherFormOfWord;
            String strGeneratePersianResult;
            if (translateModel2 == null || !translateModel2.getSuccessful()) {
                MutableStateFlow mutableStateFlow = wordResultViewModel._state;
                if (translateModel2 == null || (result = translateModel2.getResult()) == null) {
                    result = "Something has occurred. The result is empty!";
                }
                mutableStateFlow.setValue(new WordResultViewModelUIState.ErrorResult(result));
                return Unit.INSTANCE;
            }
            listModel.setMeaning(translateModel2.getResult());
            translateModel.setSentence(listModel.getWord());
            translateModel.setResult(listModel.getMeaning());
            String lowerCase = languageType.name().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            translateModel.setLanguage(lowerCase);
            wordResultViewModel.history.deleteAndInsert(listModel);
            wordResultViewModel.trackTranslateWithAnalytics(str, wordResultViewModel.mContext);
            FDDatabaseManager fDDatabaseManager = wordResultViewModel.databaseHelper;
            String sentence = translateModel.getSentence();
            Intrinsics.checkNotNull(sentence);
            Integer wordIdParent = fDDatabaseManager.getWordIdParent(languageType, sentence);
            if (wordIdParent != null) {
                detailByWordGetOtherFormOfWord = wordResultViewModel.databaseHelper.getDetailByWordId(languageType, wordIdParent.intValue());
            } else if (translateModel.getSentence() != null) {
                FDDatabaseManager fDDatabaseManager2 = wordResultViewModel.databaseHelper;
                String sentence2 = translateModel.getSentence();
                Intrinsics.checkNotNull(sentence2);
                detailByWordGetOtherFormOfWord = fDDatabaseManager2.getDetailByWordGetOtherFormOfWord(languageType, sentence2);
            } else {
                detailByWordGetOtherFormOfWord = null;
            }
            if (languageType == FDLanguageWord.LanguageType.English) {
                strGeneratePersianResult = wordResultViewModel.html.generate(detailByWordGetOtherFormOfWord != null ? detailByWordGetOtherFormOfWord.getEnglishSearchResultModel() : null, z, translateModel);
            } else {
                strGeneratePersianResult = wordResultViewModel.html.generatePersianResult(detailByWordGetOtherFormOfWord != null ? detailByWordGetOtherFormOfWord.getPersianSearchResultModel() : null, z, translateModel);
            }
            final String str2 = strGeneratePersianResult;
            FDParseWrapper.fetchParseUser$default(wordResultViewModel.fdParseWrapper, new Function2() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return WordResultViewModel.C45341.invokeSuspend$lambda$0$0(wordResultViewModel, str2, str, translateModel, z, (ParseObject) obj, (FDPurchased) obj2);
                }
            }, null, new Function1() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WordResultViewModel.C45341.invokeSuspend$lambda$0$1(wordResultViewModel, str2, str, translateModel, z, (FDPurchased) obj);
                }
            }, 2, null);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0$0(WordResultViewModel wordResultViewModel, String str, String str2, TranslateModel translateModel, boolean z, ParseObject parseObject, FDPurchased fDPurchased) {
            wordResultViewModel._state.setValue(new WordResultViewModelUIState.TranslatorHtmlResult(str, str2, translateModel.getResult(), z, false, 16, null));
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0$1(WordResultViewModel wordResultViewModel, String str, String str2, TranslateModel translateModel, boolean z, FDPurchased fDPurchased) {
            wordResultViewModel._state.setValue(new WordResultViewModelUIState.TranslatorHtmlResult(str, str2, translateModel.getResult(), z, false, 16, null));
            return Unit.INSTANCE;
        }
    }

    static final Unit getTranslatorResult$lambda$0(WordResultViewModel wordResultViewModel, Throwable th) {
        if (th != null) {
            th.printStackTrace();
            MutableStateFlow<WordResultViewModelUIState> mutableStateFlow = wordResultViewModel._state;
            String message = th.getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            mutableStateFlow.setValue(new WordResultViewModelUIState.ErrorResult(message));
        }
        return Unit.INSTANCE;
    }

    public final void handleFullscreenAdsForFreeUsers(FragmentActivity activity, Function0<Unit> onReasonShowAdd) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(onReasonShowAdd, "onReasonShowAdd");
        if (this.interstitialRequested) {
            return;
        }
        this.interstitialRequested = true;
        if (!this.fdAds.hasActivityContext()) {
            FirebaseCrashlytics.getInstance().log("Activity Context is not initialized before showing Interstitial ads in WordResult screen.");
            FirebaseCrashlytics.getInstance().log("Before showing Interstitial ads try to init again with " + activity.getClass().getName());
            this.fdAds.initializeAds(activity);
        }
        if (this.fdAds.hasActivityContext()) {
            this.fdAds.showInterstitial(activity, onReasonShowAdd);
        } else {
            FirebaseCrashlytics.getInstance().log("Activity Context is still not initialized while showing Interstitial ads in WordResult screen.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final String prepareHtmlForTranslatorHistory(TranslateModel model, String sentence, String meaning, FDLanguageWord.LanguageType language, boolean isDarkMode) {
        SearchResultModel detailByWordGetOtherFormOfWord;
        model.setSentence(sentence);
        model.setResult(meaning);
        String lowerCase = language.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        model.setLanguage(lowerCase);
        FDDatabaseManager fDDatabaseManager = this.databaseHelper;
        String sentence2 = model.getSentence();
        Intrinsics.checkNotNull(sentence2);
        Integer wordIdParent = fDDatabaseManager.getWordIdParent(language, sentence2);
        if (wordIdParent != null) {
            detailByWordGetOtherFormOfWord = this.databaseHelper.getDetailByWordId(language, wordIdParent.intValue());
        } else if (model.getSentence() != null) {
            FDDatabaseManager fDDatabaseManager2 = this.databaseHelper;
            String sentence3 = model.getSentence();
            Intrinsics.checkNotNull(sentence3);
            detailByWordGetOtherFormOfWord = fDDatabaseManager2.getDetailByWordGetOtherFormOfWord(language, sentence3);
        } else {
            detailByWordGetOtherFormOfWord = null;
        }
        FDLanguageWord.LanguageType languageType = FDLanguageWord.LanguageType.English;
        FDHtml fDHtml = this.html;
        if (language == languageType) {
            return fDHtml.generate(detailByWordGetOtherFormOfWord != null ? detailByWordGetOtherFormOfWord.getEnglishSearchResultModel() : null, isDarkMode, model);
        }
        return fDHtml.generatePersianResult(detailByWordGetOtherFormOfWord != null ? detailByWordGetOtherFormOfWord.getPersianSearchResultModel() : null, isDarkMode, model);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void trackTranslateWithAnalytics(String sentence, Context context) {
        Bundle bundle = new Bundle();
        bundle.putString("translate", sentence);
        FirebaseAnalytics.getInstance(context).logEvent("search", bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleOfflineTranslator(Integer category, final String sentence, final TranslateModel model, final FDLanguageWord.LanguageType language, final ListModel listModel, final boolean isDarkMode, final Context context) {
        final Category categoryConvertToCategory = Category.INSTANCE.convertToCategory(category);
        FDOfflineTranslator.INSTANCE.translateAsync(StringExtKt.replaceNewLineWithBr(sentence), categoryConvertToCategory.getRawValue(), new Function2() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultViewModel$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return WordResultViewModel.handleOfflineTranslator$lambda$0(this.f$0, categoryConvertToCategory, sentence, model, language, listModel, context, isDarkMode, (String) obj, (Exception) obj2);
            }
        });
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    static final Unit handleOfflineTranslator$lambda$0(WordResultViewModel wordResultViewModel, Category category, String str, TranslateModel translateModel, FDLanguageWord.LanguageType languageType, ListModel listModel, Context context, boolean z, String str2, Exception exc) {
        String englishNumber;
        SearchResultModel detailByWordGetOtherFormOfWord;
        String strGeneratePersianResult;
        if (str2 == null) {
            wordResultViewModel._state.setValue(new WordResultViewModelUIState.ErrorResult("Something wrong occurred. Translate result is empty!"));
            return Unit.INSTANCE;
        }
        if (category == Category.English) {
            englishNumber = FDLanguageWord.INSTANCE.replaceNumbersToFarsi(str2);
        } else {
            englishNumber = FDStringExtKt.toEnglishNumber(str2);
        }
        TranslateModel translateModel2 = new TranslateModel(true, str, englishNumber, null, 8, null);
        translateModel.setSentence(str);
        translateModel.setResult(translateModel2.getResult());
        String lowerCase = languageType.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        translateModel.setLanguage(lowerCase);
        listModel.setMeaning(translateModel2.getResult());
        wordResultViewModel.history.deleteAndInsert(listModel);
        wordResultViewModel.trackTranslateWithAnalytics(str, context);
        FDDatabaseManager fDDatabaseManager = wordResultViewModel.databaseHelper;
        String sentence = translateModel.getSentence();
        Intrinsics.checkNotNull(sentence);
        Integer wordIdParent = fDDatabaseManager.getWordIdParent(languageType, sentence);
        if (wordIdParent != null) {
            detailByWordGetOtherFormOfWord = wordResultViewModel.databaseHelper.getDetailByWordId(languageType, wordIdParent.intValue());
        } else if (translateModel.getSentence() != null) {
            FDDatabaseManager fDDatabaseManager2 = wordResultViewModel.databaseHelper;
            String sentence2 = translateModel.getSentence();
            Intrinsics.checkNotNull(sentence2);
            detailByWordGetOtherFormOfWord = fDDatabaseManager2.getDetailByWordGetOtherFormOfWord(languageType, sentence2);
        } else {
            detailByWordGetOtherFormOfWord = null;
        }
        if (languageType == FDLanguageWord.LanguageType.English) {
            strGeneratePersianResult = wordResultViewModel.html.generate(detailByWordGetOtherFormOfWord != null ? detailByWordGetOtherFormOfWord.getEnglishSearchResultModel() : null, z, translateModel);
        } else {
            strGeneratePersianResult = wordResultViewModel.html.generatePersianResult(detailByWordGetOtherFormOfWord != null ? detailByWordGetOtherFormOfWord.getPersianSearchResultModel() : null, z, translateModel);
        }
        wordResultViewModel._state.setValue(new WordResultViewModelUIState.TranslatorHtmlResult(strGeneratePersianResult, str, translateModel.getResult(), z, false, 16, null));
        return Unit.INSTANCE;
    }

    public final boolean isOfflineSpeech() {
        return this.localStorage.getOfflineMode();
    }

    public final boolean isInternetAvailable() {
        return this.connectivityHelper.isInternetAvailable();
    }

    public final boolean validRewardedAdsForSentencePronunciation() {
        return this.localStorage.validRewardedAdsForSentencePronunciation();
    }

    public final void triggerTapHaptic() {
        this.soundEffect.tapVibration();
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.word_result_screen.WordResultViewModel$insertOrDeleteFavorite$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.word_result_screen.WordResultViewModel$insertOrDeleteFavorite$1", f = "WordResultViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45361 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ListModel $listModel;
        int label;
        final /* synthetic */ WordResultViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45361(ListModel listModel, WordResultViewModel wordResultViewModel, Continuation<? super C45361> continuation) {
            super(2, continuation);
            this.$listModel = listModel;
            this.this$0 = wordResultViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C45361(this.$listModel, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45361) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ListModel listModel = this.$listModel;
            Integer category = listModel.getCategory();
            if (category == null) {
                FDCategory fDCategory = new FDCategory();
                String word = this.$listModel.getWord();
                Intrinsics.checkNotNull(word);
                category = fDCategory.findLanguage(word);
            }
            listModel.setCategory(category);
            FDFavourite fDFavourite = this.this$0.favorite;
            String word2 = this.$listModel.getWord();
            Integer category2 = this.$listModel.getCategory();
            Intrinsics.checkNotNull(category2);
            String strWordDocumentId = fDFavourite.wordDocumentId(word2, category2.intValue());
            if (strWordDocumentId != null) {
                this.this$0.favorite.delete(strWordDocumentId);
                this.this$0._favoriteStatus.postValue(new WordResultViewModelFavoriteUIState.RemoveFromFavorite(strWordDocumentId));
            } else {
                FolderModel currentFolder = new FDFavouriteFolder().getCurrentFolder();
                if (currentFolder == null) {
                    new FDFavouriteFolder().insert(new FDFavouriteFolder().getDefaultFolder(), true);
                    currentFolder = new FDFavouriteFolder().getCurrentFolder();
                }
                if (currentFolder == null) {
                    MutableLiveData mutableLiveData = this.this$0._favoriteStatus;
                    String documentId = this.$listModel.getDocumentId();
                    Intrinsics.checkNotNull(documentId);
                    mutableLiveData.postValue(new WordResultViewModelFavoriteUIState.SelectFolder(documentId));
                } else {
                    this.$listModel.setFolderId(currentFolder.getDocumentId());
                    currentFolder.setWordDocumentId(this.this$0.favorite.insert(this.$listModel));
                    FDFavourite fDFavourite2 = this.this$0.favorite;
                    String word3 = this.$listModel.getWord();
                    Integer category3 = this.$listModel.getCategory();
                    Intrinsics.checkNotNull(category3);
                    currentFolder.setName(fDFavourite2.getFolderNameByWord(word3, category3.intValue()));
                    this.this$0._favoriteStatus.postValue(new WordResultViewModelFavoriteUIState.AddToFavorite(currentFolder));
                }
            }
            return Unit.INSTANCE;
        }
    }

    public final void insertOrDeleteFavorite(ListModel listModel) {
        Intrinsics.checkNotNullParameter(listModel, "listModel");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45361(listModel, this, null), 2, null);
    }
}
