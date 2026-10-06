.class final Lfast/dic/dict/services/RetrofitBuilder_GetParseRetrofitFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "RetrofitBuilder_GetParseRetrofitFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/services/RetrofitBuilder_GetParseRetrofitFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field static final INSTANCE:Lfast/dic/dict/services/RetrofitBuilder_GetParseRetrofitFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lfast/dic/dict/services/RetrofitBuilder_GetParseRetrofitFactory;

    invoke-direct {v0}, Lfast/dic/dict/services/RetrofitBuilder_GetParseRetrofitFactory;-><init>()V

    sput-object v0, Lfast/dic/dict/services/RetrofitBuilder_GetParseRetrofitFactory$InstanceHolder;->INSTANCE:Lfast/dic/dict/services/RetrofitBuilder_GetParseRetrofitFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
