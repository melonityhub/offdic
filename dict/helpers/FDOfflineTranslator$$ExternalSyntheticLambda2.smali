.class public final synthetic Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p1}, Lfast/dic/dict/helpers/FDOfflineTranslator;->downloadModelIfNeeded$lambda$2(Ljava/lang/Exception;)V

    return-void
.end method
