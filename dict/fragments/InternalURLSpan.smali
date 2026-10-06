.class public final Lfast/dic/dict/fragments/InternalURLSpan;
.super Landroid/text/style/ClickableSpan;
.source "SettingFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lfast/dic/dict/fragments/InternalURLSpan;",
        "Landroid/text/style/ClickableSpan;",
        "<init>",
        "()V",
        "text",
        "",
        "getText",
        "()Ljava/lang/String;",
        "setText",
        "(Ljava/lang/String;)V",
        "clickInterface",
        "Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;",
        "getClickInterface",
        "()Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;",
        "setClickInterface",
        "(Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;)V",
        "onClick",
        "",
        "widget",
        "Landroid/view/View;",
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
.field private clickInterface:Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClickInterface()Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;
    .locals 0

    .line 257
    iget-object p0, p0, Lfast/dic/dict/fragments/InternalURLSpan;->clickInterface:Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    .line 256
    iget-object p0, p0, Lfast/dic/dict/fragments/InternalURLSpan;->text:Ljava/lang/String;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lfast/dic/dict/fragments/InternalURLSpan;->clickInterface:Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lfast/dic/dict/fragments/InternalURLSpan;->text:Ljava/lang/String;

    invoke-interface {p1, p0}, Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;->onLinkClicked(Ljava/lang/String;)V

    return-void
.end method

.method public final setClickInterface(Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lfast/dic/dict/fragments/InternalURLSpan;->clickInterface:Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lfast/dic/dict/fragments/InternalURLSpan;->text:Ljava/lang/String;

    return-void
.end method
