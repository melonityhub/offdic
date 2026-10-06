.class public final Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ResultOrderModalViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0008\u0007\u001a\u0002\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000bJ\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000b\u00ca\u0001\u0002\u0008\u000e\u00a8\u0006\r"
    }
    d2 = {
        "Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "updateOrder",
        "",
        "orders",
        "",
        "",
        "forEnglish",
        "",
        "getOrderResult",
        "app",
        "Ldagger/hilt/android/lifecycle/HiltViewModel;"
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
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 11
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrderResult(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p0

    instance-of v0, p0, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v0, :cond_0

    check-cast p0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    .line 26
    invoke-static {}, Lfast/dic/dict/const/ConfigConstKt;->getDEFAULT_ENGLISH_RESULT_ORDER_BY()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lfast/dic/dict/const/ConfigConstKt;->getDEFAULT_PERSIAN_RESULT_ORDER_BY()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    .line 28
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->getEnglishResultsOrderBy()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->getPersianResultsOrderBy()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final updateOrder(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string p0, "orders"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p0

    instance-of v0, p0, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v0, :cond_0

    check-cast p0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 18
    invoke-virtual {p0, p1}, Lfast/dic/dict/services/parse/FDParseUser;->setEnglishResultsOrderBy(Ljava/util/List;)V

    return-void

    .line 20
    :cond_2
    invoke-virtual {p0, p1}, Lfast/dic/dict/services/parse/FDParseUser;->setPersianResultsOrderBy(Ljava/util/List;)V

    return-void
.end method
