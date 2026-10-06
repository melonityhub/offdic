.class public final Lfast/dic/dict/utils/LoggerKt;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u001a\u0010\u0000\u001a\u00020\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "logger",
        "Lfast/dic/dict/utils/Logger;",
        "getLogger",
        "()Lfast/dic/dict/utils/Logger;",
        "setLogger",
        "(Lfast/dic/dict/utils/Logger;)V",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static logger:Lfast/dic/dict/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget-object v0, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/utils/LoggerKt;->logger:Lfast/dic/dict/utils/Logger;

    return-void
.end method

.method public static final getLogger()Lfast/dic/dict/utils/Logger;
    .locals 1

    .line 19
    sget-object v0, Lfast/dic/dict/utils/LoggerKt;->logger:Lfast/dic/dict/utils/Logger;

    return-object v0
.end method

.method public static final setLogger(Lfast/dic/dict/utils/Logger;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sput-object p0, Lfast/dic/dict/utils/LoggerKt;->logger:Lfast/dic/dict/utils/Logger;

    return-void
.end method
