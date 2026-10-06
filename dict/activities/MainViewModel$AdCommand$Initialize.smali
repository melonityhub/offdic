.class public final Lfast/dic/dict/activities/MainViewModel$AdCommand$Initialize;
.super Lfast/dic/dict/activities/MainViewModel$AdCommand;
.source "MainViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/activities/MainViewModel$AdCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Initialize"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lfast/dic/dict/activities/MainViewModel$AdCommand$Initialize;",
        "Lfast/dic/dict/activities/MainViewModel$AdCommand;",
        "<init>",
        "()V",
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


# static fields
.field public static final INSTANCE:Lfast/dic/dict/activities/MainViewModel$AdCommand$Initialize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfast/dic/dict/activities/MainViewModel$AdCommand$Initialize;

    invoke-direct {v0}, Lfast/dic/dict/activities/MainViewModel$AdCommand$Initialize;-><init>()V

    sput-object v0, Lfast/dic/dict/activities/MainViewModel$AdCommand$Initialize;->INSTANCE:Lfast/dic/dict/activities/MainViewModel$AdCommand$Initialize;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 380
    invoke-direct {p0, v0}, Lfast/dic/dict/activities/MainViewModel$AdCommand;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
