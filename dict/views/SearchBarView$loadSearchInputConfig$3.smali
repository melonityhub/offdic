.class public final Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;
.super Ljava/lang/Object;
.source "SearchBarView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J*\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "fast/dic/dict/views/SearchBarView$loadSearchInputConfig$3",
        "Landroid/text/TextWatcher;",
        "beforeTextChanged",
        "",
        "p0",
        "",
        "p1",
        "",
        "p2",
        "p3",
        "onTextChanged",
        "afterTextChanged",
        "Landroid/text/Editable;",
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
.field final synthetic $wasEmpty:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lfast/dic/dict/views/SearchBarView;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lfast/dic/dict/views/SearchBarView;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->$wasEmpty:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->this$0:Lfast/dic/dict/views/SearchBarView;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final afterTextChanged$lambda$0(Lfast/dic/dict/views/SearchBarView;)Lkotlin/Unit;
    .locals 1

    .line 269
    invoke-static {p0}, Lfast/dic/dict/views/SearchBarView;->access$getBinding$p(Lfast/dic/dict/views/SearchBarView;)Lfast/dic/dict/databinding/SearchBarBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/SearchBarBinding;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lfast/dic/dict/views/SearchBarView;->setLastNewLines(I)V

    .line 270
    invoke-static {p0}, Lfast/dic/dict/views/SearchBarView;->access$applyAnimationForInput(Lfast/dic/dict/views/SearchBarView;)V

    .line 271
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    .line 263
    iget-object v0, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->$wasEmpty:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->this$0:Lfast/dic/dict/views/SearchBarView;

    invoke-static {v0}, Lfast/dic/dict/views/SearchBarView;->access$getBinding$p(Lfast/dic/dict/views/SearchBarView;)Lfast/dic/dict/databinding/SearchBarBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/SearchBarBinding;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->this$0:Lfast/dic/dict/views/SearchBarView;

    invoke-virtual {v0, v1}, Lfast/dic/dict/views/SearchBarView;->setPasted(Z)V

    .line 266
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->$wasEmpty:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_1

    .line 267
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    new-array v4, v1, [Ljava/lang/String;

    const-string p1, " "

    aput-object p1, v4, v2

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :cond_1
    const/4 p1, 0x5

    if-le v2, p1, :cond_2

    iget-object p1, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->this$0:Lfast/dic/dict/views/SearchBarView;

    invoke-static {p1}, Lfast/dic/dict/views/SearchBarView;->access$getBinding$p(Lfast/dic/dict/views/SearchBarView;)Lfast/dic/dict/databinding/SearchBarBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/SearchBarBinding;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLineCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 268
    iget-object p1, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->this$0:Lfast/dic/dict/views/SearchBarView;

    invoke-static {p1}, Lfast/dic/dict/views/SearchBarView;->access$getBinding$p(Lfast/dic/dict/views/SearchBarView;)Lfast/dic/dict/databinding/SearchBarBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/SearchBarBinding;->searchInput:Landroid/widget/EditText;

    const-string v0, "searchInput"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->this$0:Lfast/dic/dict/views/SearchBarView;

    new-instance v0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/views/SearchBarView;)V

    invoke-static {p1, v0}, Lfast/dic/dict/utils/ViewExtKt;->afterLayoutConfiguration(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 275
    :cond_2
    iget-object p0, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->this$0:Lfast/dic/dict/views/SearchBarView;

    invoke-static {p0}, Lfast/dic/dict/views/SearchBarView;->access$applyAnimationForInput(Lfast/dic/dict/views/SearchBarView;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    .line 246
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 247
    iget-object p1, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->$wasEmpty:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 250
    :cond_0
    iget-object p1, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->this$0:Lfast/dic/dict/views/SearchBarView;

    invoke-static {p1}, Lfast/dic/dict/views/SearchBarView;->access$getDefaultHeightSize$p(Lfast/dic/dict/views/SearchBarView;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1

    .line 251
    iget-object p1, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->this$0:Lfast/dic/dict/views/SearchBarView;

    invoke-static {p1}, Lfast/dic/dict/views/SearchBarView;->access$getBinding$p(Lfast/dic/dict/views/SearchBarView;)Lfast/dic/dict/databinding/SearchBarBinding;

    move-result-object p2

    iget-object p2, p2, Lfast/dic/dict/databinding/SearchBarBinding;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lfast/dic/dict/views/SearchBarView;->access$setDefaultHeightSize$p(Lfast/dic/dict/views/SearchBarView;Ljava/lang/Integer;)V

    .line 253
    :cond_1
    iget-object p1, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->this$0:Lfast/dic/dict/views/SearchBarView;

    invoke-static {p1}, Lfast/dic/dict/views/SearchBarView;->access$getDefaultHeightSize$p(Lfast/dic/dict/views/SearchBarView;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    .line 254
    iget-object p1, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->this$0:Lfast/dic/dict/views/SearchBarView;

    invoke-virtual {p1}, Lfast/dic/dict/views/SearchBarView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "getContext(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/high16 v0, 0x42700000    # 60.0f

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, p3, p4}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lfast/dic/dict/views/SearchBarView;->access$setDefaultHeightSize$p(Lfast/dic/dict/views/SearchBarView;Ljava/lang/Integer;)V

    .line 257
    :cond_3
    :goto_0
    iget-object p0, p0, Lfast/dic/dict/views/SearchBarView$loadSearchInputConfig$3;->this$0:Lfast/dic/dict/views/SearchBarView;

    invoke-static {p0}, Lfast/dic/dict/views/SearchBarView;->access$getBinding$p(Lfast/dic/dict/views/SearchBarView;)Lfast/dic/dict/databinding/SearchBarBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/SearchBarBinding;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLineCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/views/SearchBarView;->setLastNewLines(I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
