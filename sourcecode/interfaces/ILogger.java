package fast.dic.dict.interfaces;

import fast.dic.dict.utils.LogLevel;
import kotlin.Metadata;

/* JADX INFO: compiled from: ILogger.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\t\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u0007H&J/\u0010\u000b\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\n2\u0016\u0010\r\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u000e\"\u0004\u0018\u00010\u0001H&¢\u0006\u0002\u0010\u000fJ/\u0010\u0010\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\n2\u0016\u0010\r\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u000e\"\u0004\u0018\u00010\u0001H&¢\u0006\u0002\u0010\u000fJ/\u0010\u0011\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\n2\u0016\u0010\r\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u000e\"\u0004\u0018\u00010\u0001H&¢\u0006\u0002\u0010\u000fJ/\u0010\u0012\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\n2\u0016\u0010\r\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u000e\"\u0004\u0018\u00010\u0001H&¢\u0006\u0002\u0010\u000fJ/\u0010\u0013\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\n2\u0016\u0010\r\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u000e\"\u0004\u0018\u00010\u0001H&¢\u0006\u0002\u0010\u000fJ/\u0010\u0014\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\n2\u0016\u0010\r\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u000e\"\u0004\u0018\u00010\u0001H&¢\u0006\u0002\u0010\u000fJ/\u0010\u0015\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\n2\u0016\u0010\r\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u000e\"\u0004\u0018\u00010\u0001H&¢\u0006\u0002\u0010\u000fJ\b\u0010\u0016\u001a\u00020\u0003H&¨\u0006\u0017À\u0006\u0003"}, d2 = {"Lfast/dic/dict/interfaces/ILogger;", "", "setLogLevel", "", "logLevel", "Lfast/dic/dict/utils/LogLevel;", "isReleaseMode", "", "setLogLevelString", "logLevelString", "", "verbose", "message", "parameters", "", "(Ljava/lang/String;[Ljava/lang/Object;)V", "debug", "info", "warn", "warnInProduction", "error", "Assert", "lockLogLevel", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public interface ILogger {
    void Assert(String message, Object... parameters);

    void debug(String message, Object... parameters);

    void error(String message, Object... parameters);

    void info(String message, Object... parameters);

    void lockLogLevel();

    void setLogLevel(LogLevel logLevel, boolean isReleaseMode);

    void setLogLevelString(String logLevelString, boolean isReleaseMode);

    void verbose(String message, Object... parameters);

    void warn(String message, Object... parameters);

    void warnInProduction(String message, Object... parameters);
}
