.class final Lfast/dic/dict/services/RetrofitBuilder_GetRetrofitFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "RetrofitBuilder_GetRetrofitFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/services/RetrofitBuilder_GetRetrofitFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field static final INSTANCE:Lfast/dic/dict/services/RetrofitBuilder_GetRetrofitFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lfast/dic/dict/services/RetrofitBuilder_GetRetrofitFactory;

    invoke-direct {v0}, Lfast/dic/dict/services/RetrofitBuilder_GetRetrofitFactory;-><init>()V

    sput-object v0, Lfast/dic/dict/services/RetrofitBuilder_GetRetrofitFactory$InstanceHolder;->INSTANCE:Lfast/dic/dict/services/RetrofitBuilder_GetRetrofitFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
