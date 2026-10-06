.class public final Lfast/dic/dict/helpers/FDMainDatabaseHelper$databaseFile$1;
.super Ljava/lang/Object;
.source "FDDatabaseHelper.kt"

# interfaces
.implements Lcom/getkeepsafe/relinker/ReLinker$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/helpers/FDMainDatabaseHelper;->getDatabaseFile()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "fast/dic/dict/helpers/FDMainDatabaseHelper$databaseFile$1",
        "Lcom/getkeepsafe/relinker/ReLinker$LoadListener;",
        "success",
        "",
        "failure",
        "t",
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
.field final synthetic this$0:Lfast/dic/dict/helpers/FDMainDatabaseHelper;


# direct methods
.method constructor <init>(Lfast/dic/dict/helpers/FDMainDatabaseHelper;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper$databaseFile$1;->this$0:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Throwable;)V
    .locals 2

    .line 137
    iget-object p0, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper$databaseFile$1;->this$0:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-static {p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->access$getLogger$p(Lfast/dic/dict/helpers/FDMainDatabaseHelper;)Lfast/dic/dict/utils/Logger;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fail to load libraries = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public success()V
    .locals 2

    .line 136
    iget-object p0, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper$databaseFile$1;->this$0:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-static {p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->access$getLogger$p(Lfast/dic/dict/helpers/FDMainDatabaseHelper;)Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Successfully load libraries"

    invoke-virtual {p0, v1, v0}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
