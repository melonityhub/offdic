.class public final synthetic Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1}, Lfast/dic/dict/helpers/FDOfflineTranslator;->translateAsync$lambda$2(Lkotlin/jvm/functions/Function2;Ljava/lang/Exception;)V

    return-void
.end method
