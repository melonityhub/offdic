.class public final Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal$onCreateView$4;
.super Ljava/lang/Object;
.source "CreateNewDirectoryBottomSheetModal.kt"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "fast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal$onCreateView$4",
        "Landroid/view/View$OnKeyListener;",
        "onKey",
        "",
        "v",
        "Landroid/view/View;",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
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
.field final synthetic $input:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic this$0:Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputEditText;Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal$onCreateView$4;->$input:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal$onCreateView$4;->this$0:Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "event"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal$onCreateView$4;->$input:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    invoke-static {p1, p2, p3}, Lfast/dic/dict/utils/KeyEventExtKt;->isReturnKey(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal$onCreateView$4;->this$0:Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;

    iget-object p0, p0, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal$onCreateView$4;->$input:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/widget/EditText;

    invoke-static {p1, p0}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->access$addDirectory(Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;Landroid/widget/EditText;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
