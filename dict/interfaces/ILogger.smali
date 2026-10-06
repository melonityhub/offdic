.class public interface abstract Lfast/dic/dict/interfaces/ILogger;
.super Ljava/lang/Object;
.source "ILogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\t\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u0007H&J/\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0016\u0010\r\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000e\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u000fJ/\u0010\u0010\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0016\u0010\r\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000e\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u000fJ/\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0016\u0010\r\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000e\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u000fJ/\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0016\u0010\r\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000e\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u000fJ/\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0016\u0010\r\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000e\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u000fJ/\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0016\u0010\r\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000e\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u000fJ/\u0010\u0015\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0016\u0010\r\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000e\"\u0004\u0018\u00010\u0001H&\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0016\u001a\u00020\u0003H&\u00a8\u0006\u0017\u00c0\u0006\u0003"
    }
    d2 = {
        "Lfast/dic/dict/interfaces/ILogger;",
        "",
        "setLogLevel",
        "",
        "logLevel",
        "Lfast/dic/dict/utils/LogLevel;",
        "isReleaseMode",
        "",
        "setLogLevelString",
        "logLevelString",
        "",
        "verbose",
        "message",
        "parameters",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)V",
        "debug",
        "info",
        "warn",
        "warnInProduction",
        "error",
        "Assert",
        "lockLogLevel",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public varargs abstract Assert(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract debug(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract error(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract info(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract lockLogLevel()V
.end method

.method public abstract setLogLevel(Lfast/dic/dict/utils/LogLevel;Z)V
.end method

.method public abstract setLogLevelString(Ljava/lang/String;Z)V
.end method

.method public varargs abstract verbose(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract warn(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract warnInProduction(Ljava/lang/String;[Ljava/lang/Object;)V
.end method
