.class public final Lfast/dic/dict/fragments/VoiceRecognitionFragment$configureLanguageView$1;
.super Ljava/lang/Object;
.source "VoiceRecognitionFragment.kt"

# interfaces
.implements Lcom/trinnguyen/SegmentView$OnSegmentItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/fragments/VoiceRecognitionFragment;->configureLanguageView()V
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
        "fast/dic/dict/fragments/VoiceRecognitionFragment$configureLanguageView$1",
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
.field final synthetic this$0:Lfast/dic/dict/fragments/VoiceRecognitionFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment$configureLanguageView$1;->this$0:Lfast/dic/dict/fragments/VoiceRecognitionFragment;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSegmentItemReselected(I)V
    .locals 0

    return-void
.end method

.method public onSegmentItemSelected(I)V
    .locals 3

    .line 147
    iget-object p1, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment$configureLanguageView$1;->this$0:Lfast/dic/dict/fragments/VoiceRecognitionFragment;

    invoke-static {p1}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->access$getBinding$p(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->segmentedView:Lcom/trinnguyen/SegmentView;

    invoke-virtual {p1}, Lcom/trinnguyen/SegmentView;->getSelectedIndex()I

    move-result p1

    .line 150
    iget-object v2, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment$configureLanguageView$1;->this$0:Lfast/dic/dict/fragments/VoiceRecognitionFragment;

    if-nez p1, :cond_2

    .line 148
    invoke-static {v2}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->access$getBinding$p(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->sentenceView:Landroid/widget/TextView;

    iget-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment$configureLanguageView$1;->this$0:Lfast/dic/dict/fragments/VoiceRecognitionFragment;

    sget v1, Lfast/dic/dict/R$string;->placeholder_for_mic:I

    invoke-virtual {v0, v1}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 150
    :cond_2
    invoke-static {v2}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->access$getBinding$p(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_1
    iget-object p1, v0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->sentenceView:Landroid/widget/TextView;

    iget-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment$configureLanguageView$1;->this$0:Lfast/dic/dict/fragments/VoiceRecognitionFragment;

    sget v1, Lfast/dic/dict/R$string;->placeholder_for_mic_pe:I

    invoke-virtual {v0, v1}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :goto_2
    iget-object p1, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment$configureLanguageView$1;->this$0:Lfast/dic/dict/fragments/VoiceRecognitionFragment;

    invoke-static {p1}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->access$getViewModel(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->stop()V

    .line 155
    iget-object p0, p0, Lfast/dic/dict/fragments/VoiceRecognitionFragment$configureLanguageView$1;->this$0:Lfast/dic/dict/fragments/VoiceRecognitionFragment;

    invoke-static {p0}, Lfast/dic/dict/fragments/VoiceRecognitionFragment;->access$startListening(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)V

    return-void
.end method
