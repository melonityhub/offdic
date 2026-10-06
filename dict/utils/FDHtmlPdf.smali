.class public final Lfast/dic/dict/utils/FDHtmlPdf;
.super Ljava/lang/Object;
.source "FDHtmlPdf.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDHtmlPdf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDHtmlPdf.kt\nfast/dic/dict/utils/FDHtmlPdf\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n2068#2,2:53\n*S KotlinDebug\n*F\n+ 1 FDHtmlPdf.kt\nfast/dic/dict/utils/FDHtmlPdf\n*L\n40#1:53,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0016\u0010\t\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/utils/FDHtmlPdf;",
        "",
        "<init>",
        "()V",
        "generateWordListHtml",
        "",
        "wordsListModels",
        "",
        "Lfast/dic/dict/models/database/ListModel;",
        "generateHtmlForWords",
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
.field public static final INSTANCE:Lfast/dic/dict/utils/FDHtmlPdf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfast/dic/dict/utils/FDHtmlPdf;

    invoke-direct {v0}, Lfast/dic/dict/utils/FDHtmlPdf;-><init>()V

    sput-object v0, Lfast/dic/dict/utils/FDHtmlPdf;->INSTANCE:Lfast/dic/dict/utils/FDHtmlPdf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final generateHtmlForWords(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/models/database/ListModel;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "<div class=\"row\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->find(Ljava/lang/String;)Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    move-result-object v1

    sget-object v2, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const-string v3, "rtl"

    const-string v4, "ltr"

    if-ne v1, v2, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    move-object v1, v4

    .line 36
    :goto_1
    sget-object v2, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->find(Ljava/lang/String;)Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    move-result-object v2

    sget-object v5, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne v2, v5, :cond_1

    move-object v3, v4

    .line 38
    :cond_1
    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "<p><strong class=\""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "</strong></p>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getMeanings()Ljava/util/List;

    move-result-object v2

    const-string v4, "</p>"

    const-string v5, "<p class=\""

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Iterable;

    .line 53
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getMeanings()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 45
    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "</div>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    return-object p1
.end method


# virtual methods
.method public final generateWordListHtml(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "wordsListModels"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 10
    const-string/jumbo v1, "yyyy/MM/dd \'at\' HH:mm"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 23
    invoke-direct {p0, p1}, Lfast/dic/dict/utils/FDHtmlPdf;->generateHtmlForWords(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "<html><link type=\"text/css\" rel=\"stylesheet\" href=\"file:///android_asset/css/style-pdf.css\"/><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" /><body><div class=\"logo\"><img src=\"file:///android_asset/images/fd-logo.svg\"/></div><div class=\"header\"><div class=\"persian\">\u062f\u06cc\u06a9\u0634\u0646\u0631\u06cc \u062f\u0648 \u0632\u0628\u0627\u0646\u0647 \u0627\u0646\u06af\u0644\u06cc\u0633\u06cc \u0628\u0647 \u0641\u0627\u0631\u0633\u06cc \u0648 \u0641\u0627\u0631\u0633\u06cc \u0628\u0647 \u0627\u0646\u06af\u0644\u06cc\u0633\u06cc</div><div class=\"english\">English to Persian/Farsi and Persian/Farsi to English dictionary</div><div class=\"date\">"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "</div><div class=\"website\">www.fastdic.com</div></div><table>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "</table></body></html>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
