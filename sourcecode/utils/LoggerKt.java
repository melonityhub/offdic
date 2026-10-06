package fast.dic.dict.utils;

import io.sentry.SentryEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\"\u001a\u0010\u0000\u001a\u00020\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {SentryEvent.JsonKeys.LOGGER, "Lfast/dic/dict/utils/Logger;", "getLogger", "()Lfast/dic/dict/utils/Logger;", "setLogger", "(Lfast/dic/dict/utils/Logger;)V", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class LoggerKt {
    private static Logger logger = Logger.INSTANCE.getLogger1();

    public static final Logger getLogger() {
        return logger;
    }

    public static final void setLogger(Logger logger2) {
        Intrinsics.checkNotNullParameter(logger2, "<set-?>");
        logger = logger2;
    }
}
