.class final Lfast/dic/dict/services/RetrofitBuilder_GetFDAdsRetrofitFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "RetrofitBuilder_GetFDAdsRetrofitFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/services/RetrofitBuilder_GetFDAdsRetrofitFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field static final INSTANCE:Lfast/dic/dict/services/RetrofitBuilder_GetFDAdsRetrofitFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lfast/dic/dict/services/RetrofitBuilder_GetFDAdsRetrofitFactory;

    invoke-direct {v0}, Lfast/dic/dict/services/RetrofitBuilder_GetFDAdsRetrofitFactory;-><init>()V

    sput-object v0, Lfast/dic/dict/services/RetrofitBuilder_GetFDAdsRetrofitFactory$InstanceHolder;->INSTANCE:Lfast/dic/dict/services/RetrofitBuilder_GetFDAdsRetrofitFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
