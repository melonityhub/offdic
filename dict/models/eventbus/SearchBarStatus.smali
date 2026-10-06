.class public final Lfast/dic/dict/models/eventbus/SearchBarStatus;
.super Ljava/lang/Object;
.source "SearchBarStatus.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u000c\u001a\u00020\rJ\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00ca\u0001\u0002\u0008\u0014\u00a8\u0006\u0013"
    }
    d2 = {
        "Lfast/dic/dict/models/eventbus/SearchBarStatus;",
        "Landroid/os/Parcelable;",
        "type",
        "Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;",
        "word",
        "",
        "<init>",
        "(Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;Ljava/lang/String;)V",
        "getType",
        "()Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;",
        "getWord",
        "()Ljava/lang/String;",
        "describeContents",
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "app",
        "Lkotlinx/parcelize/Parcelize;"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lfast/dic/dict/models/eventbus/SearchBarStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final type:Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;

.field private final word:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfast/dic/dict/models/eventbus/SearchBarStatus$Creator;

    invoke-direct {v0}, Lfast/dic/dict/models/eventbus/SearchBarStatus$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lfast/dic/dict/models/eventbus/SearchBarStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lfast/dic/dict/models/eventbus/SearchBarStatus;->type:Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;

    iput-object p2, p0, Lfast/dic/dict/models/eventbus/SearchBarStatus;->word:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/models/eventbus/SearchBarStatus;-><init>(Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getType()Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;
    .locals 0

    .line 11
    iget-object p0, p0, Lfast/dic/dict/models/eventbus/SearchBarStatus;->type:Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;

    return-object p0
.end method

.method public final getWord()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lfast/dic/dict/models/eventbus/SearchBarStatus;->word:Ljava/lang/String;

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lfast/dic/dict/models/eventbus/SearchBarStatus;->type:Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;

    invoke-virtual {p2}, Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lfast/dic/dict/models/eventbus/SearchBarStatus;->word:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
