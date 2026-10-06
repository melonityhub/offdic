.class public final synthetic Lfast/dic/dict/services/FDFloatingWindowService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/services/FDFloatingWindowService;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/services/FDFloatingWindowService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/services/FDFloatingWindowService$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/services/FDFloatingWindowService;

    return-void
.end method


# virtual methods
.method public final onPrimaryClipChanged()V
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/services/FDFloatingWindowService$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/services/FDFloatingWindowService;

    invoke-static {p0}, Lfast/dic/dict/services/FDFloatingWindowService;->mPrimaryChangeListener$lambda$0(Lfast/dic/dict/services/FDFloatingWindowService;)V

    return-void
.end method
