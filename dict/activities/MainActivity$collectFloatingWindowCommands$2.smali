.class final Lfast/dic/dict/activities/MainActivity$collectFloatingWindowCommands$2;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/activities/MainActivity;->collectFloatingWindowCommands(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
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


# instance fields
.field final synthetic this$0:Lfast/dic/dict/activities/MainActivity;


# direct methods
.method constructor <init>(Lfast/dic/dict/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/activities/MainActivity$collectFloatingWindowCommands$2;->this$0:Lfast/dic/dict/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 244
    sget-object p2, Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand$Start;->INSTANCE:Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand$Start;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lfast/dic/dict/activities/MainActivity$collectFloatingWindowCommands$2;->this$0:Lfast/dic/dict/activities/MainActivity;

    invoke-static {p0}, Lfast/dic/dict/activities/MainActivity;->access$startFloatingWindowServiceIfAllowed(Lfast/dic/dict/activities/MainActivity;)V

    goto :goto_0

    .line 245
    :cond_0
    sget-object p2, Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand$Stop;->INSTANCE:Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand$Stop;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lfast/dic/dict/activities/MainActivity$collectFloatingWindowCommands$2;->this$0:Lfast/dic/dict/activities/MainActivity;

    .line 246
    new-instance p2, Landroid/content/Intent;

    iget-object p0, p0, Lfast/dic/dict/activities/MainActivity$collectFloatingWindowCommands$2;->this$0:Lfast/dic/dict/activities/MainActivity;

    invoke-virtual {p0}, Lfast/dic/dict/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lfast/dic/dict/services/FDFloatingWindowService;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    invoke-virtual {p1, p2}, Lfast/dic/dict/activities/MainActivity;->stopService(Landroid/content/Intent;)Z

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 249
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 243
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 242
    check-cast p1, Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/activities/MainActivity$collectFloatingWindowCommands$2;->emit(Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
