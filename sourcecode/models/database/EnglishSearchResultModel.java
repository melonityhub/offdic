package fast.dic.dict.models.database;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EnglishSearchResultModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\bQ\b\u0086\b\u0018\u00002\u00020\u0001Bó\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014\u0012\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0012\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b\u001f\u0010 J\u000b\u0010V\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010W\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010&J\u000b\u0010X\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\t\u0010b\u001a\u00020\u0012HÆ\u0003J\u0011\u0010c\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014HÆ\u0003J\u0011\u0010d\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0014HÆ\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u0019HÆ\u0003J\t\u0010f\u001a\u00020\u0012HÆ\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u001cHÆ\u0003J\u000b\u0010h\u001a\u0004\u0018\u00010\u001eHÆ\u0003Jú\u0001\u0010i\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00142\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00142\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00122\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÆ\u0001¢\u0006\u0002\u0010jJ\u0014\u0010k\u001a\u00020\u00122\b\u0010l\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010m\u001a\u00020\u0005HÖ\u0081\u0004J\n\u0010n\u001a\u00020\u0003HÖ\u0081\u0004R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010)\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\"\"\u0004\b+\u0010$R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\"\"\u0004\b-\u0010$R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\"\"\u0004\b/\u0010$R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\"\"\u0004\b1\u0010$R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\"\"\u0004\b3\u0010$R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\"\"\u0004\b5\u0010$R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010\"\"\u0004\b7\u0010$R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\"\"\u0004\b9\u0010$R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\"\"\u0004\b;\u0010$R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010@\"\u0004\bA\u0010BR\"\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\"\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010D\"\u0004\bH\u0010FR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\u001a\u0010\u001a\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010@\"\u0004\bM\u0010BR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u0010S\"\u0004\bT\u0010U¨\u0006o"}, d2 = {"Lfast/dic/dict/models/database/EnglishSearchResultModel;", "", "word", "", "wordId", "", "wordDescriptionHtml", "pastParticiple", "simplePast", "infinitive", "thirdPersonSingular", "presentParticiple", "plural", "comparative", "superlative", "audios", "Lfast/dic/dict/models/database/EnglishAudiosModel;", "isAudioOffline", "", "meanings", "", "Lfast/dic/dict/models/database/EnglishMeaningModel;", "englishSynonymsAntonyms", "Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;", "idioms", "Lfast/dic/dict/models/database/EnglishIdiomsModel;", "isNumber", "englishNumbers", "Lfast/dic/dict/models/database/SentenseModel;", "wordFamily", "Lfast/dic/dict/models/database/EnglishWordFamily;", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/EnglishAudiosModel;ZLjava/util/List;Ljava/util/List;Lfast/dic/dict/models/database/EnglishIdiomsModel;ZLfast/dic/dict/models/database/SentenseModel;Lfast/dic/dict/models/database/EnglishWordFamily;)V", "getWord", "()Ljava/lang/String;", "setWord", "(Ljava/lang/String;)V", "getWordId", "()Ljava/lang/Integer;", "setWordId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getWordDescriptionHtml", "setWordDescriptionHtml", "getPastParticiple", "setPastParticiple", "getSimplePast", "setSimplePast", "getInfinitive", "setInfinitive", "getThirdPersonSingular", "setThirdPersonSingular", "getPresentParticiple", "setPresentParticiple", "getPlural", "setPlural", "getComparative", "setComparative", "getSuperlative", "setSuperlative", "getAudios", "()Lfast/dic/dict/models/database/EnglishAudiosModel;", "setAudios", "(Lfast/dic/dict/models/database/EnglishAudiosModel;)V", "()Z", "setAudioOffline", "(Z)V", "getMeanings", "()Ljava/util/List;", "setMeanings", "(Ljava/util/List;)V", "getEnglishSynonymsAntonyms", "setEnglishSynonymsAntonyms", "getIdioms", "()Lfast/dic/dict/models/database/EnglishIdiomsModel;", "setIdioms", "(Lfast/dic/dict/models/database/EnglishIdiomsModel;)V", "setNumber", "getEnglishNumbers", "()Lfast/dic/dict/models/database/SentenseModel;", "setEnglishNumbers", "(Lfast/dic/dict/models/database/SentenseModel;)V", "getWordFamily", "()Lfast/dic/dict/models/database/EnglishWordFamily;", "setWordFamily", "(Lfast/dic/dict/models/database/EnglishWordFamily;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/EnglishAudiosModel;ZLjava/util/List;Ljava/util/List;Lfast/dic/dict/models/database/EnglishIdiomsModel;ZLfast/dic/dict/models/database/SentenseModel;Lfast/dic/dict/models/database/EnglishWordFamily;)Lfast/dic/dict/models/database/EnglishSearchResultModel;", "equals", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class EnglishSearchResultModel {
    private EnglishAudiosModel audios;
    private String comparative;
    private SentenseModel englishNumbers;
    private List<EnglishSynonymsAntonymModel> englishSynonymsAntonyms;
    private EnglishIdiomsModel idioms;
    private String infinitive;
    private boolean isAudioOffline;
    private boolean isNumber;
    private List<EnglishMeaningModel> meanings;
    private String pastParticiple;
    private String plural;
    private String presentParticiple;
    private String simplePast;
    private String superlative;
    private String thirdPersonSingular;
    private String word;
    private String wordDescriptionHtml;
    private EnglishWordFamily wordFamily;
    private Integer wordId;

    public EnglishSearchResultModel() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, false, null, null, 524287, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EnglishSearchResultModel copy$default(EnglishSearchResultModel englishSearchResultModel, String str, Integer num, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, EnglishAudiosModel englishAudiosModel, boolean z, List list, List list2, EnglishIdiomsModel englishIdiomsModel, boolean z2, SentenseModel sentenseModel, EnglishWordFamily englishWordFamily, int i, Object obj) {
        EnglishWordFamily englishWordFamily2;
        SentenseModel sentenseModel2;
        String str11 = (i & 1) != 0 ? englishSearchResultModel.word : str;
        Integer num2 = (i & 2) != 0 ? englishSearchResultModel.wordId : num;
        String str12 = (i & 4) != 0 ? englishSearchResultModel.wordDescriptionHtml : str2;
        String str13 = (i & 8) != 0 ? englishSearchResultModel.pastParticiple : str3;
        String str14 = (i & 16) != 0 ? englishSearchResultModel.simplePast : str4;
        String str15 = (i & 32) != 0 ? englishSearchResultModel.infinitive : str5;
        String str16 = (i & 64) != 0 ? englishSearchResultModel.thirdPersonSingular : str6;
        String str17 = (i & 128) != 0 ? englishSearchResultModel.presentParticiple : str7;
        String str18 = (i & 256) != 0 ? englishSearchResultModel.plural : str8;
        String str19 = (i & 512) != 0 ? englishSearchResultModel.comparative : str9;
        String str20 = (i & 1024) != 0 ? englishSearchResultModel.superlative : str10;
        EnglishAudiosModel englishAudiosModel2 = (i & 2048) != 0 ? englishSearchResultModel.audios : englishAudiosModel;
        boolean z3 = (i & 4096) != 0 ? englishSearchResultModel.isAudioOffline : z;
        List list3 = (i & 8192) != 0 ? englishSearchResultModel.meanings : list;
        String str21 = str11;
        List list4 = (i & 16384) != 0 ? englishSearchResultModel.englishSynonymsAntonyms : list2;
        EnglishIdiomsModel englishIdiomsModel2 = (i & 32768) != 0 ? englishSearchResultModel.idioms : englishIdiomsModel;
        boolean z4 = (i & 65536) != 0 ? englishSearchResultModel.isNumber : z2;
        SentenseModel sentenseModel3 = (i & 131072) != 0 ? englishSearchResultModel.englishNumbers : sentenseModel;
        if ((i & 262144) != 0) {
            sentenseModel2 = sentenseModel3;
            englishWordFamily2 = englishSearchResultModel.wordFamily;
        } else {
            englishWordFamily2 = englishWordFamily;
            sentenseModel2 = sentenseModel3;
        }
        return englishSearchResultModel.copy(str21, num2, str12, str13, str14, str15, str16, str17, str18, str19, str20, englishAudiosModel2, z3, list3, list4, englishIdiomsModel2, z4, sentenseModel2, englishWordFamily2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getWord() {
        return this.word;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getComparative() {
        return this.comparative;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getSuperlative() {
        return this.superlative;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final EnglishAudiosModel getAudios() {
        return this.audios;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final boolean getIsAudioOffline() {
        return this.isAudioOffline;
    }

    public final List<EnglishMeaningModel> component14() {
        return this.meanings;
    }

    public final List<EnglishSynonymsAntonymModel> component15() {
        return this.englishSynonymsAntonyms;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final EnglishIdiomsModel getIdioms() {
        return this.idioms;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final boolean getIsNumber() {
        return this.isNumber;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final SentenseModel getEnglishNumbers() {
        return this.englishNumbers;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final EnglishWordFamily getWordFamily() {
        return this.wordFamily;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getWordId() {
        return this.wordId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getWordDescriptionHtml() {
        return this.wordDescriptionHtml;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getPastParticiple() {
        return this.pastParticiple;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getSimplePast() {
        return this.simplePast;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getInfinitive() {
        return this.infinitive;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getThirdPersonSingular() {
        return this.thirdPersonSingular;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getPresentParticiple() {
        return this.presentParticiple;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getPlural() {
        return this.plural;
    }

    public final EnglishSearchResultModel copy(String word, Integer wordId, String wordDescriptionHtml, String pastParticiple, String simplePast, String infinitive, String thirdPersonSingular, String presentParticiple, String plural, String comparative, String superlative, EnglishAudiosModel audios, boolean isAudioOffline, List<EnglishMeaningModel> meanings, List<EnglishSynonymsAntonymModel> englishSynonymsAntonyms, EnglishIdiomsModel idioms, boolean isNumber, SentenseModel englishNumbers, EnglishWordFamily wordFamily) {
        return new EnglishSearchResultModel(word, wordId, wordDescriptionHtml, pastParticiple, simplePast, infinitive, thirdPersonSingular, presentParticiple, plural, comparative, superlative, audios, isAudioOffline, meanings, englishSynonymsAntonyms, idioms, isNumber, englishNumbers, wordFamily);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EnglishSearchResultModel)) {
            return false;
        }
        EnglishSearchResultModel englishSearchResultModel = (EnglishSearchResultModel) other;
        return Intrinsics.areEqual(this.word, englishSearchResultModel.word) && Intrinsics.areEqual(this.wordId, englishSearchResultModel.wordId) && Intrinsics.areEqual(this.wordDescriptionHtml, englishSearchResultModel.wordDescriptionHtml) && Intrinsics.areEqual(this.pastParticiple, englishSearchResultModel.pastParticiple) && Intrinsics.areEqual(this.simplePast, englishSearchResultModel.simplePast) && Intrinsics.areEqual(this.infinitive, englishSearchResultModel.infinitive) && Intrinsics.areEqual(this.thirdPersonSingular, englishSearchResultModel.thirdPersonSingular) && Intrinsics.areEqual(this.presentParticiple, englishSearchResultModel.presentParticiple) && Intrinsics.areEqual(this.plural, englishSearchResultModel.plural) && Intrinsics.areEqual(this.comparative, englishSearchResultModel.comparative) && Intrinsics.areEqual(this.superlative, englishSearchResultModel.superlative) && Intrinsics.areEqual(this.audios, englishSearchResultModel.audios) && this.isAudioOffline == englishSearchResultModel.isAudioOffline && Intrinsics.areEqual(this.meanings, englishSearchResultModel.meanings) && Intrinsics.areEqual(this.englishSynonymsAntonyms, englishSearchResultModel.englishSynonymsAntonyms) && Intrinsics.areEqual(this.idioms, englishSearchResultModel.idioms) && this.isNumber == englishSearchResultModel.isNumber && Intrinsics.areEqual(this.englishNumbers, englishSearchResultModel.englishNumbers) && Intrinsics.areEqual(this.wordFamily, englishSearchResultModel.wordFamily);
    }

    public int hashCode() {
        String str = this.word;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.wordId;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.wordDescriptionHtml;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.pastParticiple;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.simplePast;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.infinitive;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.thirdPersonSingular;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.presentParticiple;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.plural;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.comparative;
        int iHashCode10 = (iHashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.superlative;
        int iHashCode11 = (iHashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31;
        EnglishAudiosModel englishAudiosModel = this.audios;
        int iHashCode12 = (((iHashCode11 + (englishAudiosModel == null ? 0 : englishAudiosModel.hashCode())) * 31) + Boolean.hashCode(this.isAudioOffline)) * 31;
        List<EnglishMeaningModel> list = this.meanings;
        int iHashCode13 = (iHashCode12 + (list == null ? 0 : list.hashCode())) * 31;
        List<EnglishSynonymsAntonymModel> list2 = this.englishSynonymsAntonyms;
        int iHashCode14 = (iHashCode13 + (list2 == null ? 0 : list2.hashCode())) * 31;
        EnglishIdiomsModel englishIdiomsModel = this.idioms;
        int iHashCode15 = (((iHashCode14 + (englishIdiomsModel == null ? 0 : englishIdiomsModel.hashCode())) * 31) + Boolean.hashCode(this.isNumber)) * 31;
        SentenseModel sentenseModel = this.englishNumbers;
        int iHashCode16 = (iHashCode15 + (sentenseModel == null ? 0 : sentenseModel.hashCode())) * 31;
        EnglishWordFamily englishWordFamily = this.wordFamily;
        return iHashCode16 + (englishWordFamily != null ? englishWordFamily.hashCode() : 0);
    }

    public String toString() {
        return "EnglishSearchResultModel(word=" + this.word + ", wordId=" + this.wordId + ", wordDescriptionHtml=" + this.wordDescriptionHtml + ", pastParticiple=" + this.pastParticiple + ", simplePast=" + this.simplePast + ", infinitive=" + this.infinitive + ", thirdPersonSingular=" + this.thirdPersonSingular + ", presentParticiple=" + this.presentParticiple + ", plural=" + this.plural + ", comparative=" + this.comparative + ", superlative=" + this.superlative + ", audios=" + this.audios + ", isAudioOffline=" + this.isAudioOffline + ", meanings=" + this.meanings + ", englishSynonymsAntonyms=" + this.englishSynonymsAntonyms + ", idioms=" + this.idioms + ", isNumber=" + this.isNumber + ", englishNumbers=" + this.englishNumbers + ", wordFamily=" + this.wordFamily + ")";
    }

    public EnglishSearchResultModel(String str, Integer num, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, EnglishAudiosModel englishAudiosModel, boolean z, List<EnglishMeaningModel> list, List<EnglishSynonymsAntonymModel> list2, EnglishIdiomsModel englishIdiomsModel, boolean z2, SentenseModel sentenseModel, EnglishWordFamily englishWordFamily) {
        this.word = str;
        this.wordId = num;
        this.wordDescriptionHtml = str2;
        this.pastParticiple = str3;
        this.simplePast = str4;
        this.infinitive = str5;
        this.thirdPersonSingular = str6;
        this.presentParticiple = str7;
        this.plural = str8;
        this.comparative = str9;
        this.superlative = str10;
        this.audios = englishAudiosModel;
        this.isAudioOffline = z;
        this.meanings = list;
        this.englishSynonymsAntonyms = list2;
        this.idioms = englishIdiomsModel;
        this.isNumber = z2;
        this.englishNumbers = sentenseModel;
        this.wordFamily = englishWordFamily;
    }

    public /* synthetic */ EnglishSearchResultModel(String str, Integer num, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, EnglishAudiosModel englishAudiosModel, boolean z, List list, List list2, EnglishIdiomsModel englishIdiomsModel, boolean z2, SentenseModel sentenseModel, EnglishWordFamily englishWordFamily, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? null : str6, (i & 128) != 0 ? null : str7, (i & 256) != 0 ? null : str8, (i & 512) != 0 ? null : str9, (i & 1024) != 0 ? null : str10, (i & 2048) != 0 ? null : englishAudiosModel, (i & 4096) != 0 ? false : z, (i & 8192) != 0 ? null : list, (i & 16384) != 0 ? null : list2, (i & 32768) != 0 ? null : englishIdiomsModel, (i & 65536) != 0 ? false : z2, (i & 131072) != 0 ? null : sentenseModel, (i & 262144) != 0 ? null : englishWordFamily);
    }

    public final String getWord() {
        return this.word;
    }

    public final void setWord(String str) {
        this.word = str;
    }

    public final Integer getWordId() {
        return this.wordId;
    }

    public final void setWordId(Integer num) {
        this.wordId = num;
    }

    public final String getWordDescriptionHtml() {
        return this.wordDescriptionHtml;
    }

    public final void setWordDescriptionHtml(String str) {
        this.wordDescriptionHtml = str;
    }

    public final String getPastParticiple() {
        return this.pastParticiple;
    }

    public final void setPastParticiple(String str) {
        this.pastParticiple = str;
    }

    public final String getSimplePast() {
        return this.simplePast;
    }

    public final void setSimplePast(String str) {
        this.simplePast = str;
    }

    public final String getInfinitive() {
        return this.infinitive;
    }

    public final void setInfinitive(String str) {
        this.infinitive = str;
    }

    public final String getThirdPersonSingular() {
        return this.thirdPersonSingular;
    }

    public final void setThirdPersonSingular(String str) {
        this.thirdPersonSingular = str;
    }

    public final String getPresentParticiple() {
        return this.presentParticiple;
    }

    public final void setPresentParticiple(String str) {
        this.presentParticiple = str;
    }

    public final String getPlural() {
        return this.plural;
    }

    public final void setPlural(String str) {
        this.plural = str;
    }

    public final String getComparative() {
        return this.comparative;
    }

    public final void setComparative(String str) {
        this.comparative = str;
    }

    public final String getSuperlative() {
        return this.superlative;
    }

    public final void setSuperlative(String str) {
        this.superlative = str;
    }

    public final EnglishAudiosModel getAudios() {
        return this.audios;
    }

    public final void setAudios(EnglishAudiosModel englishAudiosModel) {
        this.audios = englishAudiosModel;
    }

    public final boolean isAudioOffline() {
        return this.isAudioOffline;
    }

    public final void setAudioOffline(boolean z) {
        this.isAudioOffline = z;
    }

    public final List<EnglishMeaningModel> getMeanings() {
        return this.meanings;
    }

    public final void setMeanings(List<EnglishMeaningModel> list) {
        this.meanings = list;
    }

    public final List<EnglishSynonymsAntonymModel> getEnglishSynonymsAntonyms() {
        return this.englishSynonymsAntonyms;
    }

    public final void setEnglishSynonymsAntonyms(List<EnglishSynonymsAntonymModel> list) {
        this.englishSynonymsAntonyms = list;
    }

    public final EnglishIdiomsModel getIdioms() {
        return this.idioms;
    }

    public final void setIdioms(EnglishIdiomsModel englishIdiomsModel) {
        this.idioms = englishIdiomsModel;
    }

    public final boolean isNumber() {
        return this.isNumber;
    }

    public final void setNumber(boolean z) {
        this.isNumber = z;
    }

    public final SentenseModel getEnglishNumbers() {
        return this.englishNumbers;
    }

    public final void setEnglishNumbers(SentenseModel sentenseModel) {
        this.englishNumbers = sentenseModel;
    }

    public final EnglishWordFamily getWordFamily() {
        return this.wordFamily;
    }

    public final void setWordFamily(EnglishWordFamily englishWordFamily) {
        this.wordFamily = englishWordFamily;
    }
}
