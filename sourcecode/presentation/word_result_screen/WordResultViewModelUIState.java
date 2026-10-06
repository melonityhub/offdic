package fast.dic.dict.presentation.word_result_screen;

import fast.dic.dict.models.database.SearchResultModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WordResultViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0007\u0004\u0005\u0006\u0007\b\t\nB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0007\u000b\f\r\u000e\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;", "", "<init>", "()V", "Loading", "HtmlResult", "HtmlNumberResult", "TranslatorHtmlResult", "ErrorResult", "ErrorUnauthorized", "ErrorAccessDenied", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorAccessDenied;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorResult;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorUnauthorized;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlNumberResult;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlResult;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$Loading;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class WordResultViewModelUIState {
    public /* synthetic */ WordResultViewModelUIState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0083\u0004J\n\u0010\b\u001a\u00020\tHÖ\u0081\u0004J\n\u0010\n\u001a\u00020\u000bHÖ\u0081\u0004¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$Loading;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Loading extends WordResultViewModelUIState {
        public static final Loading INSTANCE = new Loading();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Loading)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -327330139;
        }

        public String toString() {
            return "Loading";
        }

        private Loading() {
            super(null);
        }
    }

    private WordResultViewModelUIState() {
    }

    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlResult;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;", "html", "", "result", "Lfast/dic/dict/models/database/SearchResultModel;", "<init>", "(Ljava/lang/String;Lfast/dic/dict/models/database/SearchResultModel;)V", "getHtml", "()Ljava/lang/String;", "getResult", "()Lfast/dic/dict/models/database/SearchResultModel;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class HtmlResult extends WordResultViewModelUIState {
        private final String html;
        private final SearchResultModel result;

        public static /* synthetic */ HtmlResult copy$default(HtmlResult htmlResult, String str, SearchResultModel searchResultModel, int i, Object obj) {
            if ((i & 1) != 0) {
                str = htmlResult.html;
            }
            if ((i & 2) != 0) {
                searchResultModel = htmlResult.result;
            }
            return htmlResult.copy(str, searchResultModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getHtml() {
            return this.html;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final SearchResultModel getResult() {
            return this.result;
        }

        public final HtmlResult copy(String html, SearchResultModel result) {
            Intrinsics.checkNotNullParameter(html, "html");
            Intrinsics.checkNotNullParameter(result, "result");
            return new HtmlResult(html, result);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof HtmlResult)) {
                return false;
            }
            HtmlResult htmlResult = (HtmlResult) other;
            return Intrinsics.areEqual(this.html, htmlResult.html) && Intrinsics.areEqual(this.result, htmlResult.result);
        }

        public int hashCode() {
            return (this.html.hashCode() * 31) + this.result.hashCode();
        }

        public String toString() {
            return "HtmlResult(html=" + this.html + ", result=" + this.result + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HtmlResult(String html, SearchResultModel result) {
            super(null);
            Intrinsics.checkNotNullParameter(html, "html");
            Intrinsics.checkNotNullParameter(result, "result");
            this.html = html;
            this.result = result;
        }

        public final String getHtml() {
            return this.html;
        }

        public final SearchResultModel getResult() {
            return this.result;
        }
    }

    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\bHÆ\u0003J?\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0014\u0010\u0017\u001a\u00020\b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0083\u0004J\n\u0010\u001a\u001a\u00020\u001bHÖ\u0081\u0004J\n\u0010\u001c\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0010¨\u0006\u001d"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlNumberResult;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;", "html", "", "word", "meaning", "number", "isDarkMode", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getHtml", "()Ljava/lang/String;", "getWord", "getMeaning", "getNumber", "()Z", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class HtmlNumberResult extends WordResultViewModelUIState {
        private final String html;
        private final boolean isDarkMode;
        private final String meaning;
        private final String number;
        private final String word;

        public static /* synthetic */ HtmlNumberResult copy$default(HtmlNumberResult htmlNumberResult, String str, String str2, String str3, String str4, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = htmlNumberResult.html;
            }
            if ((i & 2) != 0) {
                str2 = htmlNumberResult.word;
            }
            if ((i & 4) != 0) {
                str3 = htmlNumberResult.meaning;
            }
            if ((i & 8) != 0) {
                str4 = htmlNumberResult.number;
            }
            if ((i & 16) != 0) {
                z = htmlNumberResult.isDarkMode;
            }
            boolean z2 = z;
            String str5 = str3;
            return htmlNumberResult.copy(str, str2, str5, str4, z2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getHtml() {
            return this.html;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getWord() {
            return this.word;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getMeaning() {
            return this.meaning;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getNumber() {
            return this.number;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final boolean getIsDarkMode() {
            return this.isDarkMode;
        }

        public final HtmlNumberResult copy(String html, String word, String meaning, String number, boolean isDarkMode) {
            Intrinsics.checkNotNullParameter(html, "html");
            Intrinsics.checkNotNullParameter(number, "number");
            return new HtmlNumberResult(html, word, meaning, number, isDarkMode);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof HtmlNumberResult)) {
                return false;
            }
            HtmlNumberResult htmlNumberResult = (HtmlNumberResult) other;
            return Intrinsics.areEqual(this.html, htmlNumberResult.html) && Intrinsics.areEqual(this.word, htmlNumberResult.word) && Intrinsics.areEqual(this.meaning, htmlNumberResult.meaning) && Intrinsics.areEqual(this.number, htmlNumberResult.number) && this.isDarkMode == htmlNumberResult.isDarkMode;
        }

        public int hashCode() {
            int iHashCode = this.html.hashCode() * 31;
            String str = this.word;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.meaning;
            return ((((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.number.hashCode()) * 31) + Boolean.hashCode(this.isDarkMode);
        }

        public String toString() {
            return "HtmlNumberResult(html=" + this.html + ", word=" + this.word + ", meaning=" + this.meaning + ", number=" + this.number + ", isDarkMode=" + this.isDarkMode + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HtmlNumberResult(String html, String str, String str2, String number, boolean z) {
            super(null);
            Intrinsics.checkNotNullParameter(html, "html");
            Intrinsics.checkNotNullParameter(number, "number");
            this.html = html;
            this.word = str;
            this.meaning = str2;
            this.number = number;
            this.isDarkMode = z;
        }

        public final String getHtml() {
            return this.html;
        }

        public final String getWord() {
            return this.word;
        }

        public final String getMeaning() {
            return this.meaning;
        }

        public final String getNumber() {
            return this.number;
        }

        public final boolean isDarkMode() {
            return this.isDarkMode;
        }
    }

    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J=\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u0016\u001a\u00020\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0083\u0004J\n\u0010\u0019\u001a\u00020\u001aHÖ\u0081\u0004J\n\u0010\u001b\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u000f¨\u0006\u001c"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;", "html", "", "sentence", "meaning", "isDarkMode", "", "isNoInternetMessage", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V", "getHtml", "()Ljava/lang/String;", "getSentence", "getMeaning", "()Z", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class TranslatorHtmlResult extends WordResultViewModelUIState {
        private final String html;
        private final boolean isDarkMode;
        private final boolean isNoInternetMessage;
        private final String meaning;
        private final String sentence;

        public static /* synthetic */ TranslatorHtmlResult copy$default(TranslatorHtmlResult translatorHtmlResult, String str, String str2, String str3, boolean z, boolean z2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = translatorHtmlResult.html;
            }
            if ((i & 2) != 0) {
                str2 = translatorHtmlResult.sentence;
            }
            if ((i & 4) != 0) {
                str3 = translatorHtmlResult.meaning;
            }
            if ((i & 8) != 0) {
                z = translatorHtmlResult.isDarkMode;
            }
            if ((i & 16) != 0) {
                z2 = translatorHtmlResult.isNoInternetMessage;
            }
            boolean z3 = z2;
            String str4 = str3;
            return translatorHtmlResult.copy(str, str2, str4, z, z3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getHtml() {
            return this.html;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getSentence() {
            return this.sentence;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getMeaning() {
            return this.meaning;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final boolean getIsDarkMode() {
            return this.isDarkMode;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final boolean getIsNoInternetMessage() {
            return this.isNoInternetMessage;
        }

        public final TranslatorHtmlResult copy(String html, String sentence, String meaning, boolean isDarkMode, boolean isNoInternetMessage) {
            Intrinsics.checkNotNullParameter(html, "html");
            Intrinsics.checkNotNullParameter(sentence, "sentence");
            return new TranslatorHtmlResult(html, sentence, meaning, isDarkMode, isNoInternetMessage);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TranslatorHtmlResult)) {
                return false;
            }
            TranslatorHtmlResult translatorHtmlResult = (TranslatorHtmlResult) other;
            return Intrinsics.areEqual(this.html, translatorHtmlResult.html) && Intrinsics.areEqual(this.sentence, translatorHtmlResult.sentence) && Intrinsics.areEqual(this.meaning, translatorHtmlResult.meaning) && this.isDarkMode == translatorHtmlResult.isDarkMode && this.isNoInternetMessage == translatorHtmlResult.isNoInternetMessage;
        }

        public int hashCode() {
            int iHashCode = ((this.html.hashCode() * 31) + this.sentence.hashCode()) * 31;
            String str = this.meaning;
            return ((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Boolean.hashCode(this.isDarkMode)) * 31) + Boolean.hashCode(this.isNoInternetMessage);
        }

        public String toString() {
            return "TranslatorHtmlResult(html=" + this.html + ", sentence=" + this.sentence + ", meaning=" + this.meaning + ", isDarkMode=" + this.isDarkMode + ", isNoInternetMessage=" + this.isNoInternetMessage + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TranslatorHtmlResult(String html, String sentence, String str, boolean z, boolean z2) {
            super(null);
            Intrinsics.checkNotNullParameter(html, "html");
            Intrinsics.checkNotNullParameter(sentence, "sentence");
            this.html = html;
            this.sentence = sentence;
            this.meaning = str;
            this.isDarkMode = z;
            this.isNoInternetMessage = z2;
        }

        public /* synthetic */ TranslatorHtmlResult(String str, String str2, String str3, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, z, (i & 16) != 0 ? false : z2);
        }

        public final String getHtml() {
            return this.html;
        }

        public final String getSentence() {
            return this.sentence;
        }

        public final String getMeaning() {
            return this.meaning;
        }

        public final boolean isDarkMode() {
            return this.isDarkMode;
        }

        public final boolean isNoInternetMessage() {
            return this.isNoInternetMessage;
        }
    }

    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorResult;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;", "result", "", "<init>", "(Ljava/lang/String;)V", "getResult", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class ErrorResult extends WordResultViewModelUIState {
        private final String result;

        public static /* synthetic */ ErrorResult copy$default(ErrorResult errorResult, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = errorResult.result;
            }
            return errorResult.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getResult() {
            return this.result;
        }

        public final ErrorResult copy(String result) {
            Intrinsics.checkNotNullParameter(result, "result");
            return new ErrorResult(result);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ErrorResult) && Intrinsics.areEqual(this.result, ((ErrorResult) other).result);
        }

        public int hashCode() {
            return this.result.hashCode();
        }

        public String toString() {
            return "ErrorResult(result=" + this.result + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ErrorResult(String result) {
            super(null);
            Intrinsics.checkNotNullParameter(result, "result");
            this.result = result;
        }

        public final String getResult() {
            return this.result;
        }
    }

    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0083\u0004J\n\u0010\b\u001a\u00020\tHÖ\u0081\u0004J\n\u0010\n\u001a\u00020\u000bHÖ\u0081\u0004¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorUnauthorized;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class ErrorUnauthorized extends WordResultViewModelUIState {
        public static final ErrorUnauthorized INSTANCE = new ErrorUnauthorized();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ErrorUnauthorized)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 1995127109;
        }

        public String toString() {
            return "ErrorUnauthorized";
        }

        private ErrorUnauthorized() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0083\u0004J\n\u0010\b\u001a\u00020\tHÖ\u0081\u0004J\n\u0010\n\u001a\u00020\u000bHÖ\u0081\u0004¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorAccessDenied;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class ErrorAccessDenied extends WordResultViewModelUIState {
        public static final ErrorAccessDenied INSTANCE = new ErrorAccessDenied();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ErrorAccessDenied)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1351589264;
        }

        public String toString() {
            return "ErrorAccessDenied";
        }

        private ErrorAccessDenied() {
            super(null);
        }
    }
}
