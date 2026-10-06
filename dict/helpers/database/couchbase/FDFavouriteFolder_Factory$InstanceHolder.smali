.class final Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "FDFavouriteFolder_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field static final INSTANCE:Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder_Factory;

    invoke-direct {v0}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder_Factory;-><init>()V

    sput-object v0, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder_Factory$InstanceHolder;->INSTANCE:Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder_Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
