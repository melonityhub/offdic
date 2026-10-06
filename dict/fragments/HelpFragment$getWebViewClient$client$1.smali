.class public final Lfast/dic/dict/fragments/HelpFragment$getWebViewClient$client$1;
.super Landroid/webkit/WebViewClient;
.source "HelpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/fragments/HelpFragment;->getWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHelpFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HelpFragment.kt\nfast/dic/dict/fragments/HelpFragment$getWebViewClient$client$1\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,83:1\n30#2:84\n*S KotlinDebug\n*F\n+ 1 HelpFragment.kt\nfast/dic/dict/fragments/HelpFragment$getWebViewClient$client$1\n*L\n67#1:84\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J*\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0017b\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "fast/dic/dict/fragments/HelpFragment$getWebViewClient$client$1",
        "Landroid/webkit/WebViewClient;",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "onReceivedError",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "error",
        "Landroid/webkit/WebResourceError;",
        "shouldOverrideUrlLoading",
        "",
        "Lkotlin/Deprecated;",
        "message",
        "Deprecated in Java",
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
.field final synthetic this$0:Lfast/dic/dict/fragments/HelpFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/fragments/HelpFragment;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/fragments/HelpFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/fragments/HelpFragment;

    .line 46
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static final shouldOverrideUrlLoading$lambda$0(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 74
    sget-object p0, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Play phonetic pronunciation is completed."

    invoke-virtual {p0, v1, v0}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 51
    iget-object p0, p0, Lfast/dic/dict/fragments/HelpFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/fragments/HelpFragment;

    invoke-static {p0}, Lfast/dic/dict/fragments/HelpFragment;->access$getBinding$p(Lfast/dic/dict/fragments/HelpFragment;)Lfast/dic/dict/databinding/FragmentHelpBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentHelpBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lfast/dic/dict/views/CustomProgressbar;->setVisibility(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 61
    iget-object p0, p0, Lfast/dic/dict/fragments/HelpFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/fragments/HelpFragment;

    invoke-static {p0}, Lfast/dic/dict/fragments/HelpFragment;->access$getBinding$p(Lfast/dic/dict/fragments/HelpFragment;)Lfast/dic/dict/databinding/FragmentHelpBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentHelpBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lfast/dic/dict/views/CustomProgressbar;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 65
    iget-object p1, p0, Lfast/dic/dict/fragments/HelpFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/fragments/HelpFragment;

    invoke-static {p1}, Lfast/dic/dict/fragments/HelpFragment;->access$getCanRedirect$p(Lfast/dic/dict/fragments/HelpFragment;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_2

    .line 84
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "parse(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "http://cdn.fastdic.com/c-en-audios/"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".mp3"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    sget-object p2, Lfast/dic/dict/utils/FDAudioPlayerManager;->Companion:Lfast/dic/dict/utils/FDAudioPlayerManager$Companion;

    invoke-virtual {p2}, Lfast/dic/dict/utils/FDAudioPlayerManager$Companion;->getGet()Lfast/dic/dict/utils/FDAudioPlayerManager;

    move-result-object p2

    iget-object p0, p0, Lfast/dic/dict/fragments/HelpFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/fragments/HelpFragment;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/HelpFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lfast/dic/dict/fragments/HelpFragment$getWebViewClient$client$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/fragments/HelpFragment$getWebViewClient$client$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p1, p0, v0}, Lfast/dic/dict/utils/FDAudioPlayerManager;->audioPlayerAsync(Ljava/lang/String;Landroid/content/Context;Landroid/media/MediaPlayer$OnCompletionListener;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method
