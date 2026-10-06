.class public final Lfast/dic/dict/fragments/SettingFragment$onCreateView$6;
.super Ljava/lang/Object;
.source "SettingFragment.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "fast/dic/dict/fragments/SettingFragment$onCreateView$6",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "onStopTrackingTouch",
        "",
        "seekBar",
        "Landroid/widget/SeekBar;",
        "onStartTrackingTouch",
        "onProgressChanged",
        "progress",
        "",
        "fromUser",
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

    iput-object p1, p0, Lfast/dic/dict/fragments/SettingFragment$onCreateView$6;->this$0:Lfast/dic/dict/fragments/SettingFragment;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    const-string p3, "seekBar"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object p0, p0, Lfast/dic/dict/fragments/SettingFragment$onCreateView$6;->this$0:Lfast/dic/dict/fragments/SettingFragment;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/SettingFragment;->getLocalStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object p0

    invoke-virtual {p0, p2}, Lfast/dic/dict/database/LocalStorage;->storeOfflineSpeechSpeed(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const-string p0, "seekBar"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const-string p0, "seekBar"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
