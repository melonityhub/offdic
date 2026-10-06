.class public Lfast/dic/dict/models/api/BaseApiResponseModel;
.super Ljava/lang/Object;
.source "BaseApiResponseModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R-\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u0092\u0002\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0004\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR/\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u0092\u0002\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lfast/dic/dict/models/api/BaseApiResponseModel;",
        "",
        "<init>",
        "()V",
        "successful",
        "",
        "getSuccessful",
        "()Z",
        "setSuccessful",
        "(Z)V",
        "Lcom/google/gson/annotations/SerializedName;",
        "value",
        "result",
        "",
        "getResult",
        "()Ljava/lang/String;",
        "setResult",
        "(Ljava/lang/String;)V",
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
.field private result:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation
.end field

.field private successful:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "successful"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getResult()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lfast/dic/dict/models/api/BaseApiResponseModel;->result:Ljava/lang/String;

    return-object p0
.end method

.method public final getSuccessful()Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lfast/dic/dict/models/api/BaseApiResponseModel;->successful:Z

    return p0
.end method

.method public final setResult(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lfast/dic/dict/models/api/BaseApiResponseModel;->result:Ljava/lang/String;

    return-void
.end method

.method public final setSuccessful(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lfast/dic/dict/models/api/BaseApiResponseModel;->successful:Z

    return-void
.end method
