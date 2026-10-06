.class public final Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;
.super Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;
.source "GooglePaymentViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Initialized"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\n\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0083\u0004J\n\u0010\r\u001a\u00020\u000eH\u00d6\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;",
        "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;",
        "state",
        "",
        "<init>",
        "(Z)V",
        "getState",
        "()Z",
        "component1",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final state:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, v0}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;->state:Z

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;ZILjava/lang/Object;)Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;->state:Z

    :cond_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;->copy(Z)Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;->state:Z

    return p0
.end method

.method public final copy(Z)Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;
    .locals 0

    new-instance p0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;

    invoke-direct {p0, p1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;-><init>(Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;

    iget-boolean p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;->state:Z

    iget-boolean p1, p1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;->state:Z

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getState()Z
    .locals 0

    .line 191
    iget-boolean p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;->state:Z

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;->state:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;->state:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initialized(state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
