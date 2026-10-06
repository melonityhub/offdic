.class public final Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter_Factory;
.super Ljava/lang/Object;
.source "ResultOrderAdapter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter_Factory;
    .locals 1

    .line 32
    sget-object v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter_Factory$InstanceHolder;->INSTANCE:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter_Factory;

    return-object v0
.end method

.method public static newInstance()Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;
    .locals 1

    .line 36
    new-instance v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    invoke-direct {v0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;
    .locals 0

    .line 28
    invoke-static {}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter_Factory;->newInstance()Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter_Factory;->get()Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    move-result-object p0

    return-object p0
.end method
