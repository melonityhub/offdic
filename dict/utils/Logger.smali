.class public final Lfast/dic/dict/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.kt"

# interfaces
.implements Lfast/dic/dict/interfaces/ILogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/utils/Logger$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\n\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\r\u0008\u0007\u001a\u0002\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J/\u0010\u000f\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0016\u0010\u0011\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0002\u0010\u0014J/\u0010\u0015\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0016\u0010\u0011\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0002\u0010\u0014J/\u0010\u0016\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0016\u0010\u0011\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0002\u0010\u0014J/\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0016\u0010\u0011\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0002\u0010\u0014J/\u0010\u0018\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0016\u0010\u0011\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0002\u0010\u0014J/\u0010\u0019\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0016\u0010\u0011\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0002\u0010\u0014J/\u0010\u001a\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0016\u0010\u0011\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u001b\u001a\u00020\u000bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lfast/dic/dict/utils/Logger;",
        "Lfast/dic/dict/interfaces/ILogger;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "isReleaseMode",
        "",
        "logLevelLocked",
        "logLevel",
        "Lfast/dic/dict/utils/LogLevel;",
        "setLogLevel",
        "",
        "setLogLevelString",
        "logLevelString",
        "",
        "verbose",
        "message",
        "parameters",
        "",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)V",
        "debug",
        "info",
        "warn",
        "warnInProduction",
        "error",
        "Assert",
        "lockLogLevel",
        "Companion",
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


# static fields
.field public static final Companion:Lfast/dic/dict/utils/Logger$Companion;

.field private static final formatErrorMessage:Ljava/lang/String; = "Error formating log message: %s, with params: %s"

.field private static final logger:Lfast/dic/dict/utils/Logger;


# instance fields
.field private isReleaseMode:Z

.field private logLevel:Lfast/dic/dict/utils/LogLevel;

.field private logLevelLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/utils/Logger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/utils/Logger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    .line 144
    new-instance v0, Lfast/dic/dict/utils/Logger;

    invoke-direct {v0}, Lfast/dic/dict/utils/Logger;-><init>()V

    sput-object v0, Lfast/dic/dict/utils/Logger;->logger:Lfast/dic/dict/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lfast/dic/dict/utils/LogLevel;->VERBOSE:Lfast/dic/dict/utils/LogLevel;

    iput-object v0, p0, Lfast/dic/dict/utils/Logger;->logLevel:Lfast/dic/dict/utils/LogLevel;

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lfast/dic/dict/utils/Logger;->isReleaseMode:Z

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lfast/dic/dict/utils/Logger;->logLevelLocked:Z

    .line 164
    sget-object v0, Lfast/dic/dict/utils/LogLevel;->VERBOSE:Lfast/dic/dict/utils/LogLevel;

    iget-boolean v1, p0, Lfast/dic/dict/utils/Logger;->isReleaseMode:Z

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/utils/Logger;->setLogLevel(Lfast/dic/dict/utils/LogLevel;Z)V

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lfast/dic/dict/utils/Logger;
    .locals 1

    .line 21
    sget-object v0, Lfast/dic/dict/utils/Logger;->logger:Lfast/dic/dict/utils/Logger;

    return-object v0
.end method


