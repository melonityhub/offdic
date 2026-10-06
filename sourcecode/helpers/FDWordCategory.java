package fast.dic.dict.helpers;

import android.database.Cursor;
import androidx.core.text.util.LocalePreferences;
import com.amazon.aps.shared.metrics.model.ApsMetricsDataMap;
import com.canhub.cropper.CropImageOptionsKt;
import com.couchbase.lite.internal.core.C4Replicator;
import com.ironsource.mediationsdk.logger.IronSourceError;
import fast.dic.dict.database.FDDatabaseManager;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.models.WordCategoryModel;
import fast.dic.dict.models.database.CategorizedWordDto;
import fast.dic.dict.utils.FDParseUserExtensionKt;
import fast.dic.dict.utils.IntExtKt;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.zetetic.database.sqlcipher.SQLiteDatabase;

/* JADX INFO: compiled from: FDWordCategory.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u0000 /2\u00020\u0001:\u0004,-./B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u0002\b\n¢\u0006\u0004\b\b\u0010\tJ\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u0010H\u0086@¢\u0006\u0002\u0010\u0014J\u000e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0010H\u0002J\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0010J\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00130\u0010H\u0086@¢\u0006\u0002\u0010\u0014J\u0006\u0010\u001a\u001a\u00020\u0011J\b\u0010\u001b\u001a\u00020\u001cH\u0002J\u0006\u0010\u001d\u001a\u00020\u0011J&\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00102\u0006\u0010 \u001a\u00020\u00112\b\b\u0002\u0010!\u001a\u00020\"H\u0086@¢\u0006\u0002\u0010#J&\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00102\u0006\u0010$\u001a\u00020%2\b\b\u0002\u0010!\u001a\u00020\"H\u0086@¢\u0006\u0002\u0010&J&\u0010'\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00102\u0006\u0010(\u001a\u00020%2\b\b\u0002\u0010!\u001a\u00020\"H\u0086@¢\u0006\u0002\u0010&J&\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00102\u0006\u0010 \u001a\u00020\u00112\b\b\u0002\u0010!\u001a\u00020\"H\u0086@¢\u0006\u0002\u0010#J&\u0010*\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00102\u0006\u0010 \u001a\u00020\u00112\b\b\u0002\u0010!\u001a\u00020\"H\u0086@¢\u0006\u0002\u0010#J\u0014\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00130\u0010H\u0082@¢\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lfast/dic/dict/helpers/FDWordCategory;", "", "databaseHelper", "Lfast/dic/dict/helpers/FDMainDatabaseHelper;", "databaseManager", "Lfast/dic/dict/database/FDDatabaseManager;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "<init>", "(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Lfast/dic/dict/database/FDDatabaseManager;Lfast/dic/dict/database/LocalStorage;)V", "Ljavax/inject/Inject;", "database", "Lnet/zetetic/database/sqlcipher/SQLiteDatabase;", "getDatabase", "()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;", "posIds", "", "", "getCategories", "Lfast/dic/dict/models/WordCategoryModel;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCefrLabelsMap", "Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;", "getCefrLabels", "Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;", "getEmptyCategories", "getCefrLevelCount", "daysPassForWod", "", "getCategoryCount", "getWords", "Lfast/dic/dict/models/database/CategorizedWordDto;", "id", C4Replicator.REPLICATOR_OPTION_FILTER, "Lfast/dic/dict/helpers/FDWordCategory$Filter;", "(ILfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cefr", "", "(Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCefrWords", "level", "getCategoryWords", "getPosWords", "getWordsCounts", "CefrLanguageLabel", "CefrLabel", "Filter", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDWordCategory {
    private static final int WOD_WORD_ID = 0;
    private final FDMainDatabaseHelper databaseHelper;
    private final FDDatabaseManager databaseManager;
    private final LocalStorage localStorage;
    private final List<Integer> posIds;

    @Inject
    public FDWordCategory(FDMainDatabaseHelper databaseHelper, FDDatabaseManager databaseManager, LocalStorage localStorage) {
        Intrinsics.checkNotNullParameter(databaseHelper, "databaseHelper");
        Intrinsics.checkNotNullParameter(databaseManager, "databaseManager");
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        this.databaseHelper = databaseHelper;
        this.databaseManager = databaseManager;
        this.localStorage = localStorage;
        this.posIds = CollectionsKt.listOf((Object[]) new Integer[]{20, 18, 19, 24});
    }

    /* JADX INFO: compiled from: FDWordCategory.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;", "", LocalePreferences.CalendarType.PERSIAN, "", "english", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getPersian", "()Ljava/lang/String;", "getEnglish", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class CefrLanguageLabel {
        private final String english;
        private final String persian;

        public static /* synthetic */ CefrLanguageLabel copy$default(CefrLanguageLabel cefrLanguageLabel, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = cefrLanguageLabel.persian;
            }
            if ((i & 2) != 0) {
                str2 = cefrLanguageLabel.english;
            }
            return cefrLanguageLabel.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getPersian() {
            return this.persian;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getEnglish() {
            return this.english;
        }

        public final CefrLanguageLabel copy(String persian, String english) {
            Intrinsics.checkNotNullParameter(persian, "persian");
            Intrinsics.checkNotNullParameter(english, "english");
            return new CefrLanguageLabel(persian, english);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CefrLanguageLabel)) {
                return false;
            }
            CefrLanguageLabel cefrLanguageLabel = (CefrLanguageLabel) other;
            return Intrinsics.areEqual(this.persian, cefrLanguageLabel.persian) && Intrinsics.areEqual(this.english, cefrLanguageLabel.english);
        }

        public int hashCode() {
            return (this.persian.hashCode() * 31) + this.english.hashCode();
        }

        public String toString() {
            return "CefrLanguageLabel(persian=" + this.persian + ", english=" + this.english + ")";
        }

        public CefrLanguageLabel(String persian, String english) {
            Intrinsics.checkNotNullParameter(persian, "persian");
            Intrinsics.checkNotNullParameter(english, "english");
            this.persian = persian;
            this.english = english;
        }

        public final String getEnglish() {
            return this.english;
        }

        public final String getPersian() {
            return this.persian;
        }
    }

    /* JADX INFO: compiled from: FDWordCategory.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;", "", "label", "", "id", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getLabel", "()Ljava/lang/String;", "getId", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class CefrLabel {
        private final String id;
        private final String label;

        public static /* synthetic */ CefrLabel copy$default(CefrLabel cefrLabel, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = cefrLabel.label;
            }
            if ((i & 2) != 0) {
                str2 = cefrLabel.id;
            }
            return cefrLabel.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getLabel() {
            return this.label;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getId() {
            return this.id;
        }

        public final CefrLabel copy(String label, String id) {
            Intrinsics.checkNotNullParameter(label, "label");
            Intrinsics.checkNotNullParameter(id, "id");
            return new CefrLabel(label, id);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CefrLabel)) {
                return false;
            }
            CefrLabel cefrLabel = (CefrLabel) other;
            return Intrinsics.areEqual(this.label, cefrLabel.label) && Intrinsics.areEqual(this.id, cefrLabel.id);
        }

        public int hashCode() {
            return (this.label.hashCode() * 31) + this.id.hashCode();
        }

        public String toString() {
            return "CefrLabel(label=" + this.label + ", id=" + this.id + ")";
        }

        public CefrLabel(String label, String id) {
            Intrinsics.checkNotNullParameter(label, "label");
            Intrinsics.checkNotNullParameter(id, "id");
            this.label = label;
            this.id = id;
        }

        public final String getId() {
            return this.id;
        }

        public final String getLabel() {
            return this.label;
        }
    }

    /* JADX INFO: compiled from: FDWordCategory.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u000eJ>\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0014\u0010\u0017\u001a\u00020\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0019\u001a\u00020\u001aHÖ\u0081\u0004J\n\u0010\u001b\u001a\u00020\u0003HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0010\u0010\u000e¨\u0006\u001c"}, d2 = {"Lfast/dic/dict/helpers/FDWordCategory$Filter;", "", "search", "", "subCategory", "mostCommon", "", "cerf", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getSearch", "()Ljava/lang/String;", "getSubCategory", "getMostCommon", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getCerf", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lfast/dic/dict/helpers/FDWordCategory$Filter;", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Filter {
        private final Boolean cerf;
        private final Boolean mostCommon;
        private final String search;
        private final String subCategory;

        public Filter() {
            this(null, null, null, null, 15, null);
        }

        public static /* synthetic */ Filter copy$default(Filter filter, String str, String str2, Boolean bool, Boolean bool2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = filter.search;
            }
            if ((i & 2) != 0) {
                str2 = filter.subCategory;
            }
            if ((i & 4) != 0) {
                bool = filter.mostCommon;
            }
            if ((i & 8) != 0) {
                bool2 = filter.cerf;
            }
            return filter.copy(str, str2, bool, bool2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getSearch() {
            return this.search;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getSubCategory() {
            return this.subCategory;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Boolean getMostCommon() {
            return this.mostCommon;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final Boolean getCerf() {
            return this.cerf;
        }

        public final Filter copy(String search, String subCategory, Boolean mostCommon, Boolean cerf) {
            return new Filter(search, subCategory, mostCommon, cerf);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Filter)) {
                return false;
            }
            Filter filter = (Filter) other;
            return Intrinsics.areEqual(this.search, filter.search) && Intrinsics.areEqual(this.subCategory, filter.subCategory) && Intrinsics.areEqual(this.mostCommon, filter.mostCommon) && Intrinsics.areEqual(this.cerf, filter.cerf);
        }

        public int hashCode() {
            String str = this.search;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.subCategory;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            Boolean bool = this.mostCommon;
            int iHashCode3 = (iHashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
            Boolean bool2 = this.cerf;
            return iHashCode3 + (bool2 != null ? bool2.hashCode() : 0);
        }

        public String toString() {
            return "Filter(search=" + this.search + ", subCategory=" + this.subCategory + ", mostCommon=" + this.mostCommon + ", cerf=" + this.cerf + ")";
        }

        public Filter(String str, String str2, Boolean bool, Boolean bool2) {
            this.search = str;
            this.subCategory = str2;
            this.mostCommon = bool;
            this.cerf = bool2;
        }

        public /* synthetic */ Filter(String str, String str2, Boolean bool, Boolean bool2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : bool, (i & 8) != 0 ? null : bool2);
        }

        public final String getSearch() {
            return this.search;
        }

        public final String getSubCategory() {
            return this.subCategory;
        }

        public final Boolean getMostCommon() {
            return this.mostCommon;
        }

        public final Boolean getCerf() {
            return this.cerf;
        }
    }

    public final SQLiteDatabase getDatabase() {
        return this.databaseHelper.getReadableDatabase();
    }

    public final Object getCategories(Continuation<? super List<WordCategoryModel>> continuation) {
        return getWordsCounts(continuation);
    }

    private final List<CefrLanguageLabel> getCefrLabelsMap() {
        return CollectionsKt.listOf((Object[]) new CefrLanguageLabel[]{new CefrLanguageLabel("سطح مبتدی - A1", "Beginner A1"), new CefrLanguageLabel("سطح ابتدایی - A2", "Elementary A2"), new CefrLanguageLabel("سطح متوسط - B1", "Intermediate B1"), new CefrLanguageLabel("سطح فوق - B2", "Upper-Intermediate B2"), new CefrLanguageLabel("سطح پیشرفته - C1", "Advanced C1"), new CefrLanguageLabel("سطح فوق - C2", "Proficiency C2")});
    }

    public final List<CefrLabel> getCefrLabels() {
        String english;
        List<CefrLanguageLabel> cefrLabelsMap = getCefrLabelsMap();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(cefrLabelsMap, 10));
        for (CefrLanguageLabel cefrLanguageLabel : cefrLabelsMap) {
            String str = (String) CollectionsKt.lastOrNull(StringsKt.split$default((CharSequence) cefrLanguageLabel.getEnglish(), new String[]{" "}, false, 0, 6, (Object) null));
            if (str == null) {
                str = "";
            }
            if (this.localStorage.currentLanguageIsPersian()) {
                english = cefrLanguageLabel.getPersian();
            } else {
                english = cefrLanguageLabel.getEnglish();
            }
            arrayList.add(new CefrLabel(english, str));
        }
        return arrayList;
    }

    public final Object getEmptyCategories(Continuation<? super List<WordCategoryModel>> continuation) {
        List listSortedWith;
        List mutableList = CollectionsKt.toMutableList((Collection) this.databaseManager.getCategoryAndPosList(this.localStorage.currentLanguageIsPersian()));
        if (this.localStorage.currentLanguageIsPersian()) {
            Collator collator = Collator.getInstance(new Locale("fa_IR"));
            Intrinsics.checkNotNull(collator);
            final Collator collator2 = collator;
            listSortedWith = CollectionsKt.sortedWith(mutableList, new Comparator() { // from class: fast.dic.dict.helpers.FDWordCategory$getEmptyCategories$$inlined$compareBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    Comparator comparator = collator2;
                    String name = ((WordCategoryModel) t).getName();
                    if (name == null) {
                        name = "";
                    }
                    String name2 = ((WordCategoryModel) t2).getName();
                    return comparator.compare(name, name2 != null ? name2 : "");
                }
            });
        } else {
            listSortedWith = CollectionsKt.sortedWith(mutableList, new Comparator() { // from class: fast.dic.dict.helpers.FDWordCategory$getEmptyCategories$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    String name = ((WordCategoryModel) t).getName();
                    if (name == null) {
                        name = "";
                    }
                    String str = name;
                    String name2 = ((WordCategoryModel) t2).getName();
                    return ComparisonsKt.compareValues(str, name2 != null ? name2 : "");
                }
            });
        }
        List mutableList2 = CollectionsKt.toMutableList((Collection) listSortedWith);
        mutableList2.add(0, new WordCategoryModel(Boxing.boxInt((int) daysPassForWod()), null, "c0", Boxing.boxInt(0), null, true, false, false, false, 466, null));
        List<CefrLabel> cefrLabels = getCefrLabels();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(cefrLabels, 10));
        for (CefrLabel cefrLabel : cefrLabels) {
            String id = cefrLabel.getId();
            arrayList.add(new WordCategoryModel(Boxing.boxInt(0), cefrLabel.getLabel(), "c60", null, id, false, false, true, false, CropImageOptionsKt.DEGREES_360, null));
        }
        mutableList2.addAll(arrayList);
        return mutableList2;
    }

    public final int getCefrLevelCount() {
        return getCefrLabelsMap().size();
    }

    private final long daysPassForWod() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(IronSourceError.ERROR_NEW_INIT_API_ALREADY_CALLED, 2, 20);
        Calendar calendar2 = Calendar.getInstance();
        long j = 0;
        while (calendar.before(calendar2)) {
            calendar.add(6, 1);
            j++;
        }
        return j;
    }

    public final int getCategoryCount() {
        return this.databaseManager.getCategoryCount() + this.posIds.size() + getCefrLevelCount();
    }

    public static /* synthetic */ Object getWords$default(FDWordCategory fDWordCategory, int i, Filter filter, Continuation continuation, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            filter = new Filter(null, null, null, null, 15, null);
        }
        return fDWordCategory.getWords(i, filter, (Continuation<? super List<CategorizedWordDto>>) continuation);
    }

    public final Object getWords(int i, Filter filter, Continuation<? super List<CategorizedWordDto>> continuation) {
        if (this.posIds.contains(Boxing.boxInt(i))) {
            return getPosWords(i, filter, continuation);
        }
        return getCategoryWords(i, filter, continuation);
    }

    public static /* synthetic */ Object getWords$default(FDWordCategory fDWordCategory, String str, Filter filter, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            filter = new Filter(null, null, null, null, 15, null);
        }
        return fDWordCategory.getWords(str, filter, (Continuation<? super List<CategorizedWordDto>>) continuation);
    }

    public final Object getWords(String str, Filter filter, Continuation<? super List<CategorizedWordDto>> continuation) {
        return getCefrWords(str, filter, continuation);
    }

    public static /* synthetic */ Object getCefrWords$default(FDWordCategory fDWordCategory, String str, Filter filter, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            filter = new Filter(null, null, null, null, 15, null);
        }
        return fDWordCategory.getCefrWords(str, filter, continuation);
    }

    public final Object getCefrWords(String str, Filter filter, Continuation<? super List<CategorizedWordDto>> continuation) throws IOException {
        ArrayList arrayList;
        List listSplit$default;
        ArrayList arrayList2 = new ArrayList();
        if (!this.databaseHelper.checkDataBase()) {
            return arrayList2;
        }
        StringBuilder sb = new StringBuilder("SELECT \n    w.english_word_id AS word_id,\n    w.english_word AS english_word,\n    MAX(d.most_common) AS most_common,\n    REPLACE(GROUP_CONCAT(DISTINCT d.persian_meaning), ',', '|| ') AS persian_meaning,\n    REPLACE(GROUP_CONCAT(DISTINCT IFNULL(d.cefr,'')), ',', '|| ') AS cefrs\nFROM english_words w\nJOIN english_details d ON w.english_word_id = d.english_word_id\nWHERE d.cefr = ?");
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(str);
        String subCategory = filter.getSubCategory();
        if (subCategory != null) {
            if (StringsKt.isBlank(subCategory)) {
                subCategory = null;
            }
            if (subCategory != null) {
                sb.append("  AND EXISTS (\n      SELECT 1 FROM english_categories c2\n      WHERE c2.english_detail_id = d.english_detail_id\n        AND c2.sub_category LIKE ?\n  )");
                arrayList3.add(subCategory);
            }
        }
        if (Intrinsics.areEqual(filter.getMostCommon(), Boxing.boxBoolean(true))) {
            sb.append("\n  AND d.most_common <> 0");
        }
        String search = filter.getSearch();
        if (search != null) {
            if (StringsKt.isBlank(search)) {
                search = null;
            }
            if (search != null) {
                sb.append("\n  AND w.english_word LIKE ?");
                arrayList3.add("%" + search + "%");
            }
        }
        sb.append(" GROUP BY w.english_word_id, w.english_word\n ORDER BY MAX(d.most_common) DESC,\n         w.english_word,\n         MIN(d.position),\n         MIN(d.english_detail_id)");
        SQLiteDatabase database = getDatabase();
        Intrinsics.checkNotNull(database);
        Cursor cursorRawQuery = database.rawQuery(sb.toString(), (String[]) arrayList3.toArray(new String[0]));
        try {
            Cursor cursor = cursorRawQuery;
            while (cursor.moveToNext()) {
                Intrinsics.checkNotNull(cursor);
                String string = cursor.isNull(4) ? null : cursor.getString(4);
                if (string == null || (listSplit$default = StringsKt.split$default((CharSequence) string, new String[]{"||"}, false, 0, 6, (Object) null)) == null) {
                    arrayList = null;
                } else {
                    List list = listSplit$default;
                    ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList4.add(StringsKt.trim((CharSequence) it.next()).toString());
                    }
                    ArrayList arrayList5 = new ArrayList();
                    for (Object obj : arrayList4) {
                        if (((String) obj).length() > 0) {
                            arrayList5.add(obj);
                        }
                    }
                    arrayList = arrayList5;
                }
                ArrayList arrayList6 = arrayList2;
                long j = cursor.getLong(0);
                String string2 = cursor.getString(1);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                arrayList6.add(new CategorizedWordDto(j, string2, cursor.getString(3), cursor.isNull(2) ? null : Boxing.boxInt(cursor.getInt(2)), null, null, arrayList, null));
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(cursorRawQuery, null);
            return arrayList2;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(cursorRawQuery, th);
                throw th2;
            }
        }
    }

    public static /* synthetic */ Object getCategoryWords$default(FDWordCategory fDWordCategory, int i, Filter filter, Continuation continuation, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            filter = new Filter(null, null, null, null, 15, null);
        }
        return fDWordCategory.getCategoryWords(i, filter, continuation);
    }

    public final Object getCategoryWords(int i, Filter filter, Continuation<? super List<CategorizedWordDto>> continuation) throws IOException {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        List listSplit$default;
        List listSplit$default2;
        List listSplit$default3;
        ArrayList arrayList4 = new ArrayList();
        if (!FDParseUserExtensionKt.hasSubscription() || !this.databaseHelper.checkDataBase()) {
            return arrayList4;
        }
        StringBuilder sb = new StringBuilder("SELECT\n  w.english_word_id AS word_id,\n  w.english_word,\n  MAX(d.most_common) AS most_common,\n  REPLACE(GROUP_CONCAT(DISTINCT d.persian_meaning), ',', '|| ') AS persian_meaning,\n  GROUP_CONCAT(DISTINCT c.category) AS categories,\n  REPLACE(GROUP_CONCAT(DISTINCT IFNULL(c.sub_category,'')), ',', '|| ') AS sub_categories,\n  REPLACE(GROUP_CONCAT(DISTINCT IFNULL(d.cefr,'')), ',', '|| ') AS cefrs,\n  REPLACE(GROUP_CONCAT(DISTINCT IFNULL(p.pos,'')), ',', '|| ') AS poses\nFROM english_words AS w\nJOIN english_details AS d\n  ON d.english_word_id = w.english_word_id\nJOIN english_categories AS c\n  ON c.english_detail_id = d.english_detail_id\n AND c.category = ?\nLEFT JOIN english_pos AS p\n  ON p.english_detail_id = d.english_detail_id\nWHERE 1 = 1");
        List listMutableListOf = CollectionsKt.mutableListOf(String.valueOf(i));
        String subCategory = filter.getSubCategory();
        if (subCategory != null) {
            if (StringsKt.isBlank(subCategory)) {
                subCategory = null;
            }
            if (subCategory != null) {
                sb.append("\n  AND c.sub_category = ?");
                listMutableListOf.add(subCategory);
            }
        }
        Boolean cerf = filter.getCerf();
        if (Intrinsics.areEqual(cerf, Boxing.boxBoolean(true))) {
            sb.append("\n  AND d.cefr IS NOT NULL");
        } else if (Intrinsics.areEqual(cerf, Boxing.boxBoolean(false))) {
            sb.append("\n  AND d.cefr IS NULL");
        } else {
            if (cerf != null) {
                throw new NoWhenBranchMatchedException();
            }
            Unit unit = Unit.INSTANCE;
        }
        if (Intrinsics.areEqual(filter.getMostCommon(), Boxing.boxBoolean(true))) {
            sb.append("\n  AND d.most_common <> 0");
        }
        String search = filter.getSearch();
        if (search != null) {
            if (StringsKt.isBlank(search)) {
                search = null;
            }
            if (search != null) {
                sb.append("\n  AND w.english_word LIKE ?");
                listMutableListOf.add("%" + search + "%");
            }
        }
        sb.append(" GROUP BY w.english_word_id, w.english_word\n ORDER BY MAX(d.most_common) DESC,\n         w.english_word,\n         MIN(d.position),\n         MIN(d.english_detail_id)");
        SQLiteDatabase database = getDatabase();
        Intrinsics.checkNotNull(database);
        Cursor cursorRawQuery = database.rawQuery(sb.toString(), (String[]) listMutableListOf.toArray(new String[0]));
        try {
            Cursor cursor = cursorRawQuery;
            if (cursor.moveToFirst()) {
                do {
                    Intrinsics.checkNotNull(cursor);
                    String string = cursor.isNull(7) ? null : cursor.getString(7);
                    if (string == null || (listSplit$default3 = StringsKt.split$default((CharSequence) string, new String[]{"||"}, false, 0, 6, (Object) null)) == null) {
                        arrayList = null;
                    } else {
                        List list = listSplit$default3;
                        ArrayList arrayList5 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            arrayList5.add(StringsKt.trim((CharSequence) it.next()).toString());
                        }
                        ArrayList arrayList6 = new ArrayList();
                        for (Object obj : arrayList5) {
                            if (((String) obj).length() > 0) {
                                arrayList6.add(obj);
                            }
                        }
                        ArrayList arrayList7 = arrayList6;
                        ArrayList arrayList8 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList7, 10));
                        Iterator it2 = arrayList7.iterator();
                        while (it2.hasNext()) {
                            String englishPos = IntExtKt.getEnglishPos(Boxing.boxInt(Integer.parseInt((String) it2.next())));
                            if (englishPos == null) {
                                englishPos = "";
                            }
                            arrayList8.add(englishPos);
                        }
                        arrayList = arrayList8;
                    }
                    String string2 = cursor.isNull(5) ? null : cursor.getString(5);
                    if (string2 == null || (listSplit$default2 = StringsKt.split$default((CharSequence) string2, new String[]{"||"}, false, 0, 6, (Object) null)) == null) {
                        arrayList2 = null;
                    } else {
                        List list2 = listSplit$default2;
                        ArrayList arrayList9 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
                        Iterator it3 = list2.iterator();
                        while (it3.hasNext()) {
                            arrayList9.add(StringsKt.trim((CharSequence) it3.next()).toString());
                        }
                        ArrayList arrayList10 = new ArrayList();
                        for (Object obj2 : arrayList9) {
                            if (((String) obj2).length() > 0) {
                                arrayList10.add(obj2);
                            }
                        }
                        arrayList2 = arrayList10;
                    }
                    String string3 = cursor.isNull(6) ? null : cursor.getString(6);
                    if (string3 == null || (listSplit$default = StringsKt.split$default((CharSequence) string3, new String[]{"||"}, false, 0, 6, (Object) null)) == null) {
                        arrayList3 = null;
                    } else {
                        List list3 = listSplit$default;
                        ArrayList arrayList11 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
                        Iterator it4 = list3.iterator();
                        while (it4.hasNext()) {
                            arrayList11.add(StringsKt.trim((CharSequence) it4.next()).toString());
                        }
                        ArrayList arrayList12 = new ArrayList();
                        for (Object obj3 : arrayList11) {
                            if (((String) obj3).length() > 0) {
                                arrayList12.add(obj3);
                            }
                        }
                        arrayList3 = arrayList12;
                    }
                    ArrayList arrayList13 = arrayList4;
                    long j = cursor.getLong(0);
                    String string4 = cursor.getString(1);
                    Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                    arrayList13.add(new CategorizedWordDto(j, string4, cursor.getString(3), cursor.isNull(2) ? null : Boxing.boxInt(cursor.getInt(2)), cursor.getString(4), arrayList2, arrayList3, arrayList));
                } while (cursor.moveToNext());
            }
            Unit unit2 = Unit.INSTANCE;
            CloseableKt.closeFinally(cursorRawQuery, null);
            return arrayList4;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(cursorRawQuery, th);
                throw th2;
            }
        }
    }

    public static /* synthetic */ Object getPosWords$default(FDWordCategory fDWordCategory, int i, Filter filter, Continuation continuation, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            filter = new Filter(null, null, null, null, 15, null);
        }
        return fDWordCategory.getPosWords(i, filter, continuation);
    }

    public final Object getPosWords(int i, Filter filter, Continuation<? super List<CategorizedWordDto>> continuation) throws IOException {
        ArrayList arrayList;
        List listSplit$default;
        ArrayList arrayList2 = new ArrayList();
        if (!FDParseUserExtensionKt.hasSubscription() || !this.databaseHelper.checkDataBase()) {
            return arrayList2;
        }
        StringBuilder sb = new StringBuilder("SELECT\n  w.english_word_id AS word_id,\n  w.english_word,\n  MAX(d.most_common) AS most_common,\n  REPLACE(GROUP_CONCAT(DISTINCT d.persian_meaning), ',', '|| ') AS persian_meaning,\n  REPLACE(GROUP_CONCAT(DISTINCT IFNULL(d.cefr,'')), ',', '|| ') AS cefrs\nFROM english_words AS w\nJOIN english_details AS d\n  ON d.english_word_id = w.english_word_id\nJOIN english_pos AS p\n  ON p.english_detail_id = d.english_detail_id\n AND p.pos = ?\nWHERE 1=1\n");
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(String.valueOf(i));
        String subCategory = filter.getSubCategory();
        if (subCategory != null) {
            if (StringsKt.isBlank(subCategory)) {
                subCategory = null;
            }
            if (subCategory != null) {
                sb.append("  AND EXISTS (\n      SELECT 1 FROM english_categories c2\n      WHERE c2.english_detail_id = d.english_detail_id\n        AND c2.sub_category LIKE ?\n  )");
                arrayList3.add(subCategory);
            }
        }
        Boolean cerf = filter.getCerf();
        if (Intrinsics.areEqual(cerf, Boxing.boxBoolean(true))) {
            sb.append("\n  AND d.cefr IS NOT NULL");
        } else if (Intrinsics.areEqual(cerf, Boxing.boxBoolean(false))) {
            sb.append("\n  AND d.cefr IS NULL");
        } else {
            if (cerf != null) {
                throw new NoWhenBranchMatchedException();
            }
            Unit unit = Unit.INSTANCE;
        }
        if (Intrinsics.areEqual(filter.getMostCommon(), Boxing.boxBoolean(true))) {
            sb.append("\n  AND d.most_common <> 0");
        }
        String search = filter.getSearch();
        if (search != null) {
            if (StringsKt.isBlank(search)) {
                search = null;
            }
            if (search != null) {
                sb.append("\n  AND w.english_word LIKE ?");
                arrayList3.add("%" + search + "%");
            }
        }
        sb.append(" GROUP BY w.english_word_id, w.english_word\n ORDER BY MAX(d.most_common) DESC,\n         w.english_word,\n         MIN(d.position),\n         MIN(d.english_detail_id)");
        SQLiteDatabase database = getDatabase();
        Intrinsics.checkNotNull(database);
        Cursor cursorRawQuery = database.rawQuery(sb.toString(), (String[]) arrayList3.toArray(new String[0]));
        try {
            Cursor cursor = cursorRawQuery;
            if (!cursor.moveToFirst()) {
                CloseableKt.closeFinally(cursorRawQuery, null);
                return arrayList2;
            }
            Intrinsics.checkNotNull(cursor);
            String string = cursor.isNull(4) ? null : cursor.getString(4);
            if (string == null || (listSplit$default = StringsKt.split$default((CharSequence) string, new String[]{"||"}, false, 0, 6, (Object) null)) == null) {
                arrayList = null;
            } else {
                List list = listSplit$default;
                ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList4.add(StringsKt.trim((CharSequence) it.next()).toString());
                }
                ArrayList arrayList5 = new ArrayList();
                for (Object obj : arrayList4) {
                    if (((String) obj).length() > 0) {
                        arrayList5.add(obj);
                    }
                }
                arrayList = arrayList5;
            }
            do {
                ArrayList arrayList6 = arrayList2;
                long j = cursor.getLong(0);
                String string2 = cursor.getString(1);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                arrayList6.add(new CategorizedWordDto(j, string2, cursor.getString(3), cursor.isNull(2) ? null : Boxing.boxInt(cursor.getInt(2)), null, null, arrayList, null));
            } while (cursor.moveToNext());
            Unit unit2 = Unit.INSTANCE;
            CloseableKt.closeFinally(cursorRawQuery, null);
            return arrayList2;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(cursorRawQuery, th);
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getWordsCounts(Continuation<? super List<WordCategoryModel>> continuation) {
        List listSortedWith;
        Map mapMapOf;
        ArrayList arrayList = new ArrayList();
        boolean zCurrentLanguageIsPersian = this.localStorage.currentLanguageIsPersian();
        List<Integer> allCategoryIds = this.databaseManager.getAllCategoryIds();
        List<Integer> list = this.posIds;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(Boxing.boxInt(((Number) it.next()).intValue()));
        }
        String strTrimIndent = StringsKt.trimIndent("\n            SELECT\n              p.pos,\n              COUNT(DISTINCT d.english_word_id) AS count\n            FROM english_pos AS p\n            JOIN english_details AS d\n              ON d.english_detail_id = p.english_detail_id\n            WHERE p.pos IN (" + CollectionsKt.joinToString$default(arrayList2, StringUtils.COMMA, null, null, 0, null, null, 62, null) + ")\n            GROUP BY p.pos\n            ORDER BY p.pos;\n        ");
        String strTrimIndent2 = StringsKt.trimIndent("\n            SELECT\n              c.category,\n              COUNT(DISTINCT d.english_word_id) AS count\n            FROM english_categories AS c\n            JOIN english_details AS d\n              ON d.english_detail_id = c.english_detail_id\n            WHERE c.category IN (" + CollectionsKt.joinToString$default(allCategoryIds, StringUtils.COMMA, null, null, 0, null, null, 62, null) + ")\n            GROUP BY c.category\n            ORDER BY c.category;\n        ");
        if (!this.databaseHelper.checkDataBase()) {
            return arrayList;
        }
        SQLiteDatabase database = getDatabase();
        Intrinsics.checkNotNull(database);
        Cursor cursorRawQuery = database.rawQuery(strTrimIndent2, (String[]) null);
        if (cursorRawQuery != null) {
            if (cursorRawQuery.moveToFirst()) {
                do {
                    int i = cursorRawQuery.getInt(0);
                    arrayList.add(new WordCategoryModel(Boxing.boxInt(cursorRawQuery.getInt(1)), this.databaseManager.getCategoryNameById(Boxing.boxInt(i), zCurrentLanguageIsPersian), ApsMetricsDataMap.APSMETRICS_FIELD_CUSTOM + i, Boxing.boxInt(i), null, false, false, false, false, 496, null));
                } while (cursorRawQuery.moveToNext());
            }
            cursorRawQuery.close();
        }
        SQLiteDatabase database2 = getDatabase();
        Intrinsics.checkNotNull(database2);
        Cursor cursorRawQuery2 = database2.rawQuery(strTrimIndent, (String[]) null);
        if (cursorRawQuery2 != null) {
            if (cursorRawQuery2.moveToFirst()) {
                do {
                    int i2 = cursorRawQuery2.getInt(0);
                    int i3 = cursorRawQuery2.getInt(1);
                    if (zCurrentLanguageIsPersian) {
                        mapMapOf = MapsKt.mapOf(TuplesKt.to(Boxing.boxInt(24), "مخفف\u200cها - Abbreviations"), TuplesKt.to(Boxing.boxInt(19), "کالوکیشن\u200cها - Collocations"), TuplesKt.to(Boxing.boxInt(18), "اصطلاحات - Idioms"), TuplesKt.to(Boxing.boxInt(20), "افعال دو قسمتی - Phrasal verbs"));
                    } else {
                        mapMapOf = MapsKt.mapOf(TuplesKt.to(Boxing.boxInt(24), "Abbreviations"), TuplesKt.to(Boxing.boxInt(19), "Collocations"), TuplesKt.to(Boxing.boxInt(18), "Idioms"), TuplesKt.to(Boxing.boxInt(20), "Phrasal verbs"));
                    }
                    arrayList.add(new WordCategoryModel(Boxing.boxInt(i3), (String) mapMapOf.get(Boxing.boxInt(i2)), "p" + i2, Boxing.boxInt(i2), null, false, true, false, false, 432, null));
                } while (cursorRawQuery2.moveToNext());
            }
            cursorRawQuery2.close();
        }
        if (this.localStorage.currentLanguageIsPersian()) {
            Collator collator = Collator.getInstance(new Locale("fa_IR"));
            Intrinsics.checkNotNull(collator);
            final Collator collator2 = collator;
            listSortedWith = CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: fast.dic.dict.helpers.FDWordCategory$getWordsCounts$$inlined$compareBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    Comparator comparator = collator2;
                    String name = ((WordCategoryModel) t).getName();
                    if (name == null) {
                        name = "";
                    }
                    String name2 = ((WordCategoryModel) t2).getName();
                    return comparator.compare(name, name2 != null ? name2 : "");
                }
            });
        } else {
            listSortedWith = CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: fast.dic.dict.helpers.FDWordCategory$getWordsCounts$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    String name = ((WordCategoryModel) t).getName();
                    if (name == null) {
                        name = "";
                    }
                    String str = name;
                    String name2 = ((WordCategoryModel) t2).getName();
                    return ComparisonsKt.compareValues(str, name2 != null ? name2 : "");
                }
            });
        }
        List mutableList = CollectionsKt.toMutableList((Collection) listSortedWith);
        mutableList.add(0, new WordCategoryModel(Boxing.boxInt((int) daysPassForWod()), null, "c0", Boxing.boxInt(0), null, true, false, false, false, 466, null));
        CollectionsKt.addAll(mutableList, this.databaseManager.getCefrLevelCounts(getCefrLabels()));
        return mutableList;
    }
}
