package fast.dic.dict.services.parse;

import android.content.Context;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ParseError.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lfast/dic/dict/services/parse/ParseError;", "", "<init>", "()V", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class ParseError {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: ParseError.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n¨\u0006\u000b"}, d2 = {"Lfast/dic/dict/services/parse/ParseError$Companion;", "", "<init>", "()V", "getRightMessage", "", "message", "code", "", Names.CONTEXT, "Landroid/content/Context;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getRightMessage(String message, int code, Context context) {
            Intrinsics.checkNotNullParameter(message, "message");
            if (context != null) {
                if (message == "The data couldn’t be read because it isn’t in the correct format.") {
                    String string = context.getString(R.string.server_has_problem_please_try_again);
                    Intrinsics.checkNotNull(string);
                    return string;
                }
                if (code == 100) {
                    String string2 = context.getString(R.string.check_internet_connection);
                    Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                    return string2;
                }
                if (code == 101) {
                    String string3 = context.getString(R.string.password_is_wrong);
                    Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                    return string3;
                }
                if (code == 205) {
                    String string4 = context.getString(R.string.email_address_is_wrong);
                    Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                    return string4;
                }
            }
            return message;
        }
    }
}
