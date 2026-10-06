.class public Lfast/dic/dict/adapters/MoreRowModel;
.super Ljava/lang/Object;
.source "MoreAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lfast/dic/dict/adapters/MoreRowModel;",
        "",
        "title",
        "",
        "type",
        "Lfast/dic/dict/adapters/MoreRowEnum;",
        "<init>",
        "(Ljava/lang/String;Lfast/dic/dict/adapters/MoreRowEnum;)V",
        "getTitle",
        "()Ljava/lang/String;",
        "getType",
        "()Lfast/dic/dict/adapters/MoreRowEnum;",
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
.field private final title:Ljava/lang/String;

.field private final type:Lfast/dic/dict/adapters/MoreRowEnum;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lfast/dic/dict/adapters/MoreRowEnum;)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/adapters/MoreRowModel;->title:Ljava/lang/String;

    iput-object p2, p0, Lfast/dic/dict/adapters/MoreRowModel;->type:Lfast/dic/dict/adapters/MoreRowEnum;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lfast/dic/dict/adapters/MoreRowEnum;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 126
    sget-object p2, Lfast/dic/dict/adapters/MoreRowEnum;->INNER_ROW:Lfast/dic/dict/adapters/MoreRowEnum;

    :cond_0
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/adapters/MoreRowModel;-><init>(Ljava/lang/String;Lfast/dic/dict/adapters/MoreRowEnum;)V

    return-void
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lfast/dic/dict/adapters/MoreRowModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Lfast/dic/dict/adapters/MoreRowEnum;
    .locals 0

    .line 126
    iget-object p0, p0, Lfast/dic/dict/adapters/MoreRowModel;->type:Lfast/dic/dict/adapters/MoreRowEnum;

    return-object p0
.end method
