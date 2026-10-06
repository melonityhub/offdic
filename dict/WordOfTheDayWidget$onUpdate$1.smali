.class public final Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;
.super Ljava/lang/Object;
.source "WordOfTheDayWidget.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/WordOfTheDayWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lfast/dic/dict/models/api/WodApiModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWordOfTheDayWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WordOfTheDayWidget.kt\nfast/dic/dict/WordOfTheDayWidget$onUpdate$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,305:1\n1#2:306\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J\u001e\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "fast/dic/dict/WordOfTheDayWidget$onUpdate$1",
        "Lretrofit2/Callback;",
        "Lfast/dic/dict/models/api/WodApiModel;",
        "onResponse",
        "",
        "call",
        "Lretrofit2/Call;",
        "response",
        "Lretrofit2/Response;",
        "onFailure",
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
.field final synthetic $appWidgetIds:[I

.field final synthetic $appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $todayWod:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lfast/dic/dict/models/api/WodApiModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfast/dic/dict/WordOfTheDayWidget;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;[ILfast/dic/dict/WordOfTheDayWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lfast/dic/dict/models/api/WodApiModel;",
            ">;[I",
            "Lfast/dic/dict/WordOfTheDayWidget;",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->$todayWod:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->$appWidgetIds:[I

    iput-object p3, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->this$0:Lfast/dic/dict/WordOfTheDayWidget;

    iput-object p4, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->$context:Landroid/content/Context;

    iput-object p5, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lfast/dic/dict/models/api/WodApiModel;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----------------> widget onUpdate - onFailure called + "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object p1, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->$appWidgetIds:[I

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aget v4, p1, v0

    .line 134
    iget-object v1, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->this$0:Lfast/dic/dict/WordOfTheDayWidget;

    iget-object v2, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v5, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->$todayWod:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lfast/dic/dict/models/api/WodApiModel;

    iget-object v6, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->this$0:Lfast/dic/dict/WordOfTheDayWidget;

    invoke-static {v6}, Lfast/dic/dict/WordOfTheDayWidget;->access$getWidgetSize$p(Lfast/dic/dict/WordOfTheDayWidget;)Lfast/dic/dict/WidgetEnumSize;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lfast/dic/dict/WordOfTheDayWidget;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILfast/dic/dict/models/api/WodApiModel;Lfast/dic/dict/WidgetEnumSize;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lfast/dic/dict/models/api/WodApiModel;",
            ">;",
            "Lretrofit2/Response<",
            "Lfast/dic/dict/models/api/WodApiModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "----------------> widget onUpdate - onResponse called"

    invoke-virtual {p1, v2, v1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->$todayWod:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 123
    iget-object p1, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->$todayWod:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lfast/dic/dict/models/api/WodApiModel;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->this$0:Lfast/dic/dict/WordOfTheDayWidget;

    invoke-static {p2}, Lfast/dic/dict/WordOfTheDayWidget;->access$getLocalStorage$p(Lfast/dic/dict/WordOfTheDayWidget;)Lfast/dic/dict/database/LocalStorage;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "localStorage"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p2, p1}, Lfast/dic/dict/database/LocalStorage;->storeWod(Lfast/dic/dict/models/api/WodApiModel;)V

    .line 125
    :cond_1
    iget-object p1, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->$appWidgetIds:[I

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget v4, p1, v0

    .line 126
    iget-object v1, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->this$0:Lfast/dic/dict/WordOfTheDayWidget;

    iget-object v2, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v5, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->$todayWod:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lfast/dic/dict/models/api/WodApiModel;

    iget-object v6, p0, Lfast/dic/dict/WordOfTheDayWidget$onUpdate$1;->this$0:Lfast/dic/dict/WordOfTheDayWidget;

    invoke-static {v6}, Lfast/dic/dict/WordOfTheDayWidget;->access$getWidgetSize$p(Lfast/dic/dict/WordOfTheDayWidget;)Lfast/dic/dict/WidgetEnumSize;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lfast/dic/dict/WordOfTheDayWidget;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILfast/dic/dict/models/api/WodApiModel;Lfast/dic/dict/WidgetEnumSize;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
