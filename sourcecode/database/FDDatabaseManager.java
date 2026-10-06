package fast.dic.dict.database;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import androidx.webkit.ProxyConfig;
import com.amazon.aps.shared.metrics.model.ApsMetricsDataMap;
import com.canhub.cropper.CropImageOptionsKt;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.parse.ParseException;
import com.parse.ParseUser;
import com.yandex.div.core.dagger.Names;
import dagger.hilt.android.qualifiers.ApplicationContext;
import fast.dic.dict.R;
import fast.dic.dict.helpers.FDMainDatabaseHelper;
import fast.dic.dict.helpers.FDSuggestions;
import fast.dic.dict.helpers.FDWordCategory;
import fast.dic.dict.models.WordCategoryModel;
import fast.dic.dict.models.database.EnglishAudioModel;
import fast.dic.dict.models.database.EnglishAudiosModel;
import fast.dic.dict.models.database.EnglishIdiomGroupModel;
import fast.dic.dict.models.database.EnglishIdiomModel;
import fast.dic.dict.models.database.EnglishIdiomsModel;
import fast.dic.dict.models.database.EnglishMeaningModel;
import fast.dic.dict.models.database.EnglishSearchResultModel;
import fast.dic.dict.models.database.EnglishSynonymsAntonymModel;
import fast.dic.dict.models.database.EnglishWordFamily;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.models.database.PersianSearchResultModel;
import fast.dic.dict.models.database.PersianSynonymsAntonyms;
import fast.dic.dict.models.database.PersianWordDetail;
import fast.dic.dict.models.database.PosModel;
import fast.dic.dict.models.database.SearchResultModel;
import fast.dic.dict.models.database.SentenseModel;
import fast.dic.dict.models.database.WordCategoryNameDto;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.FDCategory;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.FDWordPartOfSpeech;
import fast.dic.dict.utils.Logger;
import fast.dic.dict.utils.StringUtils;
import fast.dic.dict.utils.Util;
import io.sentry.SentryEvent;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import net.zetetic.database.sqlcipher.SQLiteDatabase;

