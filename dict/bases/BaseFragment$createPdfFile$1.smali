.class public final Lfast/dic/dict/bases/BaseFragment$createPdfFile$1;
.super Ljava/lang/Object;
.source "BaseFragment.kt"

# interfaces
.implements Lcom/uttampanchasara/pdfgenerator/CreatePdf$PdfCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/bases/BaseFragment;->createPdfFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "fast/dic/dict/bases/BaseFragment$createPdfFile$1",
        "Lcom/uttampanchasara/pdfgenerator/CreatePdf$PdfCallbackListener;",
        "onFailure",
        "",
        "errorMsg",
        "",
        "onSuccess",
        "filePath",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dir:Ljava/io/File;

.field final synthetic $filename:Ljava/lang/String;

.field final synthetic this$0:Lfast/dic/dict/bases/BaseFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/bases/BaseFragment;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/bases/BaseFragment$createPdfFile$1;->this$0:Lfast/dic/dict/bases/BaseFragment;

    iput-object p2, p0, Lfast/dic/dict/bases/BaseFragment$createPdfFile$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lfast/dic/dict/bases/BaseFragment$createPdfFile$1;->$dir:Ljava/io/File;

    iput-object p4, p0, Lfast/dic/dict/bases/BaseFragment$createPdfFile$1;->$filename:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3

    const-string v0, "errorMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====> FAIL TO CREATE PDF "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object p1, p0, Lfast/dic/dict/bases/BaseFragment$createPdfFile$1;->this$0:Lfast/dic/dict/bases/BaseFragment;

    invoke-virtual {p1}, Lfast/dic/dict/bases/BaseFragment;->getLocalLoadingSpinner()Lfast/dic/dict/views/LoadingSpinner;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lfast/dic/dict/views/LoadingSpinner;->dismiss()V

    .line 117
    :cond_0
    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    .line 118
    iget-object v0, p0, Lfast/dic/dict/bases/BaseFragment$createPdfFile$1;->this$0:Lfast/dic/dict/bases/BaseFragment;

    sget v1, Lfast/dic/dict/R$string;->fail_to_create_pdf_file:I

    invoke-virtual {v0, v1}, Lfast/dic/dict/bases/BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lfast/dic/dict/bases/BaseFragment$createPdfFile$1;->$context:Landroid/content/Context;

    .line 117
    invoke-virtual {p1, v0, p0}, Lfast/dic/dict/utils/FDAlertManger;->showErrorMessageAlert(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====> CREATED PDF "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object p1, p0, Lfast/dic/dict/bases/BaseFragment$createPdfFile$1;->this$0:Lfast/dic/dict/bases/BaseFragment;

    invoke-virtual {p1}, Lfast/dic/dict/bases/BaseFragment;->getLocalLoadingSpinner()Lfast/dic/dict/views/LoadingSpinner;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lfast/dic/dict/views/LoadingSpinner;->dismiss()V

    .line 126
    :cond_0
    iget-object p1, p0, Lfast/dic/dict/bases/BaseFragment$createPdfFile$1;->this$0:Lfast/dic/dict/bases/BaseFragment;

    iget-object v0, p0, Lfast/dic/dict/bases/BaseFragment$createPdfFile$1;->$dir:Ljava/io/File;

    iget-object v1, p0, Lfast/dic/dict/bases/BaseFragment$createPdfFile$1;->$filename:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pdf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lfast/dic/dict/bases/BaseFragment$createPdfFile$1;->$context:Landroid/content/Context;

    invoke-virtual {p1, v0, v1, p0}, Lfast/dic/dict/bases/BaseFragment;->openShareActivityForPath(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
