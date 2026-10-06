.class public final Lfast/dic/dict/services/parse/FDParseSession;
.super Lcom/parse/ParseSession;
.source "FDParseSession.kt"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_Session"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR(\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR(\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0008\"\u0004\u0008\u0010\u0010\nR(\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0008\"\u0004\u0008\u0013\u0010\n\u00ca\u0001\u000c\u0008\u0015\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "Lfast/dic/dict/services/parse/FDParseSession;",
        "Lcom/parse/ParseSession;",
        "<init>",
        "()V",
        "value",
        "",
        "deviceModel",
        "getDeviceModel",
        "()Ljava/lang/String;",
        "setDeviceModel",
        "(Ljava/lang/String;)V",
        "deviceOS",
        "getDeviceOS",
        "setDeviceOS",
        "deviceOSVersion",
        "getDeviceOSVersion",
        "setDeviceOSVersion",
        "deviceName",
        "getDeviceName",
        "setDeviceName",
        "app",
        "Lcom/parse/ParseClassName;",
        "_Session"
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
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/parse/ParseSession;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 9
    const-string v0, "deviceModel"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/parse/FDParseSession;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "deviceName"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/parse/FDParseSession;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceOS()Ljava/lang/String;
    .locals 1

    .line 14
    const-string v0, "deviceOS"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/parse/FDParseSession;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceOSVersion()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "deviceOSVersion"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/parse/FDParseSession;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setDeviceModel(Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "deviceModel"

    invoke-virtual {p0, v0, p1}, Lfast/dic/dict/services/parse/FDParseSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDeviceName(Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "deviceName"

    invoke-virtual {p0, v0, p1}, Lfast/dic/dict/services/parse/FDParseSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDeviceOS(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "deviceOS"

    invoke-virtual {p0, v0, p1}, Lfast/dic/dict/services/parse/FDParseSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDeviceOSVersion(Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "deviceOSVersion"

    invoke-virtual {p0, v0, p1}, Lfast/dic/dict/services/parse/FDParseSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
