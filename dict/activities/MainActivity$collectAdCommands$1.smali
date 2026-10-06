.class final Lfast/dic/dict/activities/MainActivity$collectAdCommands$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/activities/MainActivity;->collectAdCommands(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "fast.dic.dict.activities.MainActivity"
    f = "MainActivity.kt"
    i = {}
    l = {
        0xe6
    }
    m = "collectAdCommands"
    n = {}
    nl = {
        -0x1
    }
    s = {}
    v = 0x2
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lfast/dic/dict/activities/MainActivity;


# direct methods
.method constructor <init>(Lfast/dic/dict/activities/MainActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/activities/MainActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/activities/MainActivity$collectAdCommands$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/activities/MainActivity$collectAdCommands$1;->this$0:Lfast/dic/dict/activities/MainActivity;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lfast/dic/dict/activities/MainActivity$collectAdCommands$1;->result:Ljava/lang/Object;

    iget p1, p0, Lfast/dic/dict/activities/MainActivity$collectAdCommands$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lfast/dic/dict/activities/MainActivity$collectAdCommands$1;->label:I

    iget-object p1, p0, Lfast/dic/dict/activities/MainActivity$collectAdCommands$1;->this$0:Lfast/dic/dict/activities/MainActivity;

    check-cast p0, Lkotlin/coroutines/Continuation;

    invoke-static {p1, p0}, Lfast/dic/dict/activities/MainActivity;->access$collectAdCommands(Lfast/dic/dict/activities/MainActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
