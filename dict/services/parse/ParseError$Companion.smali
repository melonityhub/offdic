.class public final Lfast/dic/dict/services/parse/ParseError$Companion;
.super Ljava/lang/Object;
.source "ParseError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/services/parse/ParseError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lfast/dic/dict/services/parse/ParseError$Companion;",
        "",
        "<init>",
        "()V",
        "getRightMessage",
        "",
        "message",
        "code",
        "",
        "context",
        "Landroid/content/Context;",
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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/services/parse/ParseError$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRightMessage(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p0, "message"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "The data couldn\u2019t be read because it isn\u2019t in the correct format."

    if-ne p1, p0, :cond_1

    .line 11
    sget p0, Lfast/dic/dict/R$string;->server_has_problem_please_try_again:I

    invoke-virtual {p3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const/16 p0, 0x64

    .line 12
    const-string v0, "getString(...)"

    if-eq p2, p0, :cond_4

    const/16 p0, 0x65

    if-eq p2, p0, :cond_3

    const/16 p0, 0xcd

    if-eq p2, p0, :cond_2

    :goto_0
    return-object p1

    .line 13
    :cond_2
    sget p0, Lfast/dic/dict/R$string;->email_address_is_wrong:I

    invoke-virtual {p3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 14
    :cond_3
    sget p0, Lfast/dic/dict/R$string;->password_is_wrong:I

    invoke-virtual {p3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 15
    :cond_4
    sget p0, Lfast/dic/dict/R$string;->check_internet_connection:I

    invoke-virtual {p3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