/* JADX INFO: compiled from: FDDatabaseManager.kt */
/* JADX INFO: loaded from: classes11.dex */
@Singleton
@Metadata(d1 = {"\u0000ö\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\b\u0007\u0018\u0000 h2\u00020\u0001:\u0001hB#\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\b\u0001\u0010\u0004\u001a\u00020\u0005:\u0002\b\u0006\u001a\u0002\b\t¢\u0006\u0004\b\u0007\u0010\bJ\u0006\u0010\u0014\u001a\u00020\u0015J)\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u001bH\u0002¢\u0006\u0002\u0010\u001cJ~\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 2)\u0010!\u001a%\u0012\u0015\u0012\u0013\u0018\u00010\u0019¢\u0006\f\b#\u0012\b\b$\u0012\u0004\b\b(%\u0012\n\u0012\b\u0012\u0004\u0012\u00020'0&0\"2'\u0010(\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020'0&¢\u0006\f\b#\u0012\b\b$\u0012\u0004\b\b()\u0012\u0004\u0012\u00020\u00150\"H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J\u000e\u0010-\u001a\b\u0012\u0004\u0012\u00020'0&H\u0002J,\u0010.\u001a\u0004\u0018\u00010\u00192\u0006\u0010/\u001a\u00020\u00192\u0006\u00100\u001a\u000201H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J*\u00102\u001a\u0002032\u0006\u00100\u001a\u0002012\u0006\u0010/\u001a\u00020\u0019H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J*\u00104\u001a\u0002032\u0006\u00100\u001a\u0002012\u0006\u00105\u001a\u00020 H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J*\u00106\u001a\u0002032\u0006\u00100\u001a\u0002012\u0006\u0010/\u001a\u00020\u0019H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J*\u00107\u001a\u00020\u00192\u0006\u00100\u001a\u0002012\u0006\u00105\u001a\u00020 H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J\"\u00108\u001a\u0002092\u0006\u0010/\u001a\u00020\u0019H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J:\u0010:\u001a\u0012\u0012\u0004\u0012\u00020\u00190;j\b\u0012\u0004\u0012\u00020\u0019`<2\u0006\u00100\u001a\u0002012\u0006\u00105\u001a\u00020 H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J\u001c\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00190&2\u0006\u00100\u001a\u0002012\u0006\u0010>\u001a\u00020 J \u0010?\u001a\b\u0012\u0004\u0012\u00020@0&H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J\f\u0010A\u001a\b\u0012\u0004\u0012\u00020 0&J\u0006\u0010B\u001a\u00020 J\u0017\u0010C\u001a\u0004\u0018\u00010@2\b\u0010D\u001a\u0004\u0018\u00010 ¢\u0006\u0002\u0010EJ\u001f\u0010F\u001a\u0004\u0018\u00010\u00192\b\u0010D\u001a\u0004\u0018\u00010 2\u0006\u0010G\u001a\u00020H¢\u0006\u0002\u0010IJ\u0014\u0010J\u001a\b\u0012\u0004\u0012\u00020K0&2\u0006\u0010G\u001a\u00020HJ\u001a\u0010L\u001a\b\u0012\u0004\u0012\u00020K0&2\f\u0010M\u001a\b\u0012\u0004\u0012\u00020N0&J\"\u0010O\u001a\u00020P2\u0006\u00105\u001a\u00020 H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J0\u0010Q\u001a\b\u0012\u0004\u0012\u00020R0&2\u0006\u00100\u001a\u0002012\u0006\u0010S\u001a\u00020 H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J(\u0010T\u001a\b\u0012\u0004\u0012\u00020U0&2\u0006\u0010V\u001a\u00020 H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J0\u0010W\u001a\b\u0012\u0004\u0012\u00020X0&2\u0006\u00100\u001a\u0002012\u0006\u0010V\u001a\u00020 H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J0\u0010Y\u001a\b\u0012\u0004\u0012\u00020Z0&2\u0006\u00100\u001a\u0002012\u0006\u0010S\u001a\u00020 H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J\u000e\u0010[\u001a\u00020\\2\u0006\u00105\u001a\u00020 J(\u0010]\u001a\b\u0012\u0004\u0012\u00020^0&2\u0006\u00105\u001a\u00020 H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J(\u0010_\u001a\b\u0012\u0004\u0012\u00020^0&2\u0006\u00105\u001a\u00020 H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J(\u0010`\u001a\b\u0012\u0004\u0012\u00020^0&2\u0006\u00105\u001a\u00020 H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,J\u001c\u0010a\u001a\b\u0012\u0004\u0012\u00020b0&2\f\u0010c\u001a\b\u0012\u0004\u0012\u00020^0&H\u0002J1\u0010d\u001a\u0004\u0018\u00010 2\u0006\u00100\u001a\u0002012\u0006\u0010/\u001a\u00020\u0019H\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,¢\u0006\u0002\u0010eJ<\u0010f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190&2\u0006\u00100\u001a\u0002012\u0006\u00105\u001a\u00020 2\b\u0010g\u001a\u0004\u0018\u00010\u000fH\u0007b\u0010\b*\u0012\f\b+\u0012\b\b\fJ\u0004\b\b(,R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0015\u0010\u0004\u001a\u00020\u00058\u0002X\u0083\u0004\u0092\u0002\u0002\b\u0006¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000Ê\u0001\u0002\bj¨\u0006i"}, d2 = {"Lfast/dic/dict/database/FDDatabaseManager;", "", "databaseHelper", "Lfast/dic/dict/helpers/FDMainDatabaseHelper;", Names.CONTEXT, "Landroid/content/Context;", "Ldagger/hilt/android/qualifiers/ApplicationContext;", "<init>", "(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Landroid/content/Context;)V", "Ljavax/inject/Inject;", SentryEvent.JsonKeys.LOGGER, "Lfast/dic/dict/utils/Logger;", "stringUtils", "Lfast/dic/dict/utils/StringUtils;", "database", "Lnet/zetetic/database/sqlcipher/SQLiteDatabase;", "getDatabase", "()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;", "searchJob", "Lkotlinx/coroutines/Job;", "close", "", "safeRawQuery", "Landroid/database/Cursor;", "query", "", "args", "", "(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;", "search", "finalWord", "limitNo", "", "needHistoryCallback", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "historyForWord", "", "Lfast/dic/dict/models/database/ListModel;", "callback", "words", "Landroid/annotation/SuppressLint;", "value", "Range", "getTranslatePlaceHolder", "getMeaningByWord", "word", "type", "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;", "getDetailByWord", "Lfast/dic/dict/models/database/SearchResultModel;", "getDetailByWordId", "wordId", "getDetailByWordGetOtherFormOfWord", "getWordById", "getWordFamily", "Lfast/dic/dict/models/database/EnglishWordFamily;", "getWordMeanings", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getCategories", "detailId", "getAllCategories", "Lfast/dic/dict/models/database/WordCategoryNameDto;", "getAllCategoryIds", "getCategoryCount", "findCategoryById", "categoryId", "(Ljava/lang/Integer;)Lfast/dic/dict/models/database/WordCategoryNameDto;", "getCategoryNameById", "isCurrentLanguagePersian", "", "(Ljava/lang/Integer;Z)Ljava/lang/String;", "getCategoryAndPosList", "Lfast/dic/dict/models/WordCategoryModel;", "getCefrLevelCounts", "labels", "Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;", "getAudios", "Lfast/dic/dict/models/database/EnglishAudiosModel;", "getPos", "Lfast/dic/dict/models/database/PosModel;", "detail_id", "getEnglishSynonymsAntonyms", "Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;", "word_id", "getSynonymsAntonyms", "Lfast/dic/dict/models/database/PersianSynonymsAntonyms;", "getSentences", "Lfast/dic/dict/models/database/SentenseModel;", "getEnglishPOSs", "Lfast/dic/dict/models/database/EnglishIdiomsModel;", "getEnglishPhrasalVerbs", "Lfast/dic/dict/models/database/EnglishIdiomModel;", "getEnglishCollocations", "getEnglishIdioms", "groupIdiomMeanings", "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;", "idioms", "getWordIdParent", "(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Ljava/lang/String;)Ljava/lang/Integer;", "getMeanings", "db", "Companion", "app", "Ljavax/inject/Singleton;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDDatabaseManager {
    private static final int MAX_LENGTH_DB_SEARCH = 100;
    private static final int MAX_LENGTH_LAV = 10;

    @ApplicationContext
    private final Context context;
    private final FDMainDatabaseHelper databaseHelper;
    private final Logger logger;
    private Job searchJob;
    private final StringUtils stringUtils;
    private static final List<Integer> ignoreMultiNames = CollectionsKt.listOf(58);

    @Inject
    public FDDatabaseManager(FDMainDatabaseHelper databaseHelper, @ApplicationContext Context context) {
        Intrinsics.checkNotNullParameter(databaseHelper, "databaseHelper");
        Intrinsics.checkNotNullParameter(context, "context");
        this.databaseHelper = databaseHelper;
        this.context = context;
        this.logger = Logger.INSTANCE.getLogger1();
        this.stringUtils = new StringUtils();
    }

    public final SQLiteDatabase getDatabase() {
        return this.databaseHelper.getReadableDatabase();
    }

    public final void close() {
        SQLiteDatabase database = getDatabase();
        if (database != null) {
            database.close();
        }
    }

    static /* synthetic */ Cursor safeRawQuery$default(FDDatabaseManager fDDatabaseManager, String str, String[] strArr, int i, Object obj) {
        if ((i & 2) != 0) {
            strArr = null;
        }
        return fDDatabaseManager.safeRawQuery(str, strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Cursor safeRawQuery(String query, String[] args) {
        try {
            try {
                SQLiteDatabase database = getDatabase();
                if (database != null) {
                    return database.rawQuery(query, args);
                }
                return null;
            } catch (IllegalStateException unused) {
                SQLiteDatabase readableDatabase = this.databaseHelper.getReadableDatabase();
                if (readableDatabase != null) {
                    return readableDatabase.rawQuery(query, args);
                }
                return null;
            }
        } catch (Exception e) {
            FirebaseCrashlytics.getInstance().recordException(e);
            return null;
        }
        FirebaseCrashlytics.getInstance().recordException(e);
        return null;
    }

    public final void search(String finalWord, int limitNo, Function1<? super String, ? extends List<ListModel>> needHistoryCallback, Function1<? super List<ListModel>, Unit> callback) {
        Intrinsics.checkNotNullParameter(finalWord, "finalWord");
        Intrinsics.checkNotNullParameter(needHistoryCallback, "needHistoryCallback");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Job job = this.searchJob;
        if (job != null) {
            Job.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.searchJob = BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new AnonymousClass1(finalWord, needHistoryCallback, callback, limitNo, null), 3, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.database.FDDatabaseManager$search$1, reason: invalid class name */
    /* JADX INFO: compiled from: FDDatabaseManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.database.FDDatabaseManager$search$1", f = "FDDatabaseManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<List<ListModel>, Unit> $callback;
        final /* synthetic */ String $finalWord;
        final /* synthetic */ int $limitNo;
        final /* synthetic */ Function1<String, List<ListModel>> $needHistoryCallback;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(String str, Function1<? super String, ? extends List<ListModel>> function1, Function1<? super List<ListModel>, Unit> function2, int i, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$finalWord = str;
            this.$needHistoryCallback = function1;
            this.$callback = function2;
            this.$limitNo = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = FDDatabaseManager.this.new AnonymousClass1(this.$finalWord, this.$needHistoryCallback, this.$callback, this.$limitNo, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Cursor cursorSafeRawQuery;
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                FDDatabaseManager.this.logger.debug("~~~> Start searching (" + this.$finalWord + ") word at " + System.currentTimeMillis(), new Object[0]);
                String strTrimmingAndLowerCaseWords = FDDatabaseManager.this.stringUtils.trimmingAndLowerCaseWords(this.$finalWord);
                ArrayList arrayList = new ArrayList();
                String str = strTrimmingAndLowerCaseWords;
                if (str == null || str.length() == 0) {
                    this.$callback.invoke(this.$needHistoryCallback.invoke(null));
                    return Unit.INSTANCE;
                }
                int length = strTrimmingAndLowerCaseWords.length();
                FDDatabaseManager fDDatabaseManager = FDDatabaseManager.this;
                if (length < 100) {
                    if (!fDDatabaseManager.databaseHelper.checkDataBase()) {
                        this.$callback.invoke(arrayList);
                        return Unit.INSTANCE;
                    }
                    try {
                        cursorSafeRawQuery = FDLanguageWord.INSTANCE.isEnglish(strTrimmingAndLowerCaseWords) ? FDDatabaseManager.this.safeRawQuery("SELECT w.english_word AS word, w.english_word_id as word_id, english_word_id_parent as word_id_parent FROM english_words w WHERE w.english_word GLOB ? ORDER BY w.english_word LIMIT ?", new String[]{strTrimmingAndLowerCaseWords + ProxyConfig.MATCH_ALL_SCHEMES, String.valueOf(this.$limitNo)}) : FDDatabaseManager.this.safeRawQuery("SELECT w.persian_word AS word, w.persian_word_id as word_id, persian_word_id_parent as word_id_parent FROM persian_words w WHERE w.word_in_number GLOB ? ORDER BY length(w.word_in_number) LIMIT ?", new String[]{StringUtils.INSTANCE.peCharacterToNumber(strTrimmingAndLowerCaseWords) + ProxyConfig.MATCH_ALL_SCHEMES, String.valueOf(this.$limitNo)});
                    } catch (SQLiteException e) {
                        FDDatabaseManager.this.logger.error("~~~> SQLiteException: " + e.getMessage(), new Object[0]);
                        e.printStackTrace();
                        FirebaseCrashlytics.getInstance().recordException(e);
                        cursorSafeRawQuery = null;
                    }
                    FDCategory fDCategory = new FDCategory();
                    if (cursorSafeRawQuery != null && cursorSafeRawQuery.moveToFirst()) {
                        do {
                            if (!CoroutineScopeKt.isActive(coroutineScope)) {
                                FDDatabaseManager.this.logger.debug("~~~> Canceled searching (" + this.$finalWord + ") word at " + System.currentTimeMillis(), new Object[0]);
                                cursorSafeRawQuery.close();
                                return Unit.INSTANCE;
                            }
                            ListModel listModel = new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, null, null, 0, 2097151, null);
                            int columnIndex = cursorSafeRawQuery.getColumnIndex("word_id_parent");
                            Integer numBoxInt = cursorSafeRawQuery.isNull(columnIndex) ? null : Boxing.boxInt(cursorSafeRawQuery.getInt(columnIndex));
                            listModel.setCategory(fDCategory.findLanguage(strTrimmingAndLowerCaseWords));
                            listModel.setWord(cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("word")));
                            listModel.setWordId(numBoxInt == null ? Boxing.boxInt(cursorSafeRawQuery.getInt(cursorSafeRawQuery.getColumnIndex("word_id"))) : numBoxInt);
                            if (numBoxInt == null) {
                                FDDatabaseManager fDDatabaseManager2 = FDDatabaseManager.this;
                                FDLanguageWord.LanguageType languageTypeFind = FDLanguageWord.INSTANCE.find(listModel.getWord());
                                Integer wordId = listModel.getWordId();
                                Intrinsics.checkNotNull(wordId);
                                List<String> meanings = fDDatabaseManager2.getMeanings(languageTypeFind, wordId.intValue(), FDDatabaseManager.this.getDatabase());
                                if (FDLanguageWord.INSTANCE.isEnglish(strTrimmingAndLowerCaseWords)) {
                                    listModel.setMeaning(CollectionsKt.joinToString$default(meanings, "، ", null, null, 0, null, null, 62, null));
                                } else {
                                    listModel.setMeaning(CollectionsKt.joinToString$default(meanings, ", ", null, null, 0, null, null, 62, null));
                                }
                            } else {
                                boolean zIsEnglish = FDLanguageWord.INSTANCE.isEnglish(strTrimmingAndLowerCaseWords);
                                FDDatabaseManager fDDatabaseManager3 = FDDatabaseManager.this;
                                if (zIsEnglish) {
                                    listModel.setMeaning(fDDatabaseManager3.context.getString(R.string.fa_to_see_translate_click_on_text));
                                } else {
                                    listModel.setMeaning(fDDatabaseManager3.context.getString(R.string.en_to_see_translate_click_on_text));
                                }
                            }
                            arrayList.add(listModel);
                        } while (cursorSafeRawQuery.moveToNext());
                    }
                    if (cursorSafeRawQuery != null) {
                        cursorSafeRawQuery.close();
                    }
                    List<ListModel> mutableList = CollectionsKt.toMutableList((Collection) FDDatabaseManager.this.getTranslatePlaceHolder());
                    List<ListModel> listInvoke = this.$needHistoryCallback.invoke(strTrimmingAndLowerCaseWords);
                    if (arrayList.size() > 0) {
                        mutableList.addAll(listInvoke);
                        mutableList.addAll(arrayList);
                        this.$callback.invoke(mutableList);
                        return Unit.INSTANCE;
                    }
                    if (strTrimmingAndLowerCaseWords.length() >= 10 && Util.isMemoryReadyForLevenshtein()) {
                        mutableList.addAll(new FDSuggestions().getLevenshtein(strTrimmingAndLowerCaseWords, FDDatabaseManager.this));
                        this.$callback.invoke(mutableList);
                        return Unit.INSTANCE;
                    }
                    mutableList.addAll(listInvoke);
                    if (Util.isMemoryReadyForLevenshtein()) {
                        mutableList.addAll(new FDSuggestions().getLevenshtein(strTrimmingAndLowerCaseWords, FDDatabaseManager.this));
                    }
                    this.$callback.invoke(mutableList);
                    return Unit.INSTANCE;
                }
                this.$callback.invoke(fDDatabaseManager.getTranslatePlaceHolder());
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ListModel> getTranslatePlaceHolder() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        ArrayList arrayList = new ArrayList();
        ListModel listModel = new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, null, null, 0, 2097151, null);
        listModel.setTranslator(true);
        if ((fDParseUser != null ? fDParseUser.getEmail() : null) != null) {
            listModel.setLoggedIn(true);
            listModel.setMaxTranslatorLength(fDParseUser.getTranslatorMaxLength());
            listModel.setTranslatorCount(fDParseUser.getTranslatorSearchedWords());
            listModel.setHasSubscription(Boolean.valueOf(fDParseUser.hasPlan2Or3()));
        }
        arrayList.add(listModel);
        return arrayList;
    }

    public final String getMeaningByWord(String word, FDLanguageWord.LanguageType type) {
        Cursor cursorSafeRawQuery;
        Intrinsics.checkNotNullParameter(word, "word");
        Intrinsics.checkNotNullParameter(type, "type");
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        String lowerCase = word.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String string = null;
        if (!this.databaseHelper.checkDataBase()) {
            return null;
        }
        if (type == FDLanguageWord.LanguageType.English) {
            Cursor cursorSafeRawQuery2 = safeRawQuery("SELECT w.english_word as english_word, w.english_word_id as english_word_id, COALESCE(d.persian_meaning, '') as persian_meaning, countable_uncountable FROM english_words w LEFT JOIN english_details d ON w.english_word_id = d.english_word_id WHERE w.english_word = ? ORDER BY d.position, d.english_detail_id LIMIT 1", new String[]{lowerCase});
            if (cursorSafeRawQuery2 != null) {
                if (cursorSafeRawQuery2.moveToFirst()) {
                    do {
                        string = cursorSafeRawQuery2.getString(cursorSafeRawQuery2.getColumnIndex("persian_meaning"));
                    } while (cursorSafeRawQuery2.moveToNext());
                }
                cursorSafeRawQuery2.close();
                return string;
            }
        } else if (type == FDLanguageWord.LanguageType.Persian && (cursorSafeRawQuery = safeRawQuery("SELECT w.persian_word as persian_word, w.persian_word_id as persian_word_id, d.english_meaning as english_meaning FROM persian_words w LEFT JOIN persian_details d ON w.persian_word_id = d.persian_word_id WHERE w.persian_word = ? ORDER BY d.position, d.persian_detail_id LIMIT 1", new String[]{lowerCase})) != null) {
            if (cursorSafeRawQuery.moveToFirst()) {
                do {
                    string = cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("english_meaning"));
                } while (cursorSafeRawQuery.moveToNext());
            }
            cursorSafeRawQuery.close();
        }
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:205:0x0221 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x020b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:210:0x024e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:212:0x0238 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:61:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:64:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:65:0x0203  */
    /* JADX WARN: Code duplicated, block: B:69:0x0211  */
    /* JADX WARN: Code duplicated, block: B:71:0x0219  */
    /* JADX WARN: Code duplicated, block: B:72:0x021e  */
    /* JADX WARN: Code duplicated, block: B:77:0x022b  */
    /* JADX WARN: Code duplicated, block: B:78:0x0230  */
    /* JADX WARN: Code duplicated, block: B:82:0x023e  */
    /* JADX WARN: Code duplicated, block: B:84:0x0246  */
    /* JADX WARN: Code duplicated, block: B:85:0x024b  */
    public final SearchResultModel getDetailByWord(FDLanguageWord.LanguageType type, String word) {
        Cursor cursorRawQuery;
        Cursor cursorRawQuery2;
        EnglishAudiosModel audios;
        EnglishAudiosModel audios2;
        List<EnglishAudioModel> american;
        EnglishAudiosModel audios3;
        List<EnglishAudioModel> british;
        String filename;
        String filename2;
        List<EnglishAudioModel> british2;
        EnglishAudiosModel audios4;
        List<EnglishAudioModel> american2;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(word, "word");
        this.logger.debug("===== Start GetDetailByWord = " + word, new Object[0]);
        if (word.length() == 0) {
            return new SearchResultModel(null, null, null, null, 15, null);
        }
        if (word.length() >= 100) {
            return new SearchResultModel(null, null, null, null, 15, null);
        }
        SearchResultModel searchResultModel = new SearchResultModel(null, null, null, null, 15, null);
        if (this.databaseHelper.checkDataBase()) {
            String strTrimmingAndLowerCaseWords = this.stringUtils.trimmingAndLowerCaseWords(word);
            if (strTrimmingAndLowerCaseWords == null) {
                strTrimmingAndLowerCaseWords = "";
            }
            int i = 6;
            int i2 = 5;
            int i3 = 2;
            int i4 = 3;
            int i5 = 4;
            if (type == FDLanguageWord.LanguageType.English) {
                EnglishSearchResultModel englishSearchResultModel = new EnglishSearchResultModel(null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, false, null, null, 524287, null);
                ArrayList arrayList = new ArrayList();
                SQLiteDatabase database = getDatabase();
                if (database != null && (cursorRawQuery2 = database.rawQuery("SELECT w.english_word as english_word, w.english_word_id as english_word_id, w.simple_past as simple_past, w.past_participle as past_participle, w.infinitive as infinitive, w.`word_description_html` as word_description_html, d.english_detail_id as english_detail_id, COALESCE(d.persian_meaning, '') as pe_meaning, d.countable_uncountable as countable_uncountable, d.formal_informal as formal_informal, d.british_american as british_american, d.cefr as cefr, w.third_person_singular as third_person_singular, w.present_participle as present_participle, w.plural as plural, w.comparative as comparative, w.superlative as superlative, d.has_image as has_image, d.description_html as description_html  FROM english_words w LEFT JOIN english_details d ON w.english_word_id = d.english_word_id WHERE w.english_word = ? ORDER BY d.position, d.english_detail_id", new String[]{strTrimmingAndLowerCaseWords})) != null) {
                    if (cursorRawQuery2.moveToFirst()) {
                        boolean z = false;
                        while (true) {
                            if (!z) {
                                englishSearchResultModel.setWord(cursorRawQuery2.isNull(0) ? null : cursorRawQuery2.getString(0));
                                englishSearchResultModel.setWordId(cursorRawQuery2.isNull(1) ? null : Integer.valueOf(cursorRawQuery2.getInt(1)));
                                englishSearchResultModel.setPastParticiple(getWordById(type, cursorRawQuery2.getInt(i4)));
                                englishSearchResultModel.setSimplePast(getWordById(type, cursorRawQuery2.getInt(2)));
                                englishSearchResultModel.setInfinitive(getWordById(type, cursorRawQuery2.getInt(4)));
                                englishSearchResultModel.setThirdPersonSingular(getWordById(FDLanguageWord.LanguageType.English, cursorRawQuery2.getInt(12)));
                                englishSearchResultModel.setPresentParticiple(getWordById(FDLanguageWord.LanguageType.English, cursorRawQuery2.getInt(13)));
                                englishSearchResultModel.setPlural(getWordById(FDLanguageWord.LanguageType.English, cursorRawQuery2.getInt(14)));
                                englishSearchResultModel.setComparative(getWordById(FDLanguageWord.LanguageType.English, cursorRawQuery2.getInt(15)));
                                englishSearchResultModel.setSuperlative(getWordById(FDLanguageWord.LanguageType.English, cursorRawQuery2.getInt(16)));
                                englishSearchResultModel.setWordDescriptionHtml(cursorRawQuery2.isNull(i2) ? null : cursorRawQuery2.getString(i2));
                                Integer wordId = englishSearchResultModel.getWordId();
                                Intrinsics.checkNotNull(wordId);
                                englishSearchResultModel.setAudios(getAudios(wordId.intValue()));
                                Integer wordId2 = englishSearchResultModel.getWordId();
                                Intrinsics.checkNotNull(wordId2);
                                englishSearchResultModel.setEnglishSynonymsAntonyms(getEnglishSynonymsAntonyms(wordId2.intValue()));
                                Integer wordId3 = englishSearchResultModel.getWordId();
                                Intrinsics.checkNotNull(wordId3);
                                englishSearchResultModel.setIdioms(getEnglishPOSs(wordId3.intValue()));
                                String word2 = englishSearchResultModel.getWord();
                                Intrinsics.checkNotNull(word2);
                                englishSearchResultModel.setWordFamily(getWordFamily(word2));
                                EnglishAudiosModel audios5 = englishSearchResultModel.getAudios();
                                if ((audios5 != null ? audios5.getBritish() : null) != null) {
                                    audios = englishSearchResultModel.getAudios();
                                    if (audios == null && (british2 = audios.getBritish()) != null && british2.isEmpty() && (audios4 = englishSearchResultModel.getAudios()) != null && (american2 = audios4.getAmerican()) != null && american2.isEmpty()) {
                                        englishSearchResultModel.setAudioOffline(true);
                                    } else {
                                        audios2 = englishSearchResultModel.getAudios();
                                        if (audios2 != null) {
                                            american = audios2.getAmerican();
                                        } else {
                                            american = null;
                                        }
                                        Intrinsics.checkNotNull(american);
                                        for (EnglishAudioModel englishAudioModel : american) {
                                            if (englishAudioModel != null) {
                                                filename2 = englishAudioModel.getFilename();
                                            } else {
                                                filename2 = null;
                                            }
                                            if (filename2 == null) {
                                                englishSearchResultModel.setAudioOffline(true);
                                            }
                                        }
                                        audios3 = englishSearchResultModel.getAudios();
                                        if (audios3 != null) {
                                            british = audios3.getBritish();
                                        } else {
                                            british = null;
                                        }
                                        Intrinsics.checkNotNull(british);
                                        for (EnglishAudioModel englishAudioModel2 : british) {
                                            if (englishAudioModel2 != null) {
                                                filename = englishAudioModel2.getFilename();
                                            } else {
                                                filename = null;
                                            }
                                            if (filename == null) {
                                                englishSearchResultModel.setAudioOffline(true);
                                            }
                                        }
                                    }
                                } else {
                                    EnglishAudiosModel audios6 = englishSearchResultModel.getAudios();
                                    if ((audios6 != null ? audios6.getAmerican() : null) != null) {
                                        audios = englishSearchResultModel.getAudios();
                                        if (audios == null) {
                                        }
                                        audios2 = englishSearchResultModel.getAudios();
                                        if (audios2 != null) {
                                            american = audios2.getAmerican();
                                        } else {
                                            american = null;
                                        }
                                        Intrinsics.checkNotNull(american);
                                        while (r11.hasNext()) {
                                            if (englishAudioModel != null) {
                                                filename2 = englishAudioModel.getFilename();
                                            } else {
                                                filename2 = null;
                                            }
                                            if (filename2 == null) {
                                                englishSearchResultModel.setAudioOffline(true);
                                            }
                                        }
                                        audios3 = englishSearchResultModel.getAudios();
                                        if (audios3 != null) {
                                            british = audios3.getBritish();
                                        } else {
                                            british = null;
                                        }
                                        Intrinsics.checkNotNull(british);
                                        while (r11.hasNext()) {
                                            if (englishAudioModel2 != null) {
                                                filename = englishAudioModel2.getFilename();
                                            } else {
                                                filename = null;
                                            }
                                            if (filename == null) {
                                                englishSearchResultModel.setAudioOffline(true);
                                            }
                                        }
                                    } else {
                                        englishSearchResultModel.setAudioOffline(true);
                                    }
                                }
                                z = true;
                            }
                            EnglishMeaningModel englishMeaningModel = new EnglishMeaningModel(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
                            Integer numValueOf = cursorRawQuery2.isNull(17) ? null : Integer.valueOf(cursorRawQuery2.getInt(17));
                            englishMeaningModel.setHasImage(Boolean.valueOf(numValueOf != null && numValueOf.intValue() == 1));
                            englishMeaningModel.setDetailId(cursorRawQuery2.isNull(6) ? null : Integer.valueOf(cursorRawQuery2.getInt(6)));
                            englishMeaningModel.setMeaning(cursorRawQuery2.isNull(7) ? null : cursorRawQuery2.getString(7));
                            englishMeaningModel.setCountableUncountable(cursorRawQuery2.isNull(8) ? null : Integer.valueOf(cursorRawQuery2.getInt(8)));
                            englishMeaningModel.setFormalInformal(cursorRawQuery2.isNull(9) ? null : Integer.valueOf(cursorRawQuery2.getInt(9)));
                            englishMeaningModel.setBritishAmerican(cursorRawQuery2.isNull(10) ? null : Integer.valueOf(cursorRawQuery2.getInt(10)));
                            englishMeaningModel.setCefr(cursorRawQuery2.isNull(11) ? null : cursorRawQuery2.getString(11));
                            englishMeaningModel.setDescriptionHtml(cursorRawQuery2.isNull(18) ? null : cursorRawQuery2.getString(18));
                            Integer detailId = englishMeaningModel.getDetailId();
                            if (detailId != null) {
                                int iIntValue = detailId.intValue();
                                englishMeaningModel.setPos(getPos(type, iIntValue));
                                englishMeaningModel.setSentenses(getSentences(type, iIntValue));
                                englishMeaningModel.setCategories(getCategories(type, iIntValue));
                            }
                            arrayList.add(englishMeaningModel);
                            if (!cursorRawQuery2.moveToNext()) {
                                break;
                            }
                            i2 = 5;
                            i4 = 3;
                        }
                    }
                    cursorRawQuery2.close();
                    englishSearchResultModel.setMeanings(arrayList);
                    searchResultModel.setEnglishSearchResultModel(englishSearchResultModel);
                    this.logger.debug("===== Finished GetDetailByWord = " + strTrimmingAndLowerCaseWords, new Object[0]);
                    return searchResultModel;
                }
            } else {
                if (type == FDLanguageWord.LanguageType.Persian) {
                    SQLiteDatabase database2 = getDatabase();
                    if (database2 != null && (cursorRawQuery = database2.rawQuery("SELECT w.persian_word as persian_word, w.persian_word_id as persian_word_id, w.`word_description_html` as word_description_html, d.english_meaning as english_meaning, COALESCE(d.persian_phonetic, '') as persian_phonetic, COALESCE(d.persian_meaning, '') as persian_meaning, d.persian_detail_id as persian_detail_id, d.has_image as has_image FROM persian_words w LEFT JOIN persian_details d ON w.persian_word_id = d.persian_word_id WHERE w.persian_word_id = ? ORDER BY d.position, d.persian_detail_id", new String[]{strTrimmingAndLowerCaseWords})) != null) {
                        ArrayList arrayList2 = new ArrayList();
                        PersianSearchResultModel persianSearchResultModel = new PersianSearchResultModel();
                        ArrayList arrayList3 = new ArrayList();
                        if (cursorRawQuery.moveToFirst()) {
                            boolean z2 = false;
                            while (true) {
                                PersianWordDetail persianWordDetail = new PersianWordDetail();
                                String string = cursorRawQuery.isNull(i5) ? null : cursorRawQuery.getString(i5);
                                if (!arrayList2.contains(string)) {
                                    if (!z2) {
                                        persianSearchResultModel.setWord(cursorRawQuery.isNull(0) ? null : cursorRawQuery.getString(0));
                                        persianSearchResultModel.setWordId(cursorRawQuery.isNull(1) ? null : Integer.valueOf(cursorRawQuery.getInt(1)));
                                        persianSearchResultModel.setWordDescriptionHtml(cursorRawQuery.isNull(i3) ? null : cursorRawQuery.getString(i3));
                                        Integer wordId4 = persianSearchResultModel.getWordId();
                                        Intrinsics.checkNotNull(wordId4);
                                        persianSearchResultModel.setPersianSynonymsAntonyms(getSynonymsAntonyms(type, wordId4.intValue()));
                                    }
                                    z2 = true;
                                }
                                Integer numValueOf2 = cursorRawQuery.isNull(7) ? null : Integer.valueOf(cursorRawQuery.getInt(7));
                                persianWordDetail.setHasImage(Boolean.valueOf(numValueOf2 != null && numValueOf2.intValue() == 1));
                                persianWordDetail.setDetailId(cursorRawQuery.isNull(i) ? null : Integer.valueOf(cursorRawQuery.getInt(i)));
                                persianWordDetail.setPhonetics(FDLanguageWord.INSTANCE.replaceNumbers(string));
                                Integer detailId2 = persianWordDetail.getDetailId();
                                Intrinsics.checkNotNull(detailId2);
                                persianWordDetail.setPos(getPos(type, detailId2.intValue()));
                                persianWordDetail.setPersianMeanings(cursorRawQuery.isNull(5) ? null : cursorRawQuery.getString(5));
                                persianWordDetail.setMeaning(cursorRawQuery.isNull(3) ? null : cursorRawQuery.getString(3));
                                Integer detailId3 = persianWordDetail.getDetailId();
                                Intrinsics.checkNotNull(detailId3);
                                persianWordDetail.setSentenses(getSentences(type, detailId3.intValue()));
                                Integer detailId4 = persianWordDetail.getDetailId();
                                Intrinsics.checkNotNull(detailId4);
                                persianWordDetail.setCategories(getCategories(type, detailId4.intValue()));
                                arrayList3.add(persianWordDetail);
                                String str = string;
                                if (str == null || str.length() == 0) {
                                    string = "";
                                }
                                arrayList2.add(string);
                                if (!cursorRawQuery.moveToNext()) {
                                    break;
                                }
                                i = 6;
                                i3 = 2;
                                i5 = 4;
                            }
                        }
                        cursorRawQuery.close();
                        searchResultModel.setPersianSearchResultModel(persianSearchResultModel);
                        PersianSearchResultModel persianSearchResultModel2 = searchResultModel.getPersianSearchResultModel();
                        if (persianSearchResultModel2 != null) {
                            persianSearchResultModel2.setWordDetails(arrayList3);
                        }
                    }
                }
                this.logger.debug("===== Finished GetDetailByWord = " + strTrimmingAndLowerCaseWords, new Object[0]);
                return searchResultModel;
            }
        }
        return searchResultModel;
    }

    /* JADX WARN: Code duplicated, block: B:197:0x01ef A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x01d9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:202:0x021c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:204:0x0206 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x019e  */
    /* JADX WARN: Code duplicated, block: B:47:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:50:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:51:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:55:0x01df  */
    /* JADX WARN: Code duplicated, block: B:57:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:58:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:63:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:64:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:68:0x020c  */
    /* JADX WARN: Code duplicated, block: B:70:0x0214  */
    /* JADX WARN: Code duplicated, block: B:71:0x0219  */
    /* JADX WARN: Multi-variable type inference failed */
    public final SearchResultModel getDetailByWordId(FDLanguageWord.LanguageType type, int wordId) {
        EnglishAudiosModel audios;
        EnglishAudiosModel audios2;
        List<EnglishAudioModel> american;
        EnglishAudiosModel audios3;
        List<EnglishAudioModel> british;
        String filename;
        String filename2;
        List<EnglishAudioModel> british2;
        EnglishAudiosModel audios4;
        List<EnglishAudioModel> american2;
        Intrinsics.checkNotNullParameter(type, "type");
        int i = 0;
        this.logger.debug("===== Start GetDetailByWord = " + wordId, new Object[0]);
        if (wordId == 0) {
            return new SearchResultModel(null, null, null, null, 15, null);
        }
        SearchResultModel searchResultModel = new SearchResultModel(null, null, null, null, 15, null);
        if (!this.databaseHelper.checkDataBase()) {
            return searchResultModel;
        }
        int i2 = 6;
        int i3 = 5;
        int i4 = 2;
        int i5 = 3;
        if (type == FDLanguageWord.LanguageType.English) {
            EnglishSearchResultModel englishSearchResultModel = new EnglishSearchResultModel(null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, false, null, null, 524287, null);
            ArrayList arrayList = new ArrayList();
            Cursor cursorSafeRawQuery = safeRawQuery("SELECT w.english_word as english_word, w.english_word_id as english_word_id, w.simple_past as simple_past, w.past_participle as past_participle, w.infinitive as infinitive, w.`word_description_html` as word_description_html, d.english_detail_id as english_detail_id, COALESCE(d.persian_meaning, '') as pe_meaning, d.countable_uncountable as countable_uncountable, d.formal_informal as formal_informal, d.british_american as british_american, d.cefr as cefr, w.third_person_singular as third_person_singular, w.present_participle as present_participle, w.plural as plural, w.comparative as comparative, w.superlative as superlative, d.has_image as has_image, d.description_html as description_html  FROM english_words w LEFT JOIN english_details d ON w.english_word_id = d.english_word_id WHERE  w.english_word_id = ? ORDER BY d.position, d.english_detail_id", new String[]{String.valueOf(wordId)});
            if (cursorSafeRawQuery != null) {
                if (cursorSafeRawQuery.moveToFirst()) {
                    boolean z = false;
                    while (true) {
                        if (!z) {
                            englishSearchResultModel.setWord(cursorSafeRawQuery.isNull(i) ? null : cursorSafeRawQuery.getString(i));
                            englishSearchResultModel.setWordId(cursorSafeRawQuery.isNull(1) ? null : Integer.valueOf(cursorSafeRawQuery.getInt(1)));
                            englishSearchResultModel.setPastParticiple(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(i5)));
                            englishSearchResultModel.setSimplePast(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(2)));
                            englishSearchResultModel.setInfinitive(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(4)));
                            englishSearchResultModel.setThirdPersonSingular(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(12)));
                            englishSearchResultModel.setPresentParticiple(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(13)));
                            englishSearchResultModel.setPlural(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(14)));
                            englishSearchResultModel.setComparative(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(15)));
                            englishSearchResultModel.setSuperlative(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(16)));
                            englishSearchResultModel.setWordDescriptionHtml(cursorSafeRawQuery.getString(i3));
                            Integer wordId2 = englishSearchResultModel.getWordId();
                            Intrinsics.checkNotNull(wordId2);
                            englishSearchResultModel.setAudios(getAudios(wordId2.intValue()));
                            Integer wordId3 = englishSearchResultModel.getWordId();
                            Intrinsics.checkNotNull(wordId3);
                            englishSearchResultModel.setEnglishSynonymsAntonyms(getEnglishSynonymsAntonyms(wordId3.intValue()));
                            Integer wordId4 = englishSearchResultModel.getWordId();
                            Intrinsics.checkNotNull(wordId4);
                            englishSearchResultModel.setIdioms(getEnglishPOSs(wordId4.intValue()));
                            String word = englishSearchResultModel.getWord();
                            Intrinsics.checkNotNull(word);
                            englishSearchResultModel.setWordFamily(getWordFamily(word));
                            EnglishAudiosModel audios5 = englishSearchResultModel.getAudios();
                            if ((audios5 != null ? audios5.getBritish() : null) != null) {
                                audios = englishSearchResultModel.getAudios();
                                if (audios == null && (british2 = audios.getBritish()) != null && british2.isEmpty() && (audios4 = englishSearchResultModel.getAudios()) != null && (american2 = audios4.getAmerican()) != null && american2.isEmpty()) {
                                    englishSearchResultModel.setAudioOffline(true);
                                } else {
                                    audios2 = englishSearchResultModel.getAudios();
                                    if (audios2 != null) {
                                        american = audios2.getAmerican();
                                    } else {
                                        american = null;
                                    }
                                    Intrinsics.checkNotNull(american);
                                    for (EnglishAudioModel englishAudioModel : american) {
                                        if (englishAudioModel != null) {
                                            filename2 = englishAudioModel.getFilename();
                                        } else {
                                            filename2 = null;
                                        }
                                        if (filename2 == null) {
                                            englishSearchResultModel.setAudioOffline(true);
                                        }
                                    }
                                    audios3 = englishSearchResultModel.getAudios();
                                    if (audios3 != null) {
                                        british = audios3.getBritish();
                                    } else {
                                        british = null;
                                    }
                                    Intrinsics.checkNotNull(british);
                                    for (EnglishAudioModel englishAudioModel2 : british) {
                                        if (englishAudioModel2 != null) {
                                            filename = englishAudioModel2.getFilename();
                                        } else {
                                            filename = null;
                                        }
                                        if (filename == null) {
                                            englishSearchResultModel.setAudioOffline(true);
                                        }
                                    }
                                }
                            } else {
                                EnglishAudiosModel audios6 = englishSearchResultModel.getAudios();
                                if ((audios6 != null ? audios6.getAmerican() : null) != null) {
                                    audios = englishSearchResultModel.getAudios();
                                    if (audios == null) {
                                    }
                                    audios2 = englishSearchResultModel.getAudios();
                                    if (audios2 != null) {
                                        american = audios2.getAmerican();
                                    } else {
                                        american = null;
                                    }
                                    Intrinsics.checkNotNull(american);
                                    while (r5.hasNext()) {
                                        if (englishAudioModel != null) {
                                            filename2 = englishAudioModel.getFilename();
                                        } else {
                                            filename2 = null;
                                        }
                                        if (filename2 == null) {
                                            englishSearchResultModel.setAudioOffline(true);
                                        }
                                    }
                                    audios3 = englishSearchResultModel.getAudios();
                                    if (audios3 != null) {
                                        british = audios3.getBritish();
                                    } else {
                                        british = null;
                                    }
                                    Intrinsics.checkNotNull(british);
                                    while (r5.hasNext()) {
                                        if (englishAudioModel2 != null) {
                                            filename = englishAudioModel2.getFilename();
                                        } else {
                                            filename = null;
                                        }
                                        if (filename == null) {
                                            englishSearchResultModel.setAudioOffline(true);
                                        }
                                    }
                                } else {
                                    englishSearchResultModel.setAudioOffline(true);
                                }
                            }
                            z = true;
                        }
                        EnglishMeaningModel englishMeaningModel = new EnglishMeaningModel(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
                        Integer numValueOf = cursorSafeRawQuery.isNull(17) ? null : Integer.valueOf(cursorSafeRawQuery.getInt(17));
                        englishMeaningModel.setHasImage(Boolean.valueOf((numValueOf != null && numValueOf.intValue() == 1) ? 1 : i));
                        englishMeaningModel.setDetailId(cursorSafeRawQuery.isNull(6) ? null : Integer.valueOf(cursorSafeRawQuery.getInt(6)));
                        englishMeaningModel.setMeaning(cursorSafeRawQuery.isNull(7) ? null : cursorSafeRawQuery.getString(7));
                        Integer detailId = englishMeaningModel.getDetailId();
                        if (detailId != null) {
                            int iIntValue = detailId.intValue();
                            englishMeaningModel.setPos(getPos(type, iIntValue));
                            englishMeaningModel.setSentenses(getSentences(type, iIntValue));
                            englishMeaningModel.setCategories(getCategories(type, iIntValue));
                        }
                        englishMeaningModel.setCountableUncountable(cursorSafeRawQuery.isNull(8) ? null : Integer.valueOf(cursorSafeRawQuery.getInt(8)));
                        englishMeaningModel.setFormalInformal(cursorSafeRawQuery.isNull(9) ? null : Integer.valueOf(cursorSafeRawQuery.getInt(9)));
                        englishMeaningModel.setBritishAmerican(cursorSafeRawQuery.isNull(10) ? null : Integer.valueOf(cursorSafeRawQuery.getInt(10)));
                        englishMeaningModel.setCefr(cursorSafeRawQuery.isNull(11) ? null : cursorSafeRawQuery.getString(11));
                        englishMeaningModel.setDescriptionHtml(cursorSafeRawQuery.isNull(18) ? null : cursorSafeRawQuery.getString(18));
                        arrayList.add(englishMeaningModel);
                        if (!cursorSafeRawQuery.moveToNext()) {
                            break;
                        }
                        i = i;
                        i3 = 5;
                        i5 = 3;
                    }
                }
                cursorSafeRawQuery.close();
            }
            englishSearchResultModel.setMeanings(arrayList);
            searchResultModel.setEnglishSearchResultModel(englishSearchResultModel);
        } else {
            int i6 = 0;
            if (type == FDLanguageWord.LanguageType.Persian) {
                Cursor cursorSafeRawQuery2 = safeRawQuery("SELECT w.persian_word as persian_word, w.persian_word_id as persian_word_id, w.`word_description_html` as word_description_html, d.english_meaning as english_meaning, COALESCE(d.persian_phonetic, '') as persian_phonetic, COALESCE(d.persian_meaning, '') as persian_meaning, d.persian_detail_id as persian_detail_id, d.has_image as has_image FROM persian_words w LEFT JOIN persian_details d ON w.persian_word_id = d.persian_word_id WHERE w.persian_word_id = ? ORDER BY d.position, d.persian_detail_id", new String[]{String.valueOf(wordId)});
                ArrayList arrayList2 = new ArrayList();
                PersianSearchResultModel persianSearchResultModel = new PersianSearchResultModel();
                ArrayList arrayList3 = new ArrayList();
                if (cursorSafeRawQuery2 != null) {
                    if (cursorSafeRawQuery2.moveToFirst()) {
                        boolean z2 = false;
                        while (true) {
                            PersianWordDetail persianWordDetail = new PersianWordDetail();
                            String string = cursorSafeRawQuery2.isNull(4) ? null : cursorSafeRawQuery2.getString(4);
                            if (!arrayList2.contains(string)) {
                                if (!z2) {
                                    int i7 = i6;
                                    persianSearchResultModel.setWord(cursorSafeRawQuery2.isNull(i7) ? null : cursorSafeRawQuery2.getString(i7));
                                    persianSearchResultModel.setWordId(cursorSafeRawQuery2.isNull(1) ? null : Integer.valueOf(cursorSafeRawQuery2.getInt(1)));
                                    persianSearchResultModel.setWordDescriptionHtml(cursorSafeRawQuery2.isNull(i4) ? null : cursorSafeRawQuery2.getString(i4));
                                    FDLanguageWord.LanguageType languageType = FDLanguageWord.LanguageType.Persian;
                                    Integer wordId5 = persianSearchResultModel.getWordId();
                                    Intrinsics.checkNotNull(wordId5);
                                    persianSearchResultModel.setPersianSynonymsAntonyms(getSynonymsAntonyms(languageType, wordId5.intValue()));
                                }
                                z2 = true;
                            }
                            Integer numValueOf2 = cursorSafeRawQuery2.isNull(7) ? null : Integer.valueOf(cursorSafeRawQuery2.getInt(7));
                            persianWordDetail.setHasImage(Boolean.valueOf(numValueOf2 != null && numValueOf2.intValue() == 1));
                            persianWordDetail.setDetailId(cursorSafeRawQuery2.isNull(i2) ? null : Integer.valueOf(cursorSafeRawQuery2.getInt(i2)));
                            persianWordDetail.setPhonetics(FDLanguageWord.INSTANCE.replaceNumbers(string));
                            FDLanguageWord.LanguageType languageType2 = FDLanguageWord.LanguageType.Persian;
                            Integer detailId2 = persianWordDetail.getDetailId();
                            Intrinsics.checkNotNull(detailId2);
                            persianWordDetail.setPos(getPos(languageType2, detailId2.intValue()));
                            persianWordDetail.setPersianMeanings(cursorSafeRawQuery2.isNull(5) ? null : cursorSafeRawQuery2.getString(5));
                            persianWordDetail.setMeaning(cursorSafeRawQuery2.isNull(3) ? null : cursorSafeRawQuery2.getString(3));
                            Integer detailId3 = persianWordDetail.getDetailId();
                            Intrinsics.checkNotNull(detailId3);
                            persianWordDetail.setSentenses(getSentences(type, detailId3.intValue()));
                            Integer detailId4 = persianWordDetail.getDetailId();
                            Intrinsics.checkNotNull(detailId4);
                            persianWordDetail.setCategories(getCategories(type, detailId4.intValue()));
                            arrayList3.add(persianWordDetail);
                            try {
                                String str = string;
                                if (str == null || str.length() == 0) {
                                    string = "";
                                }
                                arrayList2.add(string);
                            } catch (Exception unused) {
                            }
                            if (!cursorSafeRawQuery2.moveToNext()) {
                                break;
                            }
                            i2 = 6;
                            i4 = 2;
                            i6 = 0;
                        }
                    }
                    cursorSafeRawQuery2.close();
                }
                searchResultModel.setPersianSearchResultModel(persianSearchResultModel);
                PersianSearchResultModel persianSearchResultModel2 = searchResultModel.getPersianSearchResultModel();
                if (persianSearchResultModel2 != null) {
                    persianSearchResultModel2.setWordDetails(arrayList3);
                }
            }
        }
        this.logger.debug("===== Finished GetDetailByWord = " + wordId, new Object[0]);
        return searchResultModel;
    }

    /* JADX WARN: Code duplicated, block: B:197:0x0211 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x01fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:202:0x023e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:204:0x0228 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:48:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:51:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:52:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:56:0x0201  */
    /* JADX WARN: Code duplicated, block: B:58:0x0209  */
    /* JADX WARN: Code duplicated, block: B:59:0x020e  */
    /* JADX WARN: Code duplicated, block: B:64:0x021b  */
    /* JADX WARN: Code duplicated, block: B:65:0x0220  */
    /* JADX WARN: Code duplicated, block: B:69:0x022e  */
    /* JADX WARN: Code duplicated, block: B:71:0x0236  */
    /* JADX WARN: Code duplicated, block: B:72:0x023b  */
    public final SearchResultModel getDetailByWordGetOtherFormOfWord(FDLanguageWord.LanguageType type, String word) {
        EnglishAudiosModel audios;
        EnglishAudiosModel audios2;
        List<EnglishAudioModel> american;
        EnglishAudiosModel audios3;
        List<EnglishAudioModel> british;
        String filename;
        String filename2;
        List<EnglishAudioModel> british2;
        EnglishAudiosModel audios4;
        List<EnglishAudioModel> american2;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(word, "word");
        this.logger.debug("===== Start getDetailByWordGetOtherFormOfWord = " + word, new Object[0]);
        if (word.length() < 100) {
            String str = word;
            if (StringsKt.trim((CharSequence) str).toString().length() != 0) {
                SearchResultModel searchResultModel = new SearchResultModel(null, null, null, null, 15, null);
                if (!this.databaseHelper.checkDataBase()) {
                    return searchResultModel;
                }
                int i = 6;
                int i2 = 5;
                int i3 = 2;
                int i4 = 3;
                if (type == FDLanguageWord.LanguageType.English) {
                    EnglishSearchResultModel englishSearchResultModel = new EnglishSearchResultModel(null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, false, null, null, 524287, null);
                    ArrayList arrayList = new ArrayList();
                    String lowerCase = StringsKt.trim((CharSequence) str).toString().toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    Cursor cursorSafeRawQuery = safeRawQuery("SELECT w.english_word as english_word, w.english_word_id as english_word_id, w.simple_past as simple_past, w.past_participle as past_participle, w.infinitive as infinitive, w.`word_description_html` as word_description_html, d.english_detail_id as english_detail_id, COALESCE(d.persian_meaning, '') as pe_meaning, d.countable_uncountable as countable_uncountable, d.formal_informal as formal_informal, d.british_american as british_american, d.cefr as cefr, w.third_person_singular as third_person_singular, w.present_participle as present_participle, w.plural as plural, w.comparative as comparative, w.superlative as superlative, d.has_image as has_image, d.description_html as description_html  FROM english_words w LEFT JOIN english_details d ON w.english_word_id = d.english_word_id WHERE w.english_word = ? ORDER BY d.position, d.english_detail_id", new String[]{lowerCase});
                    if (cursorSafeRawQuery != null) {
                        if (cursorSafeRawQuery.moveToFirst()) {
                            boolean z = false;
                            while (true) {
                                if (!z) {
                                    englishSearchResultModel.setWord(cursorSafeRawQuery.isNull(0) ? null : cursorSafeRawQuery.getString(0));
                                    englishSearchResultModel.setWordId(cursorSafeRawQuery.isNull(1) ? null : Integer.valueOf(cursorSafeRawQuery.getInt(1)));
                                    englishSearchResultModel.setPastParticiple(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(i4)));
                                    englishSearchResultModel.setSimplePast(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(2)));
                                    englishSearchResultModel.setInfinitive(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(4)));
                                    englishSearchResultModel.setThirdPersonSingular(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(12)));
                                    englishSearchResultModel.setPresentParticiple(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(13)));
                                    englishSearchResultModel.setPlural(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(14)));
                                    englishSearchResultModel.setComparative(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(15)));
                                    englishSearchResultModel.setSuperlative(getWordById(FDLanguageWord.LanguageType.English, cursorSafeRawQuery.getInt(16)));
                                    englishSearchResultModel.setWordDescriptionHtml(cursorSafeRawQuery.getString(i2));
                                    Integer wordId = englishSearchResultModel.getWordId();
                                    Intrinsics.checkNotNull(wordId);
                                    englishSearchResultModel.setAudios(getAudios(wordId.intValue()));
                                    Integer wordId2 = englishSearchResultModel.getWordId();
                                    Intrinsics.checkNotNull(wordId2);
                                    englishSearchResultModel.setEnglishSynonymsAntonyms(getEnglishSynonymsAntonyms(wordId2.intValue()));
                                    Integer wordId3 = englishSearchResultModel.getWordId();
                                    Intrinsics.checkNotNull(wordId3);
                                    englishSearchResultModel.setIdioms(getEnglishPOSs(wordId3.intValue()));
                                    String word2 = englishSearchResultModel.getWord();
                                    Intrinsics.checkNotNull(word2);
                                    englishSearchResultModel.setWordFamily(getWordFamily(word2));
                                    EnglishAudiosModel audios5 = englishSearchResultModel.getAudios();
                                    if ((audios5 != null ? audios5.getBritish() : null) != null) {
                                        audios = englishSearchResultModel.getAudios();
                                        if (audios == null && (british2 = audios.getBritish()) != null && british2.isEmpty() && (audios4 = englishSearchResultModel.getAudios()) != null && (american2 = audios4.getAmerican()) != null && american2.isEmpty()) {
                                            englishSearchResultModel.setAudioOffline(true);
                                        } else {
                                            audios2 = englishSearchResultModel.getAudios();
                                            if (audios2 != null) {
                                                american = audios2.getAmerican();
                                            } else {
                                                american = null;
                                            }
                                            Intrinsics.checkNotNull(american);
                                            for (EnglishAudioModel englishAudioModel : american) {
                                                if (englishAudioModel != null) {
                                                    filename2 = englishAudioModel.getFilename();
                                                } else {
                                                    filename2 = null;
                                                }
                                                if (filename2 == null) {
                                                    englishSearchResultModel.setAudioOffline(true);
                                                }
                                            }
                                            audios3 = englishSearchResultModel.getAudios();
                                            if (audios3 != null) {
                                                british = audios3.getBritish();
                                            } else {
                                                british = null;
                                            }
                                            Intrinsics.checkNotNull(british);
                                            for (EnglishAudioModel englishAudioModel2 : british) {
                                                if (englishAudioModel2 != null) {
                                                    filename = englishAudioModel2.getFilename();
                                                } else {
                                                    filename = null;
                                                }
                                                if (filename == null) {
                                                    englishSearchResultModel.setAudioOffline(true);
                                                }
                                            }
                                        }
                                    } else {
                                        EnglishAudiosModel audios6 = englishSearchResultModel.getAudios();
                                        if ((audios6 != null ? audios6.getAmerican() : null) != null) {
                                            audios = englishSearchResultModel.getAudios();
                                            if (audios == null) {
                                            }
                                            audios2 = englishSearchResultModel.getAudios();
                                            if (audios2 != null) {
                                                american = audios2.getAmerican();
                                            } else {
                                                american = null;
                                            }
                                            Intrinsics.checkNotNull(american);
                                            while (r12.hasNext()) {
                                                if (englishAudioModel != null) {
                                                    filename2 = englishAudioModel.getFilename();
                                                } else {
                                                    filename2 = null;
                                                }
                                                if (filename2 == null) {
                                                    englishSearchResultModel.setAudioOffline(true);
                                                }
                                            }
                                            audios3 = englishSearchResultModel.getAudios();
                                            if (audios3 != null) {
                                                british = audios3.getBritish();
                                            } else {
                                                british = null;
                                            }
                                            Intrinsics.checkNotNull(british);
                                            while (r12.hasNext()) {
                                                if (englishAudioModel2 != null) {
                                                    filename = englishAudioModel2.getFilename();
                                                } else {
                                                    filename = null;
                                                }
                                                if (filename == null) {
                                                    englishSearchResultModel.setAudioOffline(true);
                                                }
                                            }
                                        } else {
                                            englishSearchResultModel.setAudioOffline(true);
                                        }
                                    }
                                    z = true;
                                }
                                EnglishMeaningModel englishMeaningModel = new EnglishMeaningModel(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
                                Integer numValueOf = cursorSafeRawQuery.isNull(17) ? null : Integer.valueOf(cursorSafeRawQuery.getInt(17));
                                englishMeaningModel.setHasImage(Boolean.valueOf(numValueOf != null && numValueOf.intValue() == 1));
                                englishMeaningModel.setDetailId(cursorSafeRawQuery.isNull(6) ? null : Integer.valueOf(cursorSafeRawQuery.getInt(6)));
                                englishMeaningModel.setMeaning(cursorSafeRawQuery.isNull(7) ? null : cursorSafeRawQuery.getString(7));
                                englishMeaningModel.setCountableUncountable(cursorSafeRawQuery.isNull(8) ? null : Integer.valueOf(cursorSafeRawQuery.getInt(8)));
                                englishMeaningModel.setFormalInformal(cursorSafeRawQuery.isNull(9) ? null : Integer.valueOf(cursorSafeRawQuery.getInt(9)));
                                englishMeaningModel.setBritishAmerican(cursorSafeRawQuery.isNull(10) ? null : Integer.valueOf(cursorSafeRawQuery.getInt(10)));
                                englishMeaningModel.setCefr(cursorSafeRawQuery.isNull(11) ? null : cursorSafeRawQuery.getString(11));
                                englishMeaningModel.setDescriptionHtml(cursorSafeRawQuery.isNull(18) ? null : cursorSafeRawQuery.getString(18));
                                Integer detailId = englishMeaningModel.getDetailId();
                                if (detailId != null) {
                                    int iIntValue = detailId.intValue();
                                    englishMeaningModel.setPos(getPos(type, iIntValue));
                                    englishMeaningModel.setSentenses(getSentences(type, iIntValue));
                                    englishMeaningModel.setCategories(getCategories(type, iIntValue));
                                }
                                arrayList.add(englishMeaningModel);
                                if (!cursorSafeRawQuery.moveToNext()) {
                                    break;
                                }
                                i2 = 5;
                                i4 = 3;
                            }
                        }
                        cursorSafeRawQuery.close();
                    }
                    englishSearchResultModel.setMeanings(arrayList);
                    searchResultModel.setEnglishSearchResultModel(englishSearchResultModel);
                } else if (type == FDLanguageWord.LanguageType.Persian) {
                    Cursor cursorSafeRawQuery2 = safeRawQuery("SELECT w.persian_word as persian_word, w.persian_word_id as persian_word_id, w.`word_description_html` as word_description_html, d.english_meaning as english_meaning, COALESCE(d.persian_phonetic, '') as persian_phonetic, COALESCE(d.persian_meaning, '') as persian_meaning, d.persian_detail_id as persian_detail_id, d.has_image as has_image FROM persian_words w LEFT JOIN persian_details d ON w.persian_word_id = d.persian_word_id WHERE w.persian_word = ? ORDER BY d.position, d.persian_detail_id", new String[]{word});
                    ArrayList arrayList2 = new ArrayList();
                    PersianSearchResultModel persianSearchResultModel = new PersianSearchResultModel();
                    ArrayList arrayList3 = new ArrayList();
                    if (cursorSafeRawQuery2 != null) {
                        if (cursorSafeRawQuery2.moveToFirst()) {
                            boolean z2 = false;
                            while (true) {
                                PersianWordDetail persianWordDetail = new PersianWordDetail();
                                String string = cursorSafeRawQuery2.isNull(4) ? null : cursorSafeRawQuery2.getString(4);
                                if (!arrayList2.contains(string)) {
                                    if (!z2) {
                                        persianSearchResultModel.setWord(cursorSafeRawQuery2.isNull(0) ? null : cursorSafeRawQuery2.getString(0));
                                        persianSearchResultModel.setWordId(cursorSafeRawQuery2.isNull(1) ? null : Integer.valueOf(cursorSafeRawQuery2.getInt(1)));
                                        persianSearchResultModel.setWordDescriptionHtml(cursorSafeRawQuery2.isNull(i3) ? null : cursorSafeRawQuery2.getString(i3));
                                        FDLanguageWord.LanguageType languageType = FDLanguageWord.LanguageType.Persian;
                                        Integer wordId4 = persianSearchResultModel.getWordId();
                                        Intrinsics.checkNotNull(wordId4);
                                        persianSearchResultModel.setPersianSynonymsAntonyms(getSynonymsAntonyms(languageType, wordId4.intValue()));
                                    }
                                    z2 = true;
                                }
                                Integer numValueOf2 = cursorSafeRawQuery2.isNull(7) ? null : Integer.valueOf(cursorSafeRawQuery2.getInt(7));
                                persianWordDetail.setHasImage(Boolean.valueOf(numValueOf2 != null && numValueOf2.intValue() == 1));
                                persianWordDetail.setDetailId(cursorSafeRawQuery2.isNull(i) ? null : Integer.valueOf(cursorSafeRawQuery2.getInt(i)));
                                persianWordDetail.setPhonetics(FDLanguageWord.INSTANCE.replaceNumbers(string));
                                FDLanguageWord.LanguageType languageType2 = FDLanguageWord.LanguageType.Persian;
                                Integer detailId2 = persianWordDetail.getDetailId();
                                Intrinsics.checkNotNull(detailId2);
                                persianWordDetail.setPos(getPos(languageType2, detailId2.intValue()));
                                persianWordDetail.setPersianMeanings(cursorSafeRawQuery2.isNull(5) ? null : cursorSafeRawQuery2.getString(5));
                                persianWordDetail.setMeaning(cursorSafeRawQuery2.isNull(3) ? null : cursorSafeRawQuery2.getString(3));
                                Integer detailId3 = persianWordDetail.getDetailId();
                                Intrinsics.checkNotNull(detailId3);
                                persianWordDetail.setSentenses(getSentences(type, detailId3.intValue()));
                                Integer detailId4 = persianWordDetail.getDetailId();
                                Intrinsics.checkNotNull(detailId4);
                                persianWordDetail.setCategories(getCategories(type, detailId4.intValue()));
                                arrayList3.add(persianWordDetail);
                                try {
                                    String str2 = string;
                                    if (str2 == null || str2.length() == 0) {
                                        string = "";
                                    }
                                    arrayList2.add(string);
                                } catch (Exception unused) {
                                }
                                if (!cursorSafeRawQuery2.moveToNext()) {
                                    break;
                                }
                                i = 6;
                                i3 = 2;
                            }
                        }
                        cursorSafeRawQuery2.close();
                    }
                    searchResultModel.setPersianSearchResultModel(persianSearchResultModel);
                    PersianSearchResultModel persianSearchResultModel2 = searchResultModel.getPersianSearchResultModel();
                    if (persianSearchResultModel2 != null) {
                        persianSearchResultModel2.setWordDetails(arrayList3);
                    }
                }
                this.logger.debug("===== Finished getDetailByWordGetOtherFormOfWord = " + word, new Object[0]);
                return searchResultModel;
            }
        }
        SearchResultModel searchResultModel2 = new SearchResultModel(null, null, null, null, 15, null);
        EnglishSearchResultModel englishSearchResultModel2 = new EnglishSearchResultModel(null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, false, null, null, 524287, null);
        englishSearchResultModel2.setAudioOffline(true);
        searchResultModel2.setEnglishSearchResultModel(englishSearchResultModel2);
        return searchResultModel2;
    }

    public final String getWordById(FDLanguageWord.LanguageType type, int wordId) {
        String str;
        Intrinsics.checkNotNullParameter(type, "type");
        if (wordId == 0 || !this.databaseHelper.checkDataBase()) {
            return "";
        }
        if (type == FDLanguageWord.LanguageType.English) {
            str = "SELECT english_word AS word FROM english_words WHERE english_word_id = " + wordId;
        } else {
            str = "SELECT persian_word AS word FROM persian_words WHERE persian_word_id = " + wordId;
        }
        Cursor cursorSafeRawQuery = safeRawQuery(str, null);
        if (cursorSafeRawQuery != null) {
            if (cursorSafeRawQuery.moveToFirst()) {
                String string = cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("word"));
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                return string;
            }
            cursorSafeRawQuery.close();
        }
        return "";
    }

    public final EnglishWordFamily getWordFamily(String word) {
        Cursor cursorRawQuery;
        Intrinsics.checkNotNullParameter(word, "word");
        EnglishWordFamily englishWordFamily = new EnglishWordFamily();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        SQLiteDatabase database = getDatabase();
        if (database != null && (cursorRawQuery = database.rawQuery("SELECT `word`, `pos` FROM english_word_families_words WHERE english_word_family_id = (SELECT english_word_family_id FROM english_word_families_words WHERE word = ? LIMIT 1)", new String[]{word})) != null) {
            if (cursorRawQuery.moveToFirst()) {
                do {
                    int i = cursorRawQuery.getInt(1);
                    String string = cursorRawQuery.getString(0);
                    if (i == 1) {
                        arrayList.add(string);
                    } else if (i == 5) {
                        arrayList4.add(string);
                    } else if (i == 6) {
                        arrayList5.add(string);
                    } else if (i == 7) {
                        arrayList3.add(string);
                    } else if (i == 8) {
                        arrayList2.add(string);
                    }
                } while (cursorRawQuery.moveToNext());
            }
            cursorRawQuery.close();
            if (arrayList.size() > 0) {
                englishWordFamily.setNoun(arrayList);
            }
            if (arrayList3.size() > 0) {
                englishWordFamily.setAdjective(arrayList3);
            }
            if (arrayList4.size() > 0) {
                englishWordFamily.setVerbTransitive(arrayList4);
            }
            if (arrayList5.size() > 0) {
                englishWordFamily.setVerbIntransitive(arrayList5);
            }
            if (arrayList2.size() > 0) {
                englishWordFamily.setAdverb(arrayList2);
            }
        }
        return englishWordFamily;
    }

    public final ArrayList<String> getWordMeanings(FDLanguageWord.LanguageType type, int wordId) {
        String str;
        Intrinsics.checkNotNullParameter(type, "type");
        ArrayList<String> arrayList = new ArrayList<>();
        if (type == FDLanguageWord.LanguageType.English) {
            str = "SELECT persian_meaning as meaning FROM english_details WHERE english_word_id = " + wordId + " ORDER BY position, english_detail_id";
        } else if (type != FDLanguageWord.LanguageType.Persian) {
            str = "";
        } else {
            str = "SELECT english_meaning as meaning FROM persian_details WHERE persian_word_id = " + wordId;
        }
        Cursor cursorSafeRawQuery = safeRawQuery(str, null);
        if (cursorSafeRawQuery != null) {
            if (cursorSafeRawQuery.moveToFirst()) {
                do {
                    arrayList.add(cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("meaning")));
                } while (cursorSafeRawQuery.moveToNext());
            }
            cursorSafeRawQuery.close();
        }
        return arrayList;
    }

    public final List<String> getCategories(FDLanguageWord.LanguageType type, int detailId) {
        String str;
        Cursor cursorRawQuery;
        Intrinsics.checkNotNullParameter(type, "type");
        ArrayList arrayList = new ArrayList();
        if (type == FDLanguageWord.LanguageType.English) {
            str = "SELECT category FROM english_categories WHERE english_detail_id = ?";
        } else if (type != FDLanguageWord.LanguageType.Persian) {
            str = "";
        } else {
            str = "SELECT category FROM persian_categories WHERE persian_detail_id = ?";
        }
        SQLiteDatabase database = getDatabase();
        if (database != null && (cursorRawQuery = database.rawQuery(str, new String[]{String.valueOf(detailId)})) != null) {
            FDCategory fDCategory = new FDCategory();
            if (cursorRawQuery.moveToFirst()) {
                do {
                    Integer numValueOf = cursorRawQuery.isNull(0) ? null : Integer.valueOf(cursorRawQuery.getInt(0));
                    if (numValueOf != null) {
                        arrayList.add(fDCategory.find(numValueOf));
                    }
                } while (cursorRawQuery.moveToNext());
                cursorRawQuery.close();
            }
        }
        return arrayList;
    }

    public final List<WordCategoryNameDto> getAllCategories() {
        ArrayList arrayList = new ArrayList();
        if (!this.databaseHelper.checkDataBase()) {
            return CollectionsKt.emptyList();
        }
        Cursor cursorSafeRawQuery = safeRawQuery("SELECT * FROM category_names WHERE is_my_words == 1", null);
        if (cursorSafeRawQuery == null) {
            return arrayList;
        }
        if (cursorSafeRawQuery.moveToFirst()) {
            this.logger.debug("\n------------------ Categories -------------------\n", new Object[0]);
            do {
                try {
                    WordCategoryNameDto wordCategoryNameDto = new WordCategoryNameDto(0, null, null, 7, null);
                    wordCategoryNameDto.setId(cursorSafeRawQuery.getInt(cursorSafeRawQuery.getColumnIndex("id")));
                    wordCategoryNameDto.setPersianCategoryName(cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("persian_category_name")));
                    wordCategoryNameDto.setEnglishCategoryName(cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("english_category_name")));
                    arrayList.add(wordCategoryNameDto);
                    this.logger.debug(wordCategoryNameDto.getId() + "|" + wordCategoryNameDto.getPersianCategoryName() + "|" + wordCategoryNameDto.getEnglishCategoryName(), new Object[0]);
                } catch (Exception unused) {
                }
            } while (cursorSafeRawQuery.moveToNext());
            this.logger.debug("\n------------------------------------------------\n", new Object[0]);
        }
        cursorSafeRawQuery.close();
        return arrayList;
    }

    public final List<Integer> getAllCategoryIds() {
        ArrayList arrayList = new ArrayList();
        if (!this.databaseHelper.checkDataBase()) {
            return CollectionsKt.emptyList();
        }
        Cursor cursorSafeRawQuery = safeRawQuery("SELECT id FROM category_names WHERE is_my_words == 1", null);
        if (cursorSafeRawQuery == null) {
            return arrayList;
        }
        if (cursorSafeRawQuery.moveToFirst()) {
            do {
                try {
                    int columnIndex = cursorSafeRawQuery.getColumnIndex("id");
                    if (columnIndex > -1) {
                        arrayList.add(Integer.valueOf(cursorSafeRawQuery.getInt(columnIndex)));
                    }
                } catch (Exception unused) {
                }
            } while (cursorSafeRawQuery.moveToNext());
        }
        cursorSafeRawQuery.close();
        return arrayList;
    }

    public final int getCategoryCount() {
        Cursor cursorSafeRawQuery;
        if (!this.databaseHelper.checkDataBase() || (cursorSafeRawQuery = safeRawQuery("SELECT COUNT(*) FROM category_names WHERE is_my_words == 1", null)) == null) {
            return 0;
        }
        int i = cursorSafeRawQuery.moveToFirst() ? cursorSafeRawQuery.getInt(0) : 0;
        cursorSafeRawQuery.close();
        return i + 1;
    }

    public final WordCategoryNameDto findCategoryById(Integer categoryId) {
        Cursor cursorSafeRawQuery;
        if (categoryId == null) {
            return null;
        }
        WordCategoryNameDto wordCategoryNameDto = new WordCategoryNameDto(0, null, null, 7, null);
        if (!this.databaseHelper.checkDataBase() || (cursorSafeRawQuery = safeRawQuery("SELECT * FROM category_names WHERE id = ?", new String[]{String.valueOf(categoryId.intValue())})) == null) {
            return null;
        }
        if (cursorSafeRawQuery.moveToFirst()) {
            this.logger.debug("\n------------------ Categories -------------------\n", new Object[0]);
            do {
                try {
                    int columnIndex = cursorSafeRawQuery.getColumnIndex("id");
                    if (columnIndex > -1) {
                        wordCategoryNameDto.setId(cursorSafeRawQuery.getInt(columnIndex));
                    }
                    int columnIndex2 = cursorSafeRawQuery.getColumnIndex("persian_category_name");
                    if (columnIndex2 > -1) {
                        wordCategoryNameDto.setPersianCategoryName(cursorSafeRawQuery.getString(columnIndex2));
                    }
                    int columnIndex3 = cursorSafeRawQuery.getColumnIndex("english_category_name");
                    if (columnIndex3 > -1) {
                        wordCategoryNameDto.setEnglishCategoryName(cursorSafeRawQuery.getString(columnIndex3));
                    }
                    this.logger.debug(wordCategoryNameDto.getId() + "|" + wordCategoryNameDto.getPersianCategoryName() + "|" + wordCategoryNameDto.getEnglishCategoryName(), new Object[0]);
                } catch (Exception unused) {
                }
            } while (cursorSafeRawQuery.moveToNext());
            this.logger.debug("\n------------------------------------------------\n", new Object[0]);
        }
        cursorSafeRawQuery.close();
        return wordCategoryNameDto;
    }

    public final String getCategoryNameById(Integer categoryId, boolean isCurrentLanguagePersian) {
        WordCategoryNameDto wordCategoryNameDtoFindCategoryById;
        String str;
        String englishCategoryName;
        if (categoryId == null || (wordCategoryNameDtoFindCategoryById = findCategoryById(categoryId)) == null) {
            return null;
        }
        if (isCurrentLanguagePersian) {
            List<Integer> list = ignoreMultiNames;
            if ((list instanceof Collection) && list.isEmpty()) {
                englishCategoryName = wordCategoryNameDtoFindCategoryById.getEnglishCategoryName();
                str = englishCategoryName == null ? "" : "";
            } else {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        englishCategoryName = wordCategoryNameDtoFindCategoryById.getEnglishCategoryName();
                        if (englishCategoryName == null && englishCategoryName.length() != 0) {
                            str = " - " + wordCategoryNameDtoFindCategoryById.getEnglishCategoryName();
                        }
                    } else if (((Number) it.next()).intValue() == wordCategoryNameDtoFindCategoryById.getId()) {
                    }
                }
            }
            return wordCategoryNameDtoFindCategoryById.getPersianCategoryName() + str;
        }
        return wordCategoryNameDtoFindCategoryById.getEnglishCategoryName();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0079  */
    /* JADX WARN: Code duplicated, block: B:27:0x0082  */
    /* JADX WARN: Code duplicated, block: B:28:0x00b1  */
    public final List<WordCategoryModel> getCategoryAndPosList(boolean isCurrentLanguagePersian) {
        String str;
        String str2;
        String englishCategoryName;
        String englishCategoryName2;
        ArrayList arrayList = new ArrayList();
        Iterator<WordCategoryNameDto> it = getAllCategories().iterator();
        while (true) {
            String string = null;
            if (!it.hasNext()) {
                break;
            }
            WordCategoryNameDto next = it.next();
            if (isCurrentLanguagePersian) {
                StringBuilder sb = new StringBuilder();
                sb.append(next.getPersianCategoryName());
                List<Integer> list = ignoreMultiNames;
                if ((list instanceof Collection) && list.isEmpty()) {
                    englishCategoryName = next.getEnglishCategoryName();
                    if (englishCategoryName != null) {
                        englishCategoryName2 = next.getEnglishCategoryName();
                        if (englishCategoryName2 != null) {
                            if (englishCategoryName2.length() > 0) {
                                StringBuilder sb2 = new StringBuilder();
                                String strValueOf = String.valueOf(englishCategoryName2.charAt(0));
                                Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
                                String upperCase = strValueOf.toUpperCase(Locale.ROOT);
                                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                                StringBuilder sbAppend = sb2.append((Object) upperCase);
                                String strSubstring = englishCategoryName2.substring(1);
                                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                                string = sbAppend.append(strSubstring).toString();
                            } else {
                                string = englishCategoryName2;
                            }
                        }
                        sb.append(" - " + string);
                    }
                } else {
                    Iterator<T> it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            englishCategoryName = next.getEnglishCategoryName();
                            if (englishCategoryName != null && !StringsKt.isBlank(englishCategoryName)) {
                                englishCategoryName2 = next.getEnglishCategoryName();
                                if (englishCategoryName2 != null) {
                                    if (englishCategoryName2.length() > 0) {
                                        StringBuilder sb3 = new StringBuilder();
                                        String strValueOf2 = String.valueOf(englishCategoryName2.charAt(0));
                                        Intrinsics.checkNotNull(strValueOf2, "null cannot be cast to non-null type java.lang.String");
                                        String upperCase2 = strValueOf2.toUpperCase(Locale.ROOT);
                                        Intrinsics.checkNotNullExpressionValue(upperCase2, "toUpperCase(...)");
                                        StringBuilder sbAppend2 = sb3.append((Object) upperCase2);
                                        String strSubstring2 = englishCategoryName2.substring(1);
                                        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                                        string = sbAppend2.append(strSubstring2).toString();
                                    } else {
                                        string = englishCategoryName2;
                                    }
                                }
                                sb.append(" - " + string);
                            }
                        } else if (((Number) it2.next()).intValue() == next.getId()) {
                        }
                    }
                }
                string = sb.toString();
            } else {
                String englishCategoryName3 = next.getEnglishCategoryName();
                if (englishCategoryName3 != null) {
                    if (englishCategoryName3.length() > 0) {
                        StringBuilder sb4 = new StringBuilder();
                        String strValueOf3 = String.valueOf(englishCategoryName3.charAt(0));
                        Intrinsics.checkNotNull(strValueOf3, "null cannot be cast to non-null type java.lang.String");
                        String upperCase3 = strValueOf3.toUpperCase(Locale.ROOT);
                        Intrinsics.checkNotNullExpressionValue(upperCase3, "toUpperCase(...)");
                        StringBuilder sbAppend3 = sb4.append((Object) upperCase3);
                        String strSubstring3 = englishCategoryName3.substring(1);
                        Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
                        string = sbAppend3.append(strSubstring3).toString();
                    } else {
                        str2 = englishCategoryName3;
                    }
                }
                arrayList.add(new WordCategoryModel(0, str2, ApsMetricsDataMap.APSMETRICS_FIELD_CUSTOM + next.getId(), Integer.valueOf(next.getId()), null, false, false, false, false, 400, null));
            }
            str2 = string;
            arrayList.add(new WordCategoryModel(0, str2, ApsMetricsDataMap.APSMETRICS_FIELD_CUSTOM + next.getId(), Integer.valueOf(next.getId()), null, false, false, false, false, 400, null));
        }
        Iterator it3 = CollectionsKt.listOf((Object[]) new Integer[]{20, 18, 19, 24}).iterator();
        while (it3.hasNext()) {
            int iIntValue = ((Number) it3.next()).intValue();
            PosModel posModel = (PosModel) CollectionsKt.firstOrNull((List) getPos(FDLanguageWord.LanguageType.Persian, iIntValue));
            String pos = posModel != null ? posModel.getPos() : null;
            PosModel posModel2 = (PosModel) CollectionsKt.firstOrNull((List) getPos(FDLanguageWord.LanguageType.English, iIntValue));
            String pos2 = posModel2 != null ? posModel2.getPos() : null;
            if (isCurrentLanguagePersian) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append(pos);
                String str3 = pos2;
                if (str3 != null && !StringsKt.isBlank(str3)) {
                    if (str3.length() > 0) {
                        StringBuilder sb6 = new StringBuilder();
                        String strValueOf4 = String.valueOf(pos2.charAt(0));
                        Intrinsics.checkNotNull(strValueOf4, "null cannot be cast to non-null type java.lang.String");
                        String upperCase4 = strValueOf4.toUpperCase(Locale.ROOT);
                        Intrinsics.checkNotNullExpressionValue(upperCase4, "toUpperCase(...)");
                        StringBuilder sbAppend4 = sb6.append((Object) upperCase4);
                        String strSubstring4 = pos2.substring(1);
                        Intrinsics.checkNotNullExpressionValue(strSubstring4, "substring(...)");
                        pos2 = sbAppend4.append(strSubstring4).toString();
                    }
                    sb5.append(" - " + pos2);
                }
                pos2 = sb5.toString();
            } else {
                if (pos2 == null) {
                    str = null;
                } else if (pos2.length() > 0) {
                    StringBuilder sb7 = new StringBuilder();
                    String strValueOf5 = String.valueOf(pos2.charAt(0));
                    Intrinsics.checkNotNull(strValueOf5, "null cannot be cast to non-null type java.lang.String");
                    String upperCase5 = strValueOf5.toUpperCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(upperCase5, "toUpperCase(...)");
                    StringBuilder sbAppend5 = sb7.append((Object) upperCase5);
                    String strSubstring5 = pos2.substring(1);
                    Intrinsics.checkNotNullExpressionValue(strSubstring5, "substring(...)");
                    pos2 = sbAppend5.append(strSubstring5).toString();
                }
                arrayList.add(new WordCategoryModel(0, str, "p" + iIntValue, Integer.valueOf(iIntValue), null, false, true, false, false, 400, null));
            }
            str = pos2;
            arrayList.add(new WordCategoryModel(0, str, "p" + iIntValue, Integer.valueOf(iIntValue), null, false, true, false, false, 400, null));
        }
        return arrayList;
    }

    public final List<WordCategoryModel> getCefrLevelCounts(List<FDWordCategory.CefrLabel> labels) throws IOException {
        Object next;
        Intrinsics.checkNotNullParameter(labels, "labels");
        ArrayList arrayList = new ArrayList();
        Cursor cursorSafeRawQuery = safeRawQuery("SELECT \n    d.cefr,\n    COUNT(DISTINCT w.english_word_id) AS word_count\nFROM english_words w\nLEFT JOIN english_details d ON w.english_word_id = d.english_word_id\nWHERE d.cefr IS NOT NULL AND d.cefr != ''\nGROUP BY d.cefr\nORDER BY \n    CASE d.cefr\n        WHEN 'A1' THEN 1\n        WHEN 'A2' THEN 2\n        WHEN 'B1' THEN 3\n        WHEN 'B2' THEN 4\n        WHEN 'C1' THEN 5\n        WHEN 'C2' THEN 6\n        ELSE 7\n    END;", null);
        if (cursorSafeRawQuery == null) {
            return arrayList;
        }
        Cursor cursor = cursorSafeRawQuery;
        try {
            Cursor cursor2 = cursor;
            while (cursor2.moveToNext()) {
                String string = cursor2.getString(0);
                if (string == null) {
                    string = "";
                }
                String str = string;
                int i = cursor2.getInt(1);
                Iterator<T> it = labels.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.areEqual(((FDWordCategory.CefrLabel) next).getId(), str));
                FDWordCategory.CefrLabel cefrLabel = (FDWordCategory.CefrLabel) next;
                arrayList.add(new WordCategoryModel(Integer.valueOf(i), cefrLabel != null ? cefrLabel.getLabel() : null, "c60", null, str, false, false, true, false, CropImageOptionsKt.DEGREES_360, null));
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(cursor, null);
            return arrayList;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(cursor, th);
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:88:0x0165  */
    public final EnglishAudiosModel getAudios(int wordId) {
        boolean z;
        String string;
        String string2;
        String str = null;
        EnglishAudiosModel englishAudiosModel = new EnglishAudiosModel(null, null, 3, null);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (this.databaseHelper.checkDataBase()) {
            try {
                Cursor cursorSafeRawQuery = safeRawQuery("SELECT filename, phonetic FROM english_american_audios WHERE english_word_id = " + wordId, null);
                if (cursorSafeRawQuery != null) {
                    if (cursorSafeRawQuery.getCount() <= 0 || !cursorSafeRawQuery.moveToFirst()) {
                        z = true;
                    } else {
                        while (true) {
                            try {
                                int columnIndex = cursorSafeRawQuery.getColumnIndex("filename");
                                String string3 = cursorSafeRawQuery.isNull(columnIndex) ? str : cursorSafeRawQuery.getString(columnIndex);
                                z = true;
                                try {
                                    int columnIndex2 = cursorSafeRawQuery.getColumnIndex("phonetic");
                                    String string4 = cursorSafeRawQuery.isNull(columnIndex2) ? str : cursorSafeRawQuery.getString(columnIndex2);
                                    if (string3 != null) {
                                        String strReplace = new Regex("[^\\p{Print}\\s]").replace(string3, "");
                                        if (strReplace != null) {
                                            String str2 = strReplace;
                                            int length = str2.length() - 1;
                                            int i = 0;
                                            boolean z2 = false;
                                            while (i <= length) {
                                                boolean z3 = str2.charAt(!z2 ? i : length) <= ' ';
                                                if (z2) {
                                                    if (!z3) {
                                                        break;
                                                    }
                                                    length--;
                                                } else if (z3) {
                                                    i++;
                                                } else {
                                                    z2 = true;
                                                }
                                            }
                                            string2 = str2.subSequence(i, length + 1).toString();
                                        } else {
                                            string2 = null;
                                        }
                                    } else {
                                        string2 = null;
                                    }
                                    EnglishAudioModel englishAudioModel = new EnglishAudioModel(null, null, 3, null);
                                    englishAudioModel.setFilename(string2);
                                    englishAudioModel.setPhonetic(string4);
                                    arrayList.add(englishAudioModel);
                                } catch (Exception unused) {
                                }
                            } catch (Exception unused2) {
                                z = true;
                            }
                            if (!cursorSafeRawQuery.moveToNext()) {
                                break;
                            }
                            str = null;
                        }
                    }
                    cursorSafeRawQuery.close();
                    Cursor cursorSafeRawQuery2 = safeRawQuery("SELECT filename, phonetic FROM english_british_audios WHERE english_word_id = " + wordId, null);
                    if (cursorSafeRawQuery2 != null) {
                        if (cursorSafeRawQuery2.getCount() > 0 && cursorSafeRawQuery2.moveToFirst()) {
                            do {
                                try {
                                    int columnIndex3 = cursorSafeRawQuery2.getColumnIndex("filename");
                                    String string5 = cursorSafeRawQuery2.isNull(columnIndex3) ? null : cursorSafeRawQuery2.getString(columnIndex3);
                                    int columnIndex4 = cursorSafeRawQuery2.getColumnIndex("phonetic");
                                    String string6 = cursorSafeRawQuery2.isNull(columnIndex4) ? null : cursorSafeRawQuery2.getString(columnIndex4);
                                    if (string5 != null) {
                                        String strReplace2 = new Regex("[^\\p{Print}\\s]").replace(string5, "");
                                        if (strReplace2 != null) {
                                            String str3 = strReplace2;
                                            int length2 = str3.length() - 1;
                                            int i2 = 0;
                                            boolean z4 = false;
                                            while (i2 <= length2) {
                                                boolean z5 = str3.charAt(!z4 ? i2 : length2) <= ' ' ? z : false;
                                                if (z4) {
                                                    if (!z5) {
                                                        break;
                                                    }
                                                    length2--;
                                                } else if (z5) {
                                                    i2++;
                                                } else {
                                                    z4 = z;
                                                }
                                            }
                                            string = str3.subSequence(i2, length2 + 1).toString();
                                        } else {
                                            string = null;
                                        }
                                    } else {
                                        string = null;
                                    }
                                    try {
                                        EnglishAudioModel englishAudioModel2 = new EnglishAudioModel(null, null, 3, null);
                                        englishAudioModel2.setFilename(string);
                                        englishAudioModel2.setPhonetic(string6);
                                        arrayList2.add(englishAudioModel2);
                                    } catch (Exception e) {
                                        e = e;
                                        System.out.println(e);
                                    }
                                } catch (Exception e2) {
                                    e = e2;
                                }
                            } while (cursorSafeRawQuery2.moveToNext());
                        }
                        cursorSafeRawQuery2.close();
                        englishAudiosModel.setAmerican(arrayList);
                        englishAudiosModel.setBritish(arrayList2);
                        return englishAudiosModel;
                    }
                }
            } catch (Exception e3) {
                this.logger.error("~~~> SQLiteException: " + e3.getMessage(), new Object[0]);
                e3.printStackTrace();
                FirebaseCrashlytics.getInstance().recordException(e3);
                return englishAudiosModel;
            }
        }
        return englishAudiosModel;
    }

    public final List<PosModel> getPos(FDLanguageWord.LanguageType type, int detail_id) {
        Cursor cursorSafeRawQuery;
        Intrinsics.checkNotNullParameter(type, "type");
        ArrayList arrayList = new ArrayList();
        if (this.databaseHelper.checkDataBase()) {
            if (type == FDLanguageWord.LanguageType.English) {
                Cursor cursorSafeRawQuery2 = safeRawQuery("SELECT pos FROM english_pos WHERE english_detail_id = " + detail_id, null);
                if (cursorSafeRawQuery2 != null) {
                    if (cursorSafeRawQuery2.getCount() > 0 && cursorSafeRawQuery2.moveToFirst()) {
                        do {
                            int i = cursorSafeRawQuery2.getInt(0);
                            arrayList.add(new PosModel(FDWordPartOfSpeech.INSTANCE.getEnglish(i), FDWordPartOfSpeech.INSTANCE.findEnglishEquivalentInPersian(i)));
                        } while (cursorSafeRawQuery2.moveToNext());
                    }
                    cursorSafeRawQuery2.close();
                    return arrayList;
                }
            } else if (type == FDLanguageWord.LanguageType.Persian && (cursorSafeRawQuery = safeRawQuery("SELECT pos FROM persian_pos WHERE persian_detail_id = " + detail_id, null)) != null) {
                if (cursorSafeRawQuery.getCount() > 0 && cursorSafeRawQuery.moveToFirst()) {
                    do {
                        int i2 = cursorSafeRawQuery.getInt(0);
                        arrayList.add(new PosModel(FDWordPartOfSpeech.INSTANCE.getPersian(i2), FDWordPartOfSpeech.INSTANCE.findPersianEquivalentInEnglish(i2)));
                    } while (cursorSafeRawQuery.moveToNext());
                }
                cursorSafeRawQuery.close();
            }
        }
        return arrayList;
    }

    public final List<EnglishSynonymsAntonymModel> getEnglishSynonymsAntonyms(int word_id) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorSafeRawQuery = safeRawQuery("SELECT english_synonyms_antonyms_id, definitions, synonyms, antonyms, pos FROM english_synonyms_antonyms WHERE english_word_id = \"" + word_id + "\" ORDER BY position, english_synonyms_antonyms_id", null);
        if (cursorSafeRawQuery == null) {
            return CollectionsKt.toList(arrayList);
        }
        if (cursorSafeRawQuery.getCount() > 0 && cursorSafeRawQuery.moveToFirst()) {
            do {
                EnglishSynonymsAntonymModel englishSynonymsAntonymModel = new EnglishSynonymsAntonymModel();
                try {
                    englishSynonymsAntonymModel.setPos(cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("pos")));
                    englishSynonymsAntonymModel.setSynonyms(cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("synonyms")));
                    englishSynonymsAntonymModel.setAntonyms(cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("antonyms")));
                    englishSynonymsAntonymModel.setWordId(Integer.valueOf(cursorSafeRawQuery.getColumnIndex("english_synonyms_antonyms_id")));
                    englishSynonymsAntonymModel.setDefinitions(cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("definitions")));
                } catch (Exception unused) {
                }
                arrayList.add(englishSynonymsAntonymModel);
            } while (cursorSafeRawQuery.moveToNext());
        }
        cursorSafeRawQuery.close();
        return CollectionsKt.toList(arrayList);
    }

    public final List<PersianSynonymsAntonyms> getSynonymsAntonyms(FDLanguageWord.LanguageType type, int word_id) {
        Cursor cursorSafeRawQuery;
        Intrinsics.checkNotNullParameter(type, "type");
        ArrayList arrayList = new ArrayList();
        if (!this.databaseHelper.checkDataBase() || type != FDLanguageWord.LanguageType.Persian || (cursorSafeRawQuery = safeRawQuery("SELECT persian_synonyms_antonyms_id, synonym_antonym FROM persian_synonyms_antonyms WHERE persian_word_id = " + word_id + " ORDER BY position, persian_synonyms_antonyms_id", null)) == null) {
            return arrayList;
        }
        if (cursorSafeRawQuery.getCount() > 0 && cursorSafeRawQuery.moveToFirst()) {
            do {
                PersianSynonymsAntonyms persianSynonymsAntonyms = new PersianSynonymsAntonyms();
                try {
                    persianSynonymsAntonyms.setSynonymAntonym(cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("synonym_antonym")));
                    persianSynonymsAntonyms.setWordId(Integer.valueOf(cursorSafeRawQuery.getColumnIndex("persian_word_id")));
                    persianSynonymsAntonyms.setPersianSynonymsAntonymsId(Integer.valueOf(cursorSafeRawQuery.getColumnIndex("persian_synonyms_antonyms_id")));
                } catch (Exception unused) {
                }
                arrayList.add(persianSynonymsAntonyms);
            } while (cursorSafeRawQuery.moveToNext());
        }
        cursorSafeRawQuery.close();
        return arrayList;
    }

    public final List<SentenseModel> getSentences(FDLanguageWord.LanguageType type, int detail_id) {
        String str;
        Intrinsics.checkNotNullParameter(type, "type");
        ArrayList arrayList = new ArrayList();
        if (this.databaseHelper.checkDataBase()) {
            if (type == FDLanguageWord.LanguageType.English) {
                str = "SELECT english_sentence_id, english_sentence, persian_sentence FROM english_sentences WHERE english_detail_id = ? ORDER BY position, english_sentence_id";
            } else if (type != FDLanguageWord.LanguageType.Persian) {
                str = "";
            } else {
                str = "SELECT persian_sentence_id, english_sentence, persian_sentence FROM persian_sentences WHERE persian_detail_id = ? ORDER BY position, persian_sentence_id";
            }
            Cursor cursorSafeRawQuery = safeRawQuery(str, new String[]{String.valueOf(detail_id)});
            if (cursorSafeRawQuery != null) {
                if (cursorSafeRawQuery.getCount() > 0 && cursorSafeRawQuery.moveToFirst()) {
                    do {
                        SentenseModel sentenseModel = new SentenseModel();
                        try {
                            String string = cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("english_sentence"));
                            String string2 = cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("persian_sentence"));
                            Integer numValueOf = null;
                            if (type == FDLanguageWord.LanguageType.English) {
                                int columnIndex = cursorSafeRawQuery.getColumnIndex("english_sentence_id");
                                if (!cursorSafeRawQuery.isNull(columnIndex)) {
                                    numValueOf = Integer.valueOf(cursorSafeRawQuery.getInt(columnIndex));
                                }
                            } else {
                                int columnIndex2 = cursorSafeRawQuery.getColumnIndex("persian_sentence_id");
                                if (!cursorSafeRawQuery.isNull(columnIndex2)) {
                                    numValueOf = Integer.valueOf(cursorSafeRawQuery.getInt(columnIndex2));
                                }
                            }
                            sentenseModel.setEnglish_sentence_id(numValueOf);
                            sentenseModel.setEnglish(string);
                            sentenseModel.setPersian(string2);
                        } catch (Exception unused) {
                        }
                        arrayList.add(sentenseModel);
                    } while (cursorSafeRawQuery.moveToNext());
                }
                cursorSafeRawQuery.close();
                return arrayList;
            }
        }
        return arrayList;
    }

    public final EnglishIdiomsModel getEnglishPOSs(int wordId) {
        EnglishIdiomsModel englishIdiomsModel = new EnglishIdiomsModel();
        List<EnglishIdiomModel> englishCollocations = getEnglishCollocations(wordId);
        List<EnglishIdiomModel> englishPhrasalVerbs = getEnglishPhrasalVerbs(wordId);
        englishIdiomsModel.setIdioms(groupIdiomMeanings(getEnglishIdioms(wordId)));
        englishIdiomsModel.setCollocations(groupIdiomMeanings(englishCollocations));
        englishIdiomsModel.setPhrasalVerbs(groupIdiomMeanings(englishPhrasalVerbs));
        return englishIdiomsModel;
    }

    public final List<EnglishIdiomModel> getEnglishPhrasalVerbs(int wordId) {
        ArrayList arrayList = new ArrayList();
        if (!this.databaseHelper.checkDataBase()) {
            return CollectionsKt.emptyList();
        }
        Cursor cursorSafeRawQuery = safeRawQuery("SELECT w.english_word as word, d.english_detail_id as english_detail_id, d.persian_meaning as persian_meaning, i.english_idiom_id as english_idiom_id, i.english_idiom_word_id as english_idiom_word_id, p.english_pos_id, p.pos FROM english_idioms i LEFT JOIN english_details d ON i.english_idiom_word_id = d.english_word_id LEFT JOIN english_words w ON i.english_idiom_word_id = w.english_word_id LEFT JOIN english_pos p ON p.english_detail_id = d.english_detail_id WHERE i.english_word_id = \"" + wordId + "\" AND pos = 20 GROUP BY p.pos, w.english_word, d.english_detail_id, d.persian_meaning, i.english_idiom_id, i.english_idiom_word_id, p.english_pos_id ORDER BY i.position, i.english_idiom_id, d.position, d.english_detail_id LIMIT 20", null);
        if (cursorSafeRawQuery == null) {
            return arrayList;
        }
        if (cursorSafeRawQuery.getCount() > 0 && cursorSafeRawQuery.moveToFirst()) {
            do {
                EnglishIdiomModel englishIdiomModel = new EnglishIdiomModel();
                try {
                    int columnIndex = cursorSafeRawQuery.getColumnIndex("pos");
                    String string = cursorSafeRawQuery.isNull(columnIndex) ? null : cursorSafeRawQuery.getString(columnIndex);
                    if (string != null) {
                        List listListOf = CollectionsKt.listOf((Object[]) new String[]{"18", "19", "20"});
                        if (!(listListOf instanceof Collection) || !listListOf.isEmpty()) {
                            Iterator it = listListOf.iterator();
                            while (it.hasNext()) {
                                if (((String) it.next()).contentEquals(string)) {
                                    englishIdiomModel.setEnglishWord(cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("word")));
                                    englishIdiomModel.setEnglishIdiomId(Integer.valueOf(cursorSafeRawQuery.getInt(cursorSafeRawQuery.getColumnIndex("english_idiom_id"))));
                                    englishIdiomModel.setPersianMeaning(cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("persian_meaning")));
                                    englishIdiomModel.setEnglishDetailId(Integer.valueOf(cursorSafeRawQuery.getInt(cursorSafeRawQuery.getColumnIndex("english_detail_id"))));
                                    if (!Intrinsics.areEqual(string, "20")) {
                                        break;
                                    }
                                    arrayList.add(englishIdiomModel);
                                    break;
                                }
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            } while (cursorSafeRawQuery.moveToNext());
        }
        cursorSafeRawQuery.close();
        return arrayList;
    }

    public final List<EnglishIdiomModel> getEnglishCollocations(int wordId) {
        ArrayList arrayList = new ArrayList();
        if (!this.databaseHelper.checkDataBase()) {
            return new ArrayList();
        }
        Cursor cursorSafeRawQuery = safeRawQuery("SELECT w.english_word as word, d.english_detail_id as english_detail_id, d.persian_meaning as persian_meaning, i.english_idiom_id as english_idiom_id, i.english_idiom_word_id as english_idiom_word_id, p.english_pos_id, p.pos FROM english_idioms i LEFT JOIN english_details d ON i.english_idiom_word_id = d.english_word_id LEFT JOIN english_words w ON i.english_idiom_word_id = w.english_word_id LEFT JOIN english_pos p ON p.english_detail_id = d.english_detail_id WHERE i.english_word_id = \"" + wordId + "\" AND pos = 19 GROUP BY p.pos, w.english_word, d.english_detail_id, d.persian_meaning, i.english_idiom_id, i.english_idiom_word_id, p.english_pos_id ORDER BY i.position, i.english_idiom_id, d.position, d.english_detail_id LIMIT 20", null);
        if (cursorSafeRawQuery == null) {
            return arrayList;
        }
        if (cursorSafeRawQuery.getCount() > 0 && cursorSafeRawQuery.moveToFirst()) {
            do {
                EnglishIdiomModel englishIdiomModel = new EnglishIdiomModel();
                try {
                    int columnIndex = cursorSafeRawQuery.getColumnIndex("pos");
                    String string = cursorSafeRawQuery.isNull(columnIndex) ? null : cursorSafeRawQuery.getString(columnIndex);
                    if (string != null) {
                        List listListOf = CollectionsKt.listOf((Object[]) new String[]{"18", "19", "20"});
                        if (!(listListOf instanceof Collection) || !listListOf.isEmpty()) {
                            Iterator it = listListOf.iterator();
                            while (it.hasNext()) {
                                if (((String) it.next()).contentEquals(string)) {
                                    englishIdiomModel.setEnglishWord(cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("word")));
                                    englishIdiomModel.setEnglishIdiomId(Integer.valueOf(cursorSafeRawQuery.getInt(cursorSafeRawQuery.getColumnIndex("english_idiom_id"))));
                                    englishIdiomModel.setPersianMeaning(cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("persian_meaning")));
                                    englishIdiomModel.setEnglishDetailId(Integer.valueOf(cursorSafeRawQuery.getInt(cursorSafeRawQuery.getColumnIndex("english_detail_id"))));
                                    if (!Intrinsics.areEqual(string, "19")) {
                                        break;
                                    }
                                    arrayList.add(englishIdiomModel);
                                    break;
                                }
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            } while (cursorSafeRawQuery.moveToNext());
        }
        cursorSafeRawQuery.close();
        return arrayList;
    }

    public final List<EnglishIdiomModel> getEnglishIdioms(int wordId) {
        ArrayList arrayList = new ArrayList();
        if (!this.databaseHelper.checkDataBase()) {
            return CollectionsKt.emptyList();
        }
        Cursor cursorSafeRawQuery = safeRawQuery("SELECT w.english_word as word, d.english_detail_id as english_detail_id, d.persian_meaning as persian_meaning, i.english_idiom_id as english_idiom_id, i.english_idiom_word_id as english_idiom_word_id, p.english_pos_id, p.pos FROM english_idioms i LEFT JOIN english_details d ON i.english_idiom_word_id = d.english_word_id LEFT JOIN english_words w ON i.english_idiom_word_id = w.english_word_id LEFT JOIN english_pos p ON p.english_detail_id = d.english_detail_id WHERE i.english_word_id = \"" + wordId + "\" AND pos = 18 GROUP BY p.pos, w.english_word, d.english_detail_id, d.persian_meaning, i.english_idiom_id, i.english_idiom_word_id, p.english_pos_id ORDER BY i.position, i.english_idiom_id, d.position, d.english_detail_id LIMIT 20", null);
        if (cursorSafeRawQuery == null) {
            return arrayList;
        }
        if (cursorSafeRawQuery.getCount() > 0 && cursorSafeRawQuery.moveToFirst()) {
            do {
                EnglishIdiomModel englishIdiomModel = new EnglishIdiomModel();
                try {
                    int columnIndex = cursorSafeRawQuery.getColumnIndex("pos");
                    String string = cursorSafeRawQuery.isNull(columnIndex) ? null : cursorSafeRawQuery.getString(columnIndex);
                    if (string != null) {
                        List listListOf = CollectionsKt.listOf((Object[]) new String[]{"18", "19", "20"});
                        if (!(listListOf instanceof Collection) || !listListOf.isEmpty()) {
                            Iterator it = listListOf.iterator();
                            while (it.hasNext()) {
                                if (((String) it.next()).contentEquals(string)) {
                                    englishIdiomModel.setEnglishWord(cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("word")));
                                    englishIdiomModel.setEnglishIdiomId(Integer.valueOf(cursorSafeRawQuery.getInt(cursorSafeRawQuery.getColumnIndex("english_idiom_id"))));
                                    englishIdiomModel.setPersianMeaning(cursorSafeRawQuery.getString(cursorSafeRawQuery.getColumnIndex("persian_meaning")));
                                    englishIdiomModel.setEnglishDetailId(Integer.valueOf(cursorSafeRawQuery.getInt(cursorSafeRawQuery.getColumnIndex("english_detail_id"))));
                                    if (!Intrinsics.areEqual(string, "18")) {
                                        break;
                                    }
                                    arrayList.add(englishIdiomModel);
                                    break;
                                }
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            } while (cursorSafeRawQuery.moveToNext());
        }
        cursorSafeRawQuery.close();
        return CollectionsKt.toList(arrayList);
    }

    private final List<EnglishIdiomGroupModel> groupIdiomMeanings(List<EnglishIdiomModel> idioms) {
        ArrayList arrayList = new ArrayList();
        for (EnglishIdiomModel englishIdiomModel : idioms) {
            ArrayList arrayList2 = arrayList;
            if (!(arrayList2 instanceof Collection) || !arrayList2.isEmpty()) {
                Iterator it = arrayList2.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (Intrinsics.areEqual(((EnglishIdiomGroupModel) it.next()).getEnglishIdiomId(), englishIdiomModel.getEnglishIdiomId())) {
                        }
                    }
                }
            }
            EnglishIdiomGroupModel englishIdiomGroupModel = new EnglishIdiomGroupModel();
            englishIdiomGroupModel.setEnglishWord(englishIdiomModel.getEnglishWord());
            englishIdiomGroupModel.setEnglishIdiomId(englishIdiomModel.getEnglishIdiomId());
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            for (Object obj : idioms) {
                if (Intrinsics.areEqual(((EnglishIdiomModel) obj).getEnglishIdiomId(), englishIdiomModel.getEnglishIdiomId())) {
                    arrayList4.add(obj);
                }
            }
            Iterator it2 = arrayList4.iterator();
            while (it2.hasNext()) {
                String persianMeaning = ((EnglishIdiomModel) it2.next()).getPersianMeaning();
                Intrinsics.checkNotNull(persianMeaning);
                arrayList3.add(persianMeaning);
            }
            englishIdiomGroupModel.setPersianMeanings(arrayList3);
            arrayList.add(englishIdiomGroupModel);
        }
        return arrayList;
    }

    public final Integer getWordIdParent(FDLanguageWord.LanguageType type, String word) {
        Integer numValueOf;
        Integer numValueOf2;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(word, "word");
        if (word.length() == 0) {
            return null;
        }
        try {
            if (type == FDLanguageWord.LanguageType.English) {
                try {
                    String lowerCase = StringsKt.trim((CharSequence) word).toString().toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    Cursor cursorSafeRawQuery = safeRawQuery("SELECT english_word_id_parent FROM english_words WHERE english_word = ?", new String[]{lowerCase});
                    if (cursorSafeRawQuery == null) {
                        return null;
                    }
                    numValueOf2 = null;
                    do {
                        try {
                            if (cursorSafeRawQuery.moveToFirst()) {
                                int columnIndex = cursorSafeRawQuery.getColumnIndex("english_word_id_parent");
                                numValueOf2 = cursorSafeRawQuery.isNull(columnIndex) ? null : Integer.valueOf(cursorSafeRawQuery.getInt(columnIndex));
                            }
                        } catch (Exception e) {
                            e = e;
                            System.out.println(e);
                            return numValueOf2;
                        }
                    } while (cursorSafeRawQuery.moveToNext());
                    cursorSafeRawQuery.close();
                    return numValueOf2;
                } catch (Exception e2) {
                    e = e2;
                    numValueOf2 = null;
                }
            } else {
                if (type == FDLanguageWord.LanguageType.Persian) {
                    try {
                        Cursor cursorSafeRawQuery2 = safeRawQuery("SELECT persian_word_id_parent FROM persian_words WHERE persian_word = ?", new String[]{StringsKt.trim((CharSequence) word).toString()});
                        if (cursorSafeRawQuery2 == null) {
                            return null;
                        }
                        numValueOf = null;
                        do {
                            try {
                                if (cursorSafeRawQuery2.moveToFirst()) {
                                    int columnIndex2 = cursorSafeRawQuery2.getColumnIndex("persian_word_id_parent");
                                    numValueOf = cursorSafeRawQuery2.isNull(columnIndex2) ? null : Integer.valueOf(cursorSafeRawQuery2.getInt(columnIndex2));
                                }
                            } catch (Exception e3) {
                                e = e3;
                                System.out.println(e);
                                return numValueOf;
                            }
                        } while (cursorSafeRawQuery2.moveToNext());
                        cursorSafeRawQuery2.close();
                        return numValueOf;
                    } catch (Exception e4) {
                        e = e4;
                        numValueOf = null;
                    }
                }
                return null;
            }
        } catch (SQLiteException e5) {
            this.logger.error("~~~> SQLiteException: " + e5.getMessage(), new Object[0]);
            e5.printStackTrace();
            FirebaseCrashlytics.getInstance().recordException(e5);
        }
    }

    public final List<String> getMeanings(FDLanguageWord.LanguageType type, int wordId, SQLiteDatabase db) {
        String str;
        Intrinsics.checkNotNullParameter(type, "type");
        ArrayList arrayList = new ArrayList();
        if (type == FDLanguageWord.LanguageType.English) {
            str = "SELECT persian_meaning as meaning FROM english_details WHERE english_word_id = " + wordId;
        } else if (type != FDLanguageWord.LanguageType.Persian) {
            str = "";
        } else {
            str = "SELECT english_meaning as meaning FROM persian_details WHERE persian_word_id = " + wordId;
        }
        if (db != null) {
            Cursor cursorRawQuery = db.rawQuery(str, (String[]) null);
            Intrinsics.checkNotNullExpressionValue(cursorRawQuery, "rawQuery(...)");
            if (cursorRawQuery.getCount() > 0 && cursorRawQuery.moveToFirst()) {
                do {
                    try {
                        arrayList.add(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("meaning")));
                    } catch (Exception unused) {
                    }
                } while (cursorRawQuery.moveToNext());
            }
            cursorRawQuery.close();
        }
        return arrayList;
    }
}
