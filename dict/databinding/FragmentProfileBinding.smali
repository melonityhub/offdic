.class public abstract Lfast/dic/dict/databinding/FragmentProfileBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentProfileBinding.java"


# instance fields
.field public final activeEmailButtonOrSubscriptions:Landroid/widget/Button;

.field public final changePasswordRow:Lfast/dic/dict/views/RowView;

.field public final deleteAccountRow:Lfast/dic/dict/views/RowView;

.field public final emailNotActivatedLabel:Landroid/widget/TextView;

.field public final historyPurchasedRow:Lfast/dic/dict/views/RowView;

.field public final loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

.field public final logoutRow:Lfast/dic/dict/views/RowView;

.field public final profileLayoutView:Landroid/widget/RelativeLayout;

.field public final remainingDateLabel:Landroid/widget/TextView;

.field public final updateUserProfileRow:Lfast/dic/dict/views/RowView;

.field public final userEmailLabel:Landroid/widget/TextView;

.field public final userFullNameLabel:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Lfast/dic/dict/views/RowView;Lfast/dic/dict/views/RowView;Landroid/widget/TextView;Lfast/dic/dict/views/RowView;Lfast/dic/dict/views/CustomProgressbar;Lfast/dic/dict/views/RowView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lfast/dic/dict/views/RowView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 63
    invoke-direct/range {p0 .. p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 64
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentProfileBinding;->activeEmailButtonOrSubscriptions:Landroid/widget/Button;

    .line 65
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentProfileBinding;->changePasswordRow:Lfast/dic/dict/views/RowView;

    .line 66
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentProfileBinding;->deleteAccountRow:Lfast/dic/dict/views/RowView;

    .line 67
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentProfileBinding;->emailNotActivatedLabel:Landroid/widget/TextView;

    .line 68
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentProfileBinding;->historyPurchasedRow:Lfast/dic/dict/views/RowView;

    .line 69
    iput-object p9, p0, Lfast/dic/dict/databinding/FragmentProfileBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    .line 70
    iput-object p10, p0, Lfast/dic/dict/databinding/FragmentProfileBinding;->logoutRow:Lfast/dic/dict/views/RowView;

    .line 71
    iput-object p11, p0, Lfast/dic/dict/databinding/FragmentProfileBinding;->profileLayoutView:Landroid/widget/RelativeLayout;

    .line 72
    iput-object p12, p0, Lfast/dic/dict/databinding/FragmentProfileBinding;->remainingDateLabel:Landroid/widget/TextView;

    .line 73
    iput-object p13, p0, Lfast/dic/dict/databinding/FragmentProfileBinding;->updateUserProfileRow:Lfast/dic/dict/views/RowView;

    .line 74
    iput-object p14, p0, Lfast/dic/dict/databinding/FragmentProfileBinding;->userEmailLabel:Landroid/widget/TextView;

    .line 75
    iput-object p15, p0, Lfast/dic/dict/databinding/FragmentProfileBinding;->userFullNameLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentProfileBinding;
    .locals 1

    .line 118
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentProfileBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentProfileBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentProfileBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    sget v0, Lfast/dic/dict/R$layout;->fragment_profile:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentProfileBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentProfileBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentProfileBinding;
    .locals 1

    .line 100
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentProfileBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentProfileBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentProfileBinding;
    .locals 1

    .line 81
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentProfileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentProfileBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentProfileBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    sget v0, Lfast/dic/dict/R$layout;->fragment_profile:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentProfileBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentProfileBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    sget v0, Lfast/dic/dict/R$layout;->fragment_profile:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentProfileBinding;

    return-object p0
.end method
