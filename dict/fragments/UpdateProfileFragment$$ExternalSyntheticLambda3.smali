.class public final synthetic Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda3;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda3;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda3;->f$0:Landroid/widget/EditText;

    iget-object p0, p0, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda3;->f$1:Landroid/widget/EditText;

    check-cast p1, Lfast/dic/dict/services/parse/FDParseUser;

    check-cast p2, Lfast/dic/dict/services/parse/FDPurchased;

    invoke-static {v0, p0, p1, p2}, Lfast/dic/dict/fragments/UpdateProfileFragment;->onCreateView$lambda$2(Landroid/widget/EditText;Landroid/widget/EditText;Lfast/dic/dict/services/parse/FDParseUser;Lfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
