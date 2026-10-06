.class public final Lfast/dic/dict/views/LoadingSpinner;
.super Ljava/lang/Object;
.source "LoadingSpinner.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lfast/dic/dict/views/LoadingSpinner;",
        "",
        "mContext",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "mProgressDialog",
        "Lfast/dic/dict/views/LoadingProgress;",
        "showPreparingFile",
        "",
        "dismiss",
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
.field private final mContext:Landroid/content/Context;

.field private mProgressDialog:Lfast/dic/dict/views/LoadingProgress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/views/LoadingSpinner;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 20
    :try_start_0
    iget-object v0, p0, Lfast/dic/dict/views/LoadingSpinner;->mProgressDialog:Lfast/dic/dict/views/LoadingProgress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfast/dic/dict/views/LoadingProgress;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lfast/dic/dict/views/LoadingSpinner;->mProgressDialog:Lfast/dic/dict/views/LoadingProgress;

    return-void
.end method

.method public final showPreparingFile()V
    .locals 2

    .line 9
    iget-object v0, p0, Lfast/dic/dict/views/LoadingSpinner;->mProgressDialog:Lfast/dic/dict/views/LoadingProgress;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lfast/dic/dict/views/LoadingProgress;

    iget-object v1, p0, Lfast/dic/dict/views/LoadingSpinner;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfast/dic/dict/views/LoadingProgress;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfast/dic/dict/views/LoadingSpinner;->mProgressDialog:Lfast/dic/dict/views/LoadingProgress;

    :cond_0
    if-eqz v0, :cond_1

    .line 13
    iget-object p0, p0, Lfast/dic/dict/views/LoadingSpinner;->mContext:Landroid/content/Context;

    sget v1, Lfast/dic/dict/R$string;->preparing_file:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfast/dic/dict/views/LoadingProgress;->show(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
