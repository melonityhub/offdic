.class public final Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "SearchBarView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/views/SearchBarView;->loadSearchInputConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "fast/dic/dict/views/SearchBarView$loadSearchInputConfig$2",
        "Landroid/view/View$AccessibilityDelegate;",
        "sendAccessibilityEvent",
        "",
        "host",
        "Landroid/view/View;",
        "eventType",
        "",
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
.field final synthetic this$0:Lfast/dic/dict/views/SearchBarView;


# direct methods
.method constructor <init>(Lfast/dic/dict/views/SearchBarView;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$2;->this$0:Lfast/dic/dict/views/SearchBarView;

    .line 229
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    const/16 p1, 0x8

    if-ne p2, p1, :cond_0

    .line 233
    iget-object p1, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$2;->this$0:Lfast/dic/dict/views/SearchBarView;

    invoke-static {p1}, Lfast/dic/dict/views/SearchBarView;->access$getBinding$p(Lfast/dic/dict/views/SearchBarView;)Lfast/dic/dict/databinding/SearchBarBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/SearchBarBinding;->searchInput:Landroid/widget/EditText;

    iget-object p0, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$2;->this$0:Lfast/dic/dict/views/SearchBarView;

    invoke-static {p0}, Lfast/dic/dict/views/SearchBarView;->access$getBinding$p(Lfast/dic/dict/views/SearchBarView;)Lfast/dic/dict/databinding/SearchBarBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/SearchBarBinding;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method
