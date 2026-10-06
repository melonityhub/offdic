.class public final Lfast/dic/dict/fragments/onboardings/PushNotificationOnBoardingFragmentDirections$Companion;
.super Ljava/lang/Object;
.source "PushNotificationOnBoardingFragmentDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/fragments/onboardings/PushNotificationOnBoardingFragmentDirections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\u0004\u001a\u00020\u0005H\u0007b\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lfast/dic/dict/fragments/onboardings/PushNotificationOnBoardingFragmentDirections$Companion;",
        "",
        "<init>",
        "()V",
        "actionPushNotificationOnBoardingFragmentToAdvertisementOnboardingFragment",
        "Landroidx/navigation/NavDirections;",
        "Landroidx/annotation/CheckResult;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/fragments/onboardings/PushNotificationOnBoardingFragmentDirections$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final actionPushNotificationOnBoardingFragmentToAdvertisementOnboardingFragment()Landroidx/navigation/NavDirections;
    .locals 1

    .line 11
    new-instance p0, Landroidx/navigation/ActionOnlyNavDirections;

    sget v0, Lfast/dic/dict/R$id;->action_pushNotificationOnBoardingFragment_to_advertisementOnboardingFragment:I

    invoke-direct {p0, v0}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    check-cast p0, Landroidx/navigation/NavDirections;

    return-object p0
.end method
