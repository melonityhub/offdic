.class public final Lfast/dic/dict/utils/FDCategoryKt;
.super Ljava/lang/Object;
.source "FDCategory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "toCategory",
        "Lfast/dic/dict/utils/Category;",
        "",
        "",
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


# direct methods
.method public static final toCategory(I)Lfast/dic/dict/utils/Category;
    .locals 1

    .line 21
    sget-object v0, Lfast/dic/dict/utils/Category;->Companion:Lfast/dic/dict/utils/Category$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/utils/Category$Companion;->invoke(I)Lfast/dic/dict/utils/Category;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final toCategory(Ljava/lang/String;)Lfast/dic/dict/utils/Category;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lfast/dic/dict/utils/Category;->Companion:Lfast/dic/dict/utils/Category$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/utils/Category$Companion;->convert(Ljava/lang/String;)Lfast/dic/dict/utils/Category;

    move-result-object p0

    return-object p0
.end method
