.class public final synthetic Lfast/dic/dict/analytics/FirebaseUserPropertiesManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-static {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->firebaseAnalytics_delegate$lambda$0(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    return-object p0
.end method
