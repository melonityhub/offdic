package fast.dic.dict.utils;

import android.util.Log;
import fast.dic.dict.interfaces.ILogger;
import fast.dic.dict.p000const.ConfigConstKt;
import io.sentry.SentryEvent;
import java.util.Arrays;
import java.util.Locale;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\n\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\r\b\u0007\u001a\u0002\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J/\u0010\u000f\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0002\u0010\u0014J/\u0010\u0015\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0002\u0010\u0014J/\u0010\u0016\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0002\u0010\u0014J/\u0010\u0017\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0002\u0010\u0014J/\u0010\u0018\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0002\u0010\u0014J/\u0010\u0019\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0002\u0010\u0014J/\u0010\u001a\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0002\u0010\u0014J\b\u0010\u001b\u001a\u00020\u000bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lfast/dic/dict/utils/Logger;", "Lfast/dic/dict/interfaces/ILogger;", "<init>", "()V", "Ljavax/inject/Inject;", "isReleaseMode", "", "logLevelLocked", "logLevel", "Lfast/dic/dict/utils/LogLevel;", "setLogLevel", "", "setLogLevelString", "logLevelString", "", "verbose", "message", "parameters", "", "", "(Ljava/lang/String;[Ljava/lang/Object;)V", "debug", "info", "warn", "warnInProduction", "error", "Assert", "lockLogLevel", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class Logger implements ILogger {
    private static final String formatErrorMessage = "Error formating log message: %s, with params: %s";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Logger logger = new Logger();
    private LogLevel logLevel = LogLevel.VERBOSE;
    private boolean isReleaseMode = true;
    private boolean logLevelLocked = false;

    @Inject
    public Logger() {
        setLogLevel(LogLevel.VERBOSE, this.isReleaseMode);
    }

    @Override // fast.dic.dict.interfaces.ILogger
    public void setLogLevel(LogLevel logLevel, boolean isReleaseMode) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        if (this.logLevelLocked) {
            return;
        }
        this.logLevel = logLevel;
        this.isReleaseMode = isReleaseMode;
    }

    @Override // fast.dic.dict.interfaces.ILogger
    public void setLogLevelString(String logLevelString, boolean isReleaseMode) {
        if (logLevelString != null) {
            try {
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String upperCase = logLevelString.toUpperCase(US);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                setLogLevel(LogLevel.valueOf(upperCase), isReleaseMode);
            } catch (IllegalArgumentException unused) {
                error("Malformed logLevel '%s', falling back to 'info'", logLevelString);
            }
        }
    }

    @Override // fast.dic.dict.interfaces.ILogger
    public void verbose(String message, Object... parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        if (!this.isReleaseMode && this.logLevel.getAndroidLogLevel() <= 2) {
            try {
                Log.v(ConfigConstKt.LOG_TAG, Util.INSTANCE.formatString(message, parameters));
            } catch (Exception e) {
                e.printStackTrace();
                Log.e(ConfigConstKt.LOG_TAG, Util.INSTANCE.formatString(formatErrorMessage, message, Arrays.toString(parameters)));
            }
        }
    }

    @Override // fast.dic.dict.interfaces.ILogger
    public void debug(String message, Object... parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        if (!this.isReleaseMode && this.logLevel.getAndroidLogLevel() <= 3) {
            try {
                Log.d(ConfigConstKt.LOG_TAG, Util.INSTANCE.formatString(message, parameters));
            } catch (Exception e) {
                e.printStackTrace();
                Log.e(ConfigConstKt.LOG_TAG, Util.INSTANCE.formatString(formatErrorMessage, message, Arrays.toString(parameters)));
            }
        }
    }

    @Override // fast.dic.dict.interfaces.ILogger
    public void info(String message, Object... parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        if (!this.isReleaseMode && this.logLevel.getAndroidLogLevel() <= 4) {
            try {
                Log.i(ConfigConstKt.LOG_TAG, Util.INSTANCE.formatString(message, parameters));
            } catch (Exception e) {
                e.printStackTrace();
                Log.e(ConfigConstKt.LOG_TAG, Util.INSTANCE.formatString(formatErrorMessage, message, Arrays.toString(parameters)));
            }
        }
    }

    @Override // fast.dic.dict.interfaces.ILogger
    public void warn(String message, Object... parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        if (!this.isReleaseMode && this.logLevel.getAndroidLogLevel() <= 5) {
            try {
                Log.w(ConfigConstKt.LOG_TAG, Util.INSTANCE.formatString(message, parameters));
            } catch (Exception e) {
                e.printStackTrace();
                Log.e(ConfigConstKt.LOG_TAG, Util.INSTANCE.formatString(formatErrorMessage, message, Arrays.toString(parameters)));
            }
        }
    }

    @Override // fast.dic.dict.interfaces.ILogger
    public void warnInProduction(String message, Object... parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        if (this.logLevel.getAndroidLogLevel() <= 5) {
            try {
                Log.w(ConfigConstKt.LOG_TAG, Util.INSTANCE.formatString(message, parameters));
            } catch (Exception e) {
                e.printStackTrace();
                Log.e(ConfigConstKt.LOG_TAG, Util.INSTANCE.formatString(formatErrorMessage, message, Arrays.toString(parameters)));
            }
        }
    }

    @Override // fast.dic.dict.interfaces.ILogger
    public void error(String message, Object... parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        if (this.logLevel.getAndroidLogLevel() <= 6) {
            try {
                Log.e(ConfigConstKt.LOG_TAG, Util.INSTANCE.formatString(message, parameters));
            } catch (Exception e) {
                e.printStackTrace();
                Log.e(ConfigConstKt.LOG_TAG, Util.INSTANCE.formatString(formatErrorMessage, message, Arrays.toString(parameters)));
            }
        }
    }

    @Override // fast.dic.dict.interfaces.ILogger
    public void Assert(String message, Object... parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        if (this.logLevel.getAndroidLogLevel() <= 7) {
            try {
                Log.println(7, ConfigConstKt.LOG_TAG, Util.INSTANCE.formatString(message, parameters));
            } catch (Exception e) {
                e.printStackTrace();
                Log.e(ConfigConstKt.LOG_TAG, Util.INSTANCE.formatString(formatErrorMessage, message, Arrays.toString(parameters)));
            }
        }
    }

    @Override // fast.dic.dict.interfaces.ILogger
    public void lockLogLevel() {
        this.logLevelLocked = true;
    }

    /* JADX INFO: compiled from: Logger.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\u0006\u001a\u00020\u0005H\u0007b\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\n¢\u0006\u0002\b\nR\u0013\u0010\u0004\u001a\u00020\u00058F¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lfast/dic/dict/utils/Logger$Companion;", "", "<init>", "()V", SentryEvent.JsonKeys.LOGGER, "Lfast/dic/dict/utils/Logger;", "getLogger", "()Lfast/dic/dict/utils/Logger;", "formatErrorMessage", "", "getLogger1", "Lkotlin/jvm/JvmName;", "name", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Logger getLogger() {
            Logger.logger.setLogLevel(LogLevel.INFO, true);
            return Logger.logger;
        }

        public final Logger getLogger1() {
            return getLogger();
        }
    }
}
