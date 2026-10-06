.class public final Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;
.super Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;
.source "WordResultViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TranslatorHtmlResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003J=\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u00c6\u0001J\u0014\u0010\u0016\u001a\u00020\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0083\u0004J\n\u0010\u0019\u001a\u00020\u001aH\u00d6\u0081\u0004J\n\u0010\u001b\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;",
        "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;",
        "html",
        "",
        "sentence",
        "meaning",
        "isDarkMode",
        "",
        "isNoInternetMessage",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V",
        "getHtml",
        "()Ljava/lang/String;",
        "getSentence",
        "getMeaning",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final html:Ljava/lang/String;

.field private final isDarkMode:Z

.field private final isNoInternetMessage:Z

.field private final meaning:Ljava/lang/String;

.field private final sentence:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "html"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sentence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 566
    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 567
    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->html:Ljava/lang/String;

    .line 568
    iput-object p2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->sentence:Ljava/lang/String;

    .line 569
    iput-object p3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->meaning:Ljava/lang/String;

    .line 570
    iput-boolean p4, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isDarkMode:Z

    .line 572
    iput-boolean p5, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isNoInternetMessage:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 566
    invoke-direct/range {v0 .. v5}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->html:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->sentence:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->meaning:Ljava/lang/String;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-boolean p4, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isDarkMode:Z

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-boolean p5, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isNoInternetMessage:Z

    :cond_4
    move p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->html:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->sentence:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->meaning:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isDarkMode:Z

    return p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isNoInternetMessage:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;
    .locals 6

    const-string p0, "html"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "sentence"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->html:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->html:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->sentence:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->sentence:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->meaning:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->meaning:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isDarkMode:Z

    iget-boolean v3, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isDarkMode:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isNoInternetMessage:Z

    iget-boolean p1, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isNoInternetMessage:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getHtml()Ljava/lang/String;
    .locals 0

    .line 567
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->html:Ljava/lang/String;

    return-object p0
.end method

.method public final getMeaning()Ljava/lang/String;
    .locals 0

    .line 569
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->meaning:Ljava/lang/String;

    return-object p0
.end method

.method public final getSentence()Ljava/lang/String;
    .locals 0

    .line 568
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->sentence:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->html:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->sentence:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->meaning:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isDarkMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isNoInternetMessage:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isDarkMode()Z
    .locals 0

    .line 570
    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isDarkMode:Z

    return p0
.end method

.method public final isNoInternetMessage()Z
    .locals 0

    .line 572
    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isNoInternetMessage:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->html:Ljava/lang/String;

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->sentence:Ljava/lang/String;

    iget-object v2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->meaning:Ljava/lang/String;

    iget-boolean v3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isDarkMode:Z

    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;->isNoInternetMessage:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TranslatorHtmlResult(html="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", sentence="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", meaning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDarkMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNoInternetMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
