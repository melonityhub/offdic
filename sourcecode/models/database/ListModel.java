package fast.dic.dict.models.database;

import android.os.Parcel;
import android.os.Parcelable;
import com.couchbase.lite.Result;
import com.ironsource.U3;
import fast.dic.dict.utils.FDLanguageWord;
import io.sentry.protocol.FeatureFlags;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ListModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b[\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\b\u0087\b\u0018\u0000 o2\u00020\u0001:\u0001oBÿ\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\u0012\b\u0002\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\t\u0010M\u001a\u00020\u0003HÆ\u0003J\t\u0010N\u001a\u00020\u0003HÆ\u0003J\u0010\u0010O\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\"J\t\u0010P\u001a\u00020\u0006HÆ\u0003J\u0010\u0010Q\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010+J\u0013\u0010R\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\nHÆ\u0003J\u0010\u0010S\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010+J\u0010\u0010T\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010+J\u0010\u0010U\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010+J\u000b\u0010V\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\t\u0010W\u001a\u00020\u0003HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0010\u0010Y\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\"J\t\u0010Z\u001a\u00020\u0003HÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0010\u0010\\\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\"J\u0010\u0010]\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\"J\u000b\u0010^\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\t\u0010a\u001a\u00020\u0006HÆ\u0003J\u0086\u0002\u0010b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0010\u001a\u00020\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0013\u001a\u00020\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u001a\u001a\u00020\u0006HÆ\u0001¢\u0006\u0002\u0010cJ\u0006\u0010d\u001a\u00020\u0006J\u0014\u0010e\u001a\u00020\u00032\b\u0010f\u001a\u0004\u0018\u00010gHÖ\u0083\u0004J\n\u0010h\u001a\u00020\u0006HÖ\u0081\u0004J\n\u0010i\u001a\u00020\u000bHÖ\u0081\u0004J\u0016\u0010j\u001a\u00020k2\u0006\u0010l\u001a\u00020m2\u0006\u0010n\u001a\u00020\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u001d\"\u0004\b \u0010\u001fR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001e\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R$\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001e\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\b\f\u0010+\"\u0004\b3\u0010-R\u001e\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\b\r\u0010+\"\u0004\b4\u0010-R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\b\u000e\u0010+\"\u0004\b5\u0010-R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u001d\"\u0004\b:\u0010\u001fR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u00107\"\u0004\b<\u00109R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\b=\u0010\"\"\u0004\b>\u0010$R\u001a\u0010\u0013\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u001d\"\u0004\b?\u0010\u001fR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u00107\"\u0004\bA\u00109R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\bB\u0010\"\"\u0004\bC\u0010$R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\bD\u0010\"\"\u0004\bE\u0010$R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u00107\"\u0004\b:\u00109R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u00107\"\u0004\bH\u00109R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u00107\"\u0004\bJ\u00109R\u001a\u0010\u001a\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010'\"\u0004\bL\u0010)Ê\u0001\u0002\bq¨\u0006p"}, d2 = {"Lfast/dic/dict/models/database/ListModel;", "Landroid/os/Parcelable;", "isLoggedIn", "", "isFavorites", "wordId", "", "maxTranslatorLength", "hasSubscription", "meanings", "", "", "isSuggestion", "isTranslator", "isHistory", "documentId", "isNumber", "folderId", "levenshtein", "isLast", "meaning", U3.i.L, "category", "number", "word", "wordHtml", "translatorCount", "<init>", "(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "()Z", "setLoggedIn", "(Z)V", "setFavorites", "getWordId", "()Ljava/lang/Integer;", "setWordId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getMaxTranslatorLength", "()I", "setMaxTranslatorLength", "(I)V", "getHasSubscription", "()Ljava/lang/Boolean;", "setHasSubscription", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getMeanings", "()Ljava/util/List;", "setMeanings", "(Ljava/util/List;)V", "setSuggestion", "setTranslator", "setHistory", "getDocumentId", "()Ljava/lang/String;", "setDocumentId", "(Ljava/lang/String;)V", "setNumber", "getFolderId", "setFolderId", "getLevenshtein", "setLevenshtein", "setLast", "getMeaning", "setMeaning", "getPosition", "setPosition", "getCategory", "setCategory", "getNumber", "getWord", "setWord", "getWordHtml", "setWordHtml", "getTranslatorCount", "setTranslatorCount", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "copy", "(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lfast/dic/dict/models/database/ListModel;", "describeContents", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", FeatureFlags.TYPE, "Companion", "app", "Lkotlinx/parcelize/Parcelize;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class ListModel implements Parcelable {
    private Integer category;
    private String documentId;
    private String folderId;
    private Boolean hasSubscription;
    private boolean isFavorites;
    private Boolean isHistory;
    private boolean isLast;
    private boolean isLoggedIn;
    private boolean isNumber;
    private Boolean isSuggestion;
    private Boolean isTranslator;
    private Integer levenshtein;
    private int maxTranslatorLength;
    private String meaning;
    private List<String> meanings;
    private String number;
    private Integer position;
    private int translatorCount;
    private String word;
    private String wordHtml;
    private Integer wordId;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Parcelable.Creator<ListModel> CREATOR = new Creator();

    /* JADX INFO: compiled from: ListModel.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ListModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to calculate best type for var: r0v4 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v4 ??, new type: java.lang.Integer
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
         */
        /* JADX WARN: Failed to calculate best type for var: r0v4 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v4 ??, new type: java.lang.Integer
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
         */
        /* JADX WARN: Failed to calculate best type for var: r0v7 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v7 ??, new type: java.lang.Integer
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
         */
        /* JADX WARN: Failed to calculate best type for var: r17v3 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r17v3 ??, new type: java.lang.Integer
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
         */
        /* JADX WARN: Failed to calculate best type for var: r17v4 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r17v4 ??, new type: java.lang.Integer
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
         */
        /* JADX WARN: Failed to calculate best type for var: r17v5 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r17v5 ??, new type: java.lang.Integer
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
         */
        /* JADX WARN: Failed to calculate best type for var: r18v1 ??
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r18v1 ??, new type: java.lang.Integer
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
        	at java.base/java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
        Caused by: java.lang.NullPointerException
         */
        /*  JADX ERROR: Types fix failed
            jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v4 ??, new type: java.lang.Object
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
            	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderAllow(TypeUpdate.java:66)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryWiderObjects(FixTypesVisitor.java:795)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:249)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
            Caused by: java.lang.NullPointerException
            */
        @Override // android.os.Parcelable.Creator
        public final fast.dic.dict.models.database.ListModel createFromParcel(android.os.Parcel r24) {
            /*
                Method dump skipped, instruction units count: 260
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: fast.dic.dict.models.database.ListModel.Creator.createFromParcel(android.os.Parcel):fast.dic.dict.models.database.ListModel");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ListModel[] newArray(int i) {
            return new ListModel[i];
        }
    }

    public ListModel() {
        this(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, null, null, 0, 2097151, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ListModel copy$default(ListModel listModel, boolean z, boolean z2, Integer num, int i, Boolean bool, List list, Boolean bool2, Boolean bool3, Boolean bool4, String str, boolean z3, String str2, Integer num2, boolean z4, String str3, Integer num3, Integer num4, String str4, String str5, String str6, int i2, int i3, Object obj) {
        int i4;
        String str7;
        boolean z5 = (i3 & 1) != 0 ? listModel.isLoggedIn : z;
        boolean z6 = (i3 & 2) != 0 ? listModel.isFavorites : z2;
        Integer num5 = (i3 & 4) != 0 ? listModel.wordId : num;
        int i5 = (i3 & 8) != 0 ? listModel.maxTranslatorLength : i;
        Boolean bool5 = (i3 & 16) != 0 ? listModel.hasSubscription : bool;
        List list2 = (i3 & 32) != 0 ? listModel.meanings : list;
        Boolean bool6 = (i3 & 64) != 0 ? listModel.isSuggestion : bool2;
        Boolean bool7 = (i3 & 128) != 0 ? listModel.isTranslator : bool3;
        Boolean bool8 = (i3 & 256) != 0 ? listModel.isHistory : bool4;
        String str8 = (i3 & 512) != 0 ? listModel.documentId : str;
        boolean z7 = (i3 & 1024) != 0 ? listModel.isNumber : z3;
        String str9 = (i3 & 2048) != 0 ? listModel.folderId : str2;
        Integer num6 = (i3 & 4096) != 0 ? listModel.levenshtein : num2;
        boolean z8 = (i3 & 8192) != 0 ? listModel.isLast : z4;
        boolean z9 = z5;
        String str10 = (i3 & 16384) != 0 ? listModel.meaning : str3;
        Integer num7 = (i3 & 32768) != 0 ? listModel.position : num3;
        Integer num8 = (i3 & 65536) != 0 ? listModel.category : num4;
        String str11 = (i3 & 131072) != 0 ? listModel.number : str4;
        String str12 = (i3 & 262144) != 0 ? listModel.word : str5;
        String str13 = (i3 & 524288) != 0 ? listModel.wordHtml : str6;
        if ((i3 & 1048576) != 0) {
            str7 = str13;
            i4 = listModel.translatorCount;
        } else {
            i4 = i2;
            str7 = str13;
        }
        return listModel.copy(z9, z6, num5, i5, bool5, list2, bool6, bool7, bool8, str8, z7, str9, num6, z8, str10, num7, num8, str11, str12, str7, i4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsLoggedIn() {
        return this.isLoggedIn;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getDocumentId() {
        return this.documentId;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final boolean getIsNumber() {
        return this.isNumber;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getFolderId() {
        return this.folderId;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Integer getLevenshtein() {
        return this.levenshtein;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final boolean getIsLast() {
        return this.isLast;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getMeaning() {
        return this.meaning;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final Integer getPosition() {
        return this.position;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final Integer getCategory() {
        return this.category;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getNumber() {
        return this.number;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getWord() {
        return this.word;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsFavorites() {
        return this.isFavorites;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getWordHtml() {
        return this.wordHtml;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final int getTranslatorCount() {
        return this.translatorCount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getWordId() {
        return this.wordId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getMaxTranslatorLength() {
        return this.maxTranslatorLength;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Boolean getHasSubscription() {
        return this.hasSubscription;
    }

    public final List<String> component6() {
        return this.meanings;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Boolean getIsSuggestion() {
        return this.isSuggestion;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Boolean getIsTranslator() {
        return this.isTranslator;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Boolean getIsHistory() {
        return this.isHistory;
    }

    public final ListModel copy(boolean isLoggedIn, boolean isFavorites, Integer wordId, int maxTranslatorLength, Boolean hasSubscription, List<String> meanings, Boolean isSuggestion, Boolean isTranslator, Boolean isHistory, String documentId, boolean isNumber, String folderId, Integer levenshtein, boolean isLast, String meaning, Integer position, Integer category, String number, String word, String wordHtml, int translatorCount) {
        return new ListModel(isLoggedIn, isFavorites, wordId, maxTranslatorLength, hasSubscription, meanings, isSuggestion, isTranslator, isHistory, documentId, isNumber, folderId, levenshtein, isLast, meaning, position, category, number, word, wordHtml, translatorCount);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ListModel)) {
            return false;
        }
        ListModel listModel = (ListModel) other;
        return this.isLoggedIn == listModel.isLoggedIn && this.isFavorites == listModel.isFavorites && Intrinsics.areEqual(this.wordId, listModel.wordId) && this.maxTranslatorLength == listModel.maxTranslatorLength && Intrinsics.areEqual(this.hasSubscription, listModel.hasSubscription) && Intrinsics.areEqual(this.meanings, listModel.meanings) && Intrinsics.areEqual(this.isSuggestion, listModel.isSuggestion) && Intrinsics.areEqual(this.isTranslator, listModel.isTranslator) && Intrinsics.areEqual(this.isHistory, listModel.isHistory) && Intrinsics.areEqual(this.documentId, listModel.documentId) && this.isNumber == listModel.isNumber && Intrinsics.areEqual(this.folderId, listModel.folderId) && Intrinsics.areEqual(this.levenshtein, listModel.levenshtein) && this.isLast == listModel.isLast && Intrinsics.areEqual(this.meaning, listModel.meaning) && Intrinsics.areEqual(this.position, listModel.position) && Intrinsics.areEqual(this.category, listModel.category) && Intrinsics.areEqual(this.number, listModel.number) && Intrinsics.areEqual(this.word, listModel.word) && Intrinsics.areEqual(this.wordHtml, listModel.wordHtml) && this.translatorCount == listModel.translatorCount;
    }

    public int hashCode() {
        int iHashCode = ((Boolean.hashCode(this.isLoggedIn) * 31) + Boolean.hashCode(this.isFavorites)) * 31;
        Integer num = this.wordId;
        int iHashCode2 = (((iHashCode + (num == null ? 0 : num.hashCode())) * 31) + Integer.hashCode(this.maxTranslatorLength)) * 31;
        Boolean bool = this.hasSubscription;
        int iHashCode3 = (iHashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        List<String> list = this.meanings;
        int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        Boolean bool2 = this.isSuggestion;
        int iHashCode5 = (iHashCode4 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.isTranslator;
        int iHashCode6 = (iHashCode5 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.isHistory;
        int iHashCode7 = (iHashCode6 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        String str = this.documentId;
        int iHashCode8 = (((iHashCode7 + (str == null ? 0 : str.hashCode())) * 31) + Boolean.hashCode(this.isNumber)) * 31;
        String str2 = this.folderId;
        int iHashCode9 = (iHashCode8 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num2 = this.levenshtein;
        int iHashCode10 = (((iHashCode9 + (num2 == null ? 0 : num2.hashCode())) * 31) + Boolean.hashCode(this.isLast)) * 31;
        String str3 = this.meaning;
        int iHashCode11 = (iHashCode10 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num3 = this.position;
        int iHashCode12 = (iHashCode11 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.category;
        int iHashCode13 = (iHashCode12 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str4 = this.number;
        int iHashCode14 = (iHashCode13 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.word;
        int iHashCode15 = (iHashCode14 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.wordHtml;
        return ((iHashCode15 + (str6 != null ? str6.hashCode() : 0)) * 31) + Integer.hashCode(this.translatorCount);
    }

    public String toString() {
        return "ListModel(isLoggedIn=" + this.isLoggedIn + ", isFavorites=" + this.isFavorites + ", wordId=" + this.wordId + ", maxTranslatorLength=" + this.maxTranslatorLength + ", hasSubscription=" + this.hasSubscription + ", meanings=" + this.meanings + ", isSuggestion=" + this.isSuggestion + ", isTranslator=" + this.isTranslator + ", isHistory=" + this.isHistory + ", documentId=" + this.documentId + ", isNumber=" + this.isNumber + ", folderId=" + this.folderId + ", levenshtein=" + this.levenshtein + ", isLast=" + this.isLast + ", meaning=" + this.meaning + ", position=" + this.position + ", category=" + this.category + ", number=" + this.number + ", word=" + this.word + ", wordHtml=" + this.wordHtml + ", translatorCount=" + this.translatorCount + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeInt(this.isLoggedIn ? 1 : 0);
        dest.writeInt(this.isFavorites ? 1 : 0);
        Integer num = this.wordId;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeInt(this.maxTranslatorLength);
        Boolean bool = this.hasSubscription;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        dest.writeStringList(this.meanings);
        Boolean bool2 = this.isSuggestion;
        if (bool2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool2.booleanValue() ? 1 : 0);
        }
        Boolean bool3 = this.isTranslator;
        if (bool3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool3.booleanValue() ? 1 : 0);
        }
        Boolean bool4 = this.isHistory;
        if (bool4 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool4.booleanValue() ? 1 : 0);
        }
        dest.writeString(this.documentId);
        dest.writeInt(this.isNumber ? 1 : 0);
        dest.writeString(this.folderId);
        Integer num2 = this.levenshtein;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        dest.writeInt(this.isLast ? 1 : 0);
        dest.writeString(this.meaning);
        Integer num3 = this.position;
        if (num3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num3.intValue());
        }
        Integer num4 = this.category;
        if (num4 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num4.intValue());
        }
        dest.writeString(this.number);
        dest.writeString(this.word);
        dest.writeString(this.wordHtml);
        dest.writeInt(this.translatorCount);
    }

    public ListModel(boolean z, boolean z2, Integer num, int i, Boolean bool, List<String> list, Boolean bool2, Boolean bool3, Boolean bool4, String str, boolean z3, String str2, Integer num2, boolean z4, String str3, Integer num3, Integer num4, String str4, String str5, String str6, int i2) {
        this.isLoggedIn = z;
        this.isFavorites = z2;
        this.wordId = num;
        this.maxTranslatorLength = i;
        this.hasSubscription = bool;
        this.meanings = list;
        this.isSuggestion = bool2;
        this.isTranslator = bool3;
        this.isHistory = bool4;
        this.documentId = str;
        this.isNumber = z3;
        this.folderId = str2;
        this.levenshtein = num2;
        this.isLast = z4;
        this.meaning = str3;
        this.position = num3;
        this.category = num4;
        this.number = str4;
        this.word = str5;
        this.wordHtml = str6;
        this.translatorCount = i2;
    }

    public /* synthetic */ ListModel(boolean z, boolean z2, Integer num, int i, Boolean bool, List list, Boolean bool2, Boolean bool3, Boolean bool4, String str, boolean z3, String str2, Integer num2, boolean z4, String str3, Integer num3, Integer num4, String str4, String str5, String str6, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? false : z, (i3 & 2) != 0 ? false : z2, (i3 & 4) != 0 ? null : num, (i3 & 8) != 0 ? 1000 : i, (i3 & 16) != 0 ? null : bool, (i3 & 32) != 0 ? null : list, (i3 & 64) != 0 ? null : bool2, (i3 & 128) != 0 ? null : bool3, (i3 & 256) != 0 ? null : bool4, (i3 & 512) != 0 ? null : str, (i3 & 1024) != 0 ? false : z3, (i3 & 2048) != 0 ? null : str2, (i3 & 4096) != 0 ? null : num2, (i3 & 8192) != 0 ? false : z4, (i3 & 16384) != 0 ? null : str3, (i3 & 32768) != 0 ? null : num3, (i3 & 65536) != 0 ? null : num4, (i3 & 131072) != 0 ? null : str4, (i3 & 262144) != 0 ? null : str5, (i3 & 524288) != 0 ? null : str6, (i3 & 1048576) != 0 ? 0 : i2);
    }

    public final boolean isFavorites() {
        return this.isFavorites;
    }

    public final boolean isLoggedIn() {
        return this.isLoggedIn;
    }

    public final void setFavorites(boolean z) {
        this.isFavorites = z;
    }

    public final void setLoggedIn(boolean z) {
        this.isLoggedIn = z;
    }

    public final Integer getWordId() {
        return this.wordId;
    }

    public final void setWordId(Integer num) {
        this.wordId = num;
    }

    public final int getMaxTranslatorLength() {
        return this.maxTranslatorLength;
    }

    public final void setMaxTranslatorLength(int i) {
        this.maxTranslatorLength = i;
    }

    public final Boolean getHasSubscription() {
        return this.hasSubscription;
    }

    public final void setHasSubscription(Boolean bool) {
        this.hasSubscription = bool;
    }

    public final List<String> getMeanings() {
        return this.meanings;
    }

    public final void setMeanings(List<String> list) {
        this.meanings = list;
    }

    public final Boolean isSuggestion() {
        return this.isSuggestion;
    }

    public final void setSuggestion(Boolean bool) {
        this.isSuggestion = bool;
    }

    public final Boolean isTranslator() {
        return this.isTranslator;
    }

    public final void setTranslator(Boolean bool) {
        this.isTranslator = bool;
    }

    public final Boolean isHistory() {
        return this.isHistory;
    }

    public final void setHistory(Boolean bool) {
        this.isHistory = bool;
    }

    public final String getDocumentId() {
        return this.documentId;
    }

    public final void setDocumentId(String str) {
        this.documentId = str;
    }

    public final boolean isNumber() {
        return this.isNumber;
    }

    public final void setNumber(boolean z) {
        this.isNumber = z;
    }

    public final String getFolderId() {
        return this.folderId;
    }

    public final void setFolderId(String str) {
        this.folderId = str;
    }

    public final Integer getLevenshtein() {
        return this.levenshtein;
    }

    public final void setLevenshtein(Integer num) {
        this.levenshtein = num;
    }

    public final boolean isLast() {
        return this.isLast;
    }

    public final void setLast(boolean z) {
        this.isLast = z;
    }

    public final String getMeaning() {
        return this.meaning;
    }

    public final void setMeaning(String str) {
        this.meaning = str;
    }

    public final Integer getPosition() {
        return this.position;
    }

    public final void setPosition(Integer num) {
        this.position = num;
    }

    public final Integer getCategory() {
        return this.category;
    }

    public final void setCategory(Integer num) {
        this.category = num;
    }

    public final String getNumber() {
        return this.number;
    }

    public final void setNumber(String str) {
        this.number = str;
    }

    public final String getWord() {
        return this.word;
    }

    public final void setWord(String str) {
        this.word = str;
    }

    public final String getWordHtml() {
        return this.wordHtml;
    }

    public final void setWordHtml(String str) {
        this.wordHtml = str;
    }

    public final int getTranslatorCount() {
        return this.translatorCount;
    }

    public final void setTranslatorCount(int i) {
        this.translatorCount = i;
    }

    /* JADX INFO: compiled from: ListModel.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J2\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\"\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\f0\t¨\u0006\u000e"}, d2 = {"Lfast/dic/dict/models/database/ListModel$Companion;", "", "<init>", "()V", "convert", "Lfast/dic/dict/models/database/ListModel;", "result", "Lcom/couchbase/lite/Result;", "meaningsClosure", "Lkotlin/Function2;", "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;", "", "", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0094  */
        public final ListModel convert(Result result, Function2<? super FDLanguageWord.LanguageType, ? super Integer, ? extends List<String>> meaningsClosure) {
            Intrinsics.checkNotNullParameter(result, "result");
            Intrinsics.checkNotNullParameter(meaningsClosure, "meaningsClosure");
            ListModel listModel = new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, null, null, 0, 2097151, null);
            listModel.setHistory(true);
            listModel.setWord(result.getString("word"));
            listModel.setWordId(Integer.valueOf(result.getInt("wordId")));
            listModel.setDocumentId(result.getString("id"));
            int i = result.getInt("word_id");
            listModel.setCategory(Integer.valueOf(result.getInt("category")));
            listModel.setTranslator(Boolean.valueOf(result.getBoolean("isTranslator")));
            if (listModel.getWordId() == null) {
                listModel.setWordId(Integer.valueOf(i));
            } else {
                Integer wordId = listModel.getWordId();
                if (i > (wordId != null ? wordId.intValue() : 0)) {
                    listModel.setWordId(Integer.valueOf(i));
                }
            }
            listModel.setMeaning(result.getString("meaning"));
            FDLanguageWord.Companion companion = FDLanguageWord.INSTANCE;
            String word = listModel.getWord();
            Intrinsics.checkNotNull(word);
            FDLanguageWord.LanguageType languageTypeFind = companion.find(word);
            Integer wordId2 = listModel.getWordId();
            Intrinsics.checkNotNull(wordId2);
            listModel.setMeanings(meaningsClosure.invoke(languageTypeFind, wordId2));
            if (listModel.getMeaning() == null || Intrinsics.areEqual(listModel.getMeaning(), "")) {
                if (FDLanguageWord.INSTANCE.isEnglish(listModel.getWord())) {
                    List<String> meanings = listModel.getMeanings();
                    listModel.setMeaning(meanings != null ? CollectionsKt.joinToString$default(meanings, "، ", null, null, 0, null, null, 62, null) : null);
                    return listModel;
                }
                if (FDLanguageWord.INSTANCE.isPersian(listModel.getWord())) {
                    List<String> meanings2 = listModel.getMeanings();
                    listModel.setMeaning(meanings2 != null ? CollectionsKt.joinToString$default(meanings2, ", ", null, null, 0, null, null, 62, null) : null);
                }
            }
            return listModel;
        }
    }
}