# virtual methods
.method public varargs Assert(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const-string v0, "(FASTDIC)"

    const-string v1, "parameters"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object p0, p0, Lfast/dic/dict/utils/Logger;->logLevel:Lfast/dic/dict/utils/LogLevel;

    invoke-virtual {p0}, Lfast/dic/dict/utils/LogLevel;->getAndroidLogLevel()I

    move-result p0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    .line 130
    :try_start_0
    sget-object p0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lfast/dic/dict/utils/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    sget-object p0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error formating log message: %s, with params: %s"

    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/utils/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 133
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "(FASTDIC)"

    const-string v1, "parameters"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-boolean v1, p0, Lfast/dic/dict/utils/Logger;->isReleaseMode:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/utils/Logger;->logLevel:Lfast/dic/dict/utils/LogLevel;

    invoke-virtual {p0}, Lfast/dic/dict/utils/LogLevel;->getAndroidLogLevel()I

    move-result p0

    const/4 v1, 0x3

    if-gt p0, v1, :cond_1

    .line 64
    :try_start_0
    sget-object p0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lfast/dic/dict/utils/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    sget-object p0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error formating log message: %s, with params: %s"

    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/utils/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 67
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "(FASTDIC)"

    const-string v1, "parameters"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lfast/dic/dict/utils/Logger;->logLevel:Lfast/dic/dict/utils/LogLevel;

    invoke-virtual {p0}, Lfast/dic/dict/utils/LogLevel;->getAndroidLogLevel()I

    move-result p0

    const/4 v1, 0x6

    if-gt p0, v1, :cond_0

    .line 118
    :try_start_0
    sget-object p0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lfast/dic/dict/utils/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    sget-object p0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error formating log message: %s, with params: %s"

    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/utils/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "(FASTDIC)"

    const-string v1, "parameters"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-boolean v1, p0, Lfast/dic/dict/utils/Logger;->isReleaseMode:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/utils/Logger;->logLevel:Lfast/dic/dict/utils/LogLevel;

    invoke-virtual {p0}, Lfast/dic/dict/utils/LogLevel;->getAndroidLogLevel()I

    move-result p0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_1

    .line 79
    :try_start_0
    sget-object p0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lfast/dic/dict/utils/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    sget-object p0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error formating log message: %s, with params: %s"

    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/utils/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public lockLogLevel()V
    .locals 1

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lfast/dic/dict/utils/Logger;->logLevelLocked:Z

    return-void
.end method

.method public setLogLevel(Lfast/dic/dict/utils/LogLevel;Z)V
    .locals 1

    const-string v0, "logLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-boolean v0, p0, Lfast/dic/dict/utils/Logger;->logLevelLocked:Z

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    iput-object p1, p0, Lfast/dic/dict/utils/Logger;->logLevel:Lfast/dic/dict/utils/LogLevel;

    .line 30
    iput-boolean p2, p0, Lfast/dic/dict/utils/Logger;->isReleaseMode:Z

    return-void
.end method

.method public setLogLevelString(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 36
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toUpperCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lfast/dic/dict/utils/LogLevel;->valueOf(Ljava/lang/String;)Lfast/dic/dict/utils/LogLevel;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lfast/dic/dict/utils/Logger;->setLogLevel(Lfast/dic/dict/utils/LogLevel;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 38
    :catch_0
    const-string p2, "Malformed logLevel \'%s\', falling back to \'info\'"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "(FASTDIC)"

    const-string v1, "parameters"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-boolean v1, p0, Lfast/dic/dict/utils/Logger;->isReleaseMode:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/utils/Logger;->logLevel:Lfast/dic/dict/utils/LogLevel;

    invoke-virtual {p0}, Lfast/dic/dict/utils/LogLevel;->getAndroidLogLevel()I

    move-result p0

    const/4 v1, 0x2

    if-gt p0, v1, :cond_1

    .line 49
    :try_start_0
    sget-object p0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lfast/dic/dict/utils/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    sget-object p0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error formating log message: %s, with params: %s"

    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/utils/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "(FASTDIC)"

    const-string v1, "parameters"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-boolean v1, p0, Lfast/dic/dict/utils/Logger;->isReleaseMode:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/utils/Logger;->logLevel:Lfast/dic/dict/utils/LogLevel;

    invoke-virtual {p0}, Lfast/dic/dict/utils/LogLevel;->getAndroidLogLevel()I

    move-result p0

    const/4 v1, 0x5

    if-gt p0, v1, :cond_1

    .line 94
    :try_start_0
    sget-object p0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lfast/dic/dict/utils/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    sget-object p0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error formating log message: %s, with params: %s"

    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/utils/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs warnInProduction(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "(FASTDIC)"

    const-string v1, "parameters"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object p0, p0, Lfast/dic/dict/utils/Logger;->logLevel:Lfast/dic/dict/utils/LogLevel;

    invoke-virtual {p0}, Lfast/dic/dict/utils/LogLevel;->getAndroidLogLevel()I

    move-result p0

    const/4 v1, 0x5

    if-gt p0, v1, :cond_0

    .line 106
    :try_start_0
    sget-object p0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lfast/dic/dict/utils/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    sget-object p0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error formating log message: %s, with params: %s"

    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/utils/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
