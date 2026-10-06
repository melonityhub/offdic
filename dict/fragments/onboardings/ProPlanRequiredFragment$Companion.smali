.class public final Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$Companion;
.super Ljava/lang/Object;
.source "ProPlanRequiredFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$Companion;",
        "",
        "<init>",
        "()V",
        "openModal",
        "Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;",
        "context",
        "Landroidx/fragment/app/FragmentActivity;",
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

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final openModal(Landroidx/fragment/app/FragmentActivity;)Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance p0, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;

    invoke-direct {p0}, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p0
.end method
