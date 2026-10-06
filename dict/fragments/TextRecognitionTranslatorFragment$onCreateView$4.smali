.class public final Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment$onCreateView$4;
.super Ljava/lang/Object;
.source "TextRecognitionTranslatorFragment.kt"

# interfaces
.implements Lcom/trinnguyen/SegmentView$OnSegmentItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "fast/dic/dict/fragments/TextRecognitionTranslatorFragment$onCreateView$4",
        "Lcom/trinnguyen/SegmentView$OnSegmentItemSelectedListener;",
        "onSegmentItemSelected",
        "",
        "index",
        "",
        "onSegmentItemReselected",
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
.field final synthetic this$0:Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment$onCreateView$4;->this$0:Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSegmentItemReselected(I)V
    .locals 0

    return-void
.end method

.method public onSegmentItemSelected(I)V
    .locals 7

    .line 122
    iget-object v0, p0, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment$onCreateView$4;->this$0:Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;

    .line 118
    const-string v1, "binding"

    const-wide/16 v2, 0x0

    const-string v4, "graphicOverlay"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 119
    invoke-virtual {v0, p1}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;->setSelectedSegment(I)V

    .line 120
    iget-object p0, p0, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment$onCreateView$4;->this$0:Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;

    invoke-static {p0}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;->access$getBinding$p(Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;)Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v6

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->graphicOverlay:Lfast/dic/dict/views/GraphicOverlay;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v2, v3, v5, v6}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    return-void

    .line 122
    :cond_1
    invoke-virtual {v0, v5}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;->setSelectedSegment(I)V

    .line 123
    iget-object p0, p0, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment$onCreateView$4;->this$0:Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;

    invoke-static {p0}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;->access$getBinding$p(Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;)Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v6

    :cond_2
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->graphicOverlay:Lfast/dic/dict/views/GraphicOverlay;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v2, v3, v5, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    return-void
.end method
