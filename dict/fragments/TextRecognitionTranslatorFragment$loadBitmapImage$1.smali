.class public final Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment$loadBitmapImage$1;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "TextRecognitionTranslatorFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;->loadBitmapImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0010\u0010\u0006\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0002\u0018\u00010\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "fast/dic/dict/fragments/TextRecognitionTranslatorFragment$loadBitmapImage$1",
        "Lcom/bumptech/glide/request/target/CustomTarget;",
        "Landroid/graphics/Bitmap;",
        "onResourceReady",
        "",
        "resource",
        "transition",
        "Lcom/bumptech/glide/request/transition/Transition;",
        "onLoadCleared",
        "placeholder",
        "Landroid/graphics/drawable/Drawable;",
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

    iput-object p1, p0, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment$loadBitmapImage$1;->this$0:Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;

    .line 180
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object p2, p0, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment$loadBitmapImage$1;->this$0:Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;

    invoke-static {p2, p1}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;->access$setBitmapImage$p(Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;Landroid/graphics/Bitmap;)V

    .line 183
    iget-object p2, p0, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment$loadBitmapImage$1;->this$0:Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;

    invoke-static {p2}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;->access$getViewModel(Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;)Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;->recognizeTextFromImageAndTranslate(Landroid/graphics/Bitmap;)V

    .line 185
    iget-object p0, p0, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment$loadBitmapImage$1;->this$0:Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;

    invoke-static {p0}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;->access$getBinding$p(Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;)Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->placeholderView:Landroid/widget/RelativeLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 180
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment$loadBitmapImage$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
