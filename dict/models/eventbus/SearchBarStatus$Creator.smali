.class public final Lfast/dic/dict/models/eventbus/SearchBarStatus$Creator;
.super Ljava/lang/Object;
.source "SearchBarStatus.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/models/eventbus/SearchBarStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lfast/dic/dict/models/eventbus/SearchBarStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lfast/dic/dict/models/eventbus/SearchBarStatus;
    .locals 1

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lfast/dic/dict/models/eventbus/SearchBarStatus;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;->valueOf(Ljava/lang/String;)Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lfast/dic/dict/models/eventbus/SearchBarStatus;-><init>(Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lfast/dic/dict/models/eventbus/SearchBarStatus$Creator;->createFromParcel(Landroid/os/Parcel;)Lfast/dic/dict/models/eventbus/SearchBarStatus;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lfast/dic/dict/models/eventbus/SearchBarStatus;
    .locals 0

    new-array p0, p1, [Lfast/dic/dict/models/eventbus/SearchBarStatus;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lfast/dic/dict/models/eventbus/SearchBarStatus$Creator;->newArray(I)[Lfast/dic/dict/models/eventbus/SearchBarStatus;

    move-result-object p0

    return-object p0
.end method
