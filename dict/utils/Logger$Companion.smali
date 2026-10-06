.class public final Lfast/dic/dict/utils/Logger$Companion;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/utils/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001b\u0010\u0006\u001a\u00020\u0005H\u0007b\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\n\u00a2\u0006\u0002\u0008\nR\u0013\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lfast/dic/dict/utils/Logger$Companion;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lfast/dic/dict/utils/Logger;",
        "getLogger",
        "()Lfast/dic/dict/utils/Logger;",
        "formatErrorMessage",
        "",
        "getLogger1",
        "Lkotlin/jvm/JvmName;",
        "name",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/utils/Logger$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogger()Lfast/dic/dict/utils/Logger;
    .locals 2

    .line 149
    invoke-static {}, Lfast/dic/dict/utils/Logger;->access$getLogger$cp()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    sget-object v0, Lfast/dic/dict/utils/LogLevel;->INFO:Lfast/dic/dict/utils/LogLevel;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/utils/Logger;->setLogLevel(Lfast/dic/dict/utils/LogLevel;Z)V

    .line 151
    invoke-static {}, Lfast/dic/dict/utils/Logger;->access$getLogger$cp()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    return-object p0
.end method

.method public final getLogger1()Lfast/dic/dict/utils/Logger;
    .locals 0

    .line 157
    invoke-virtual {p0}, Lfast/dic/dict/utils/Logger$Companion;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    return-object p0
.end method
