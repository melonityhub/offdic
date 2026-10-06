.class public final Lfast/dic/dict/di/AppModule;
.super Ljava/lang/Object;
.source "AppModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\u0004\u001a\u00020\u0005H\u0007b\u0002\u0008\u0006\u00ca\u0001\u0002\u0008\u0008\u00ca\u0001\u0010\u0008\t\u0012\u000c\u0008\n\u0012\u0008\u0008\u000cJ\u0004\u0008\t0\u000b\u00a8\u0006\u0007"
    }
    d2 = {
        "Lfast/dic/dict/di/AppModule;",
        "",
        "<init>",
        "()V",
        "getCurrentUser",
        "Lfast/dic/dict/services/parse/FDParseUser;",
        "Ldagger/Provides;",
        "app",
        "Ldagger/Module;",
        "Ldagger/hilt/InstallIn;",
        "value",
        "Ldagger/hilt/components/SingletonComponent;"
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
.field public static final INSTANCE:Lfast/dic/dict/di/AppModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfast/dic/dict/di/AppModule;

    invoke-direct {v0}, Lfast/dic/dict/di/AppModule;-><init>()V

    sput-object v0, Lfast/dic/dict/di/AppModule;->INSTANCE:Lfast/dic/dict/di/AppModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentUser()Lfast/dic/dict/services/parse/FDParseUser;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 16
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type fast.dic.dict.services.parse.FDParseUser"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lfast/dic/dict/services/parse/FDParseUser;

    return-object p0
.end method
