package fast.dic.dict.utils;

import androidx.core.text.util.LocalePreferences;
import io.sentry.Session;
import io.sentry.metrics.MetricsUnit;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Irregular.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lfast/dic/dict/utils/Irregular;", "", "<init>", "()V", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class Irregular {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: Irregular.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\nH\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\nH\u0002¨\u0006\f"}, d2 = {"Lfast/dic/dict/utils/Irregular$Companion;", "", "<init>", "()V", "isPastParticipleExists", "", "word", "", "isSimplePastExists", "getAllPastParticiple", "", "getAllSimplePast", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isPastParticipleExists(String word) {
            Intrinsics.checkNotNullParameter(word, "word");
            return getAllPastParticiple().contains(word);
        }

        public final boolean isSimplePastExists(String word) {
            Intrinsics.checkNotNullParameter(word, "word");
            return getAllSimplePast().contains(word);
        }

        private final List<String> getAllPastParticiple() {
            return CollectionsKt.listOf((Object[]) new String[]{"rung", "let", "hidden", "stuck", "slept", "swept", "wound", "gotten", "bought", "won", "clung", "hit", "knelt", "grown", "run", "meant", "fallen", "been", "dug", "broken", "slain", "hung", "knit", "forgotten", "flown", "stunk", "cost", "shrunk", "forbidden", "fit", "told", "paid", "caught", "swum", "borne", "upset", "shut", "frozen", "taught", "shown", "had", "risen", "burst", "spread", "saw", "built", "brought", "sped", "done", "left", "struck", "spent", "drunk", "lost", "seen", "woven", "wept", "lain", "fled", "felt", "written", "known", "sought", "drawn", "worn", "lit", "blest", "sent", "thought", "quit", "sold", "hurt", "put", "found", "ridden", "understood", "given", "led", "made", "begun", LocalePreferences.FirstDayOfWeek.SATURDAY, "eaten", "crept", "wrung", "ground", "driven", "chosen", "sunk", "spit", "shot", "spoken", "lent", "read", "stolen", "torn", "blessed", "said", "bent", "bet", "shaven", "shorn", "sworn", "beaten", "met", "flung", "cut", "stung", "bitten", "come", "stood", "sprung", "kept", "split", "spun", "fought", "dealt", "blown", "fed", "become", "gone", "sung", "set", "burnt", "forgiven", "heard", "held", "laid", "sewn", "shaken", "thrown", "woken", "slid", "swung", "taken", "withdrawn", "forgone", "leapt", "leaped", "proven", "strewn", "undergone", "shone", "snuck", "spilt", "striven", "thriven", "dived", "bled", "awoken", "arisen", "smugger", "smuggest"});
        }

        private final List<String> getAllSimplePast() {
            return CollectionsKt.listOf((Object[]) new String[]{"went", "let", "beat", "throve", "stuck", "slept", "swept", "wound", "bought", "won", "clung", "hit", "forgot", "knelt", "tore", "woke", "rang", "took", "meant", "stole", "rode", "wove", "shook", "dug", "chose", "got", "slew", "hung", "bore", "knit", "became", "froze", "arose", "stunk", "cost", "smug", "fit", "began", "told", "paid", "knew", "caught", "swam", "wore", "upset", "shut", "blew", "flew", "taught", "wrote", "had", "sawn", "burst", "forgave", "spread", "saw", "built", "brought", "sped", "spoke", "left", "struck", "spent", "lost", "wept", "drank", "fled", "felt", "drove", "sought", "grew", "sheared", "were", "lit", "blest", "sent", "thought", "quit", "sold", "rose", "hurt", "put", "found", "fell", "ate", "understood", "led", "made", "sprang", LocalePreferences.FirstDayOfWeek.SATURDAY, "crept", "awoke", "wrung", "swore", MetricsUnit.Information.BIT, "ground", "spit", "shot", "sank", "lent", "read", "drew", "blessed", "said", "bent", "bet", "broke", "ran", "came", "threw", Session.JsonKeys.DID, "met", "flung", "cut", "strove", "sang", "stung", "stood", "hid", "kept", "split", "spun", "fought", "dealt", "fed", "was", "strode", "gave", "dove", "lay", "set", "burnt", "heard", "held", "laid", "sewed", "showed", "shrank", "slid", "swung", "withdrew", "forwent", "leapt", "leaped", "sawed", "proved", "strewed", "underwent", "shaved", "shone", "snuck", "spilt", "bled"});
        }
    }
}
