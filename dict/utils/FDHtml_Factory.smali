.class public final Lfast/dic/dict/utils/FDHtml_Factory;
.super Ljava/lang/Object;
.source "FDHtml_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/utils/FDHtml;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final favoriteProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;",
            ">;"
        }
    .end annotation
.end field

.field private final resultLabelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/FDResultLabel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/FDResultLabel;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lfast/dic/dict/utils/FDHtml_Factory;->contextProvider:Ldagger/internal/Provider;

    .line 39
    iput-object p2, p0, Lfast/dic/dict/utils/FDHtml_Factory;->favoriteProvider:Ldagger/internal/Provider;

    .line 40
    iput-object p3, p0, Lfast/dic/dict/utils/FDHtml_Factory;->resultLabelProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lfast/dic/dict/utils/FDHtml_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/FDResultLabel;",
            ">;)",
            "Lfast/dic/dict/utils/FDHtml_Factory;"
        }
    .end annotation

    .line 50
    new-instance v0, Lfast/dic/dict/utils/FDHtml_Factory;

    invoke-direct {v0, p0, p1, p2}, Lfast/dic/dict/utils/FDHtml_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/database/FDResultLabel;)Lfast/dic/dict/utils/FDHtml;
    .locals 1

    .line 55
    new-instance v0, Lfast/dic/dict/utils/FDHtml;

    invoke-direct {v0, p0, p1, p2}, Lfast/dic/dict/utils/FDHtml;-><init>(Landroid/content/Context;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/database/FDResultLabel;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/utils/FDHtml;
    .locals 2

    .line 45
    iget-object v0, p0, Lfast/dic/dict/utils/FDHtml_Factory;->contextProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lfast/dic/dict/utils/FDHtml_Factory;->favoriteProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    iget-object p0, p0, Lfast/dic/dict/utils/FDHtml_Factory;->resultLabelProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/FDResultLabel;

    invoke-static {v0, v1, p0}, Lfast/dic/dict/utils/FDHtml_Factory;->newInstance(Landroid/content/Context;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/database/FDResultLabel;)Lfast/dic/dict/utils/FDHtml;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lfast/dic/dict/utils/FDHtml_Factory;->get()Lfast/dic/dict/utils/FDHtml;

    move-result-object p0

    return-object p0
.end method
