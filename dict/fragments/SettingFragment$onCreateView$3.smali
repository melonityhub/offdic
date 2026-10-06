.class public final Lfast/dic/dict/fragments/SettingFragment$onCreateView$3;
.super Ljava/lang/Object;
.source "SettingFragment.kt"

# interfaces
.implements Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/fragments/SettingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "fast/dic/dict/fragments/SettingFragment$onCreateView$3",
        "Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;",
        "onLinkClicked",
        "",
        "url",
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
.field final synthetic this$0:Lfast/dic/dict/fragments/SettingFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/fragments/SettingFragment;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/fragments/SettingFragment$onCreateView$3;->this$0:Lfast/dic/dict/fragments/SettingFragment;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkClicked(Ljava/lang/String;)V
    .locals 1

    .line 96
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lfast/dic/dict/fragments/SettingFragment$onCreateView$3;->this$0:Lfast/dic/dict/fragments/SettingFragment;

    invoke-virtual {p0, p1}, Lfast/dic/dict/fragments/SettingFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
