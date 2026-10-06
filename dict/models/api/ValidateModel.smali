.class public final Lfast/dic/dict/models/api/ValidateModel;
.super Lfast/dic/dict/models/api/BaseApiResponseModel;
.source "ValidateModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R-\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u0092\u0002\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0004\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lfast/dic/dict/models/api/ValidateModel;",
        "Lfast/dic/dict/models/api/BaseApiResponseModel;",
        "<init>",
        "()V",
        "addToTransaction",
        "",
        "getAddToTransaction",
        "()Z",
        "setAddToTransaction",
        "(Z)V",
        "Lcom/google/gson/annotations/SerializedName;",
        "value",
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
.field private addToTransaction:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "addToTransaction"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lfast/dic/dict/models/api/BaseApiResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAddToTransaction()Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lfast/dic/dict/models/api/ValidateModel;->addToTransaction:Z

    return p0
.end method

.method public final setAddToTransaction(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lfast/dic/dict/models/api/ValidateModel;->addToTransaction:Z

    return-void
.end method
