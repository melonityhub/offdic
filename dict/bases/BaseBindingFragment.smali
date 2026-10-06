.class public Lfast/dic/dict/bases/BaseBindingFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseBindingFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\tH\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lfast/dic/dict/bases/BaseBindingFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "onBackPressed",
        "",
        "onAttach",
        "",
        "context",
        "Landroid/content/Context;",
        "updateConfig",
        "wrapper",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final updateConfig(Landroid/content/Context;)V
    .locals 0

    .line 28
    new-instance p0, Lfast/dic/dict/database/LocalStorage;

    invoke-direct {p0, p1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lfast/dic/dict/database/LocalStorage;->getCurrentLanguage()Ljava/util/Locale;

    move-result-object p0

    .line 29
    invoke-static {p0, p1}, Lfast/dic/dict/utils/LocaleExtKt;->updateCurrentLanguage(Ljava/util/Locale;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lfast/dic/dict/bases/BaseBindingFragment;->updateConfig(Landroid/content/Context;)V

    .line 24
    invoke-static {p1}, Lcom/google/android/play/core/splitcompat/SplitCompat;->install(Landroid/content/Context;)Z

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
