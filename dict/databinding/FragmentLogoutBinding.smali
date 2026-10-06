.class public abstract Lfast/dic/dict/databinding/FragmentLogoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentLogoutBinding.java"


# instance fields
.field public final descriptionLabel:Landroid/widget/TextView;

.field protected mCloseAction:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mLogoutAction:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mLogoutBody:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final notLoggedInView:Landroid/widget/LinearLayout;

.field public final primaryBtn:Landroid/widget/Button;

.field public final secondaryBtn:Landroid/widget/Button;

.field public final titleLabel:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 48
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentLogoutBinding;->descriptionLabel:Landroid/widget/TextView;

    .line 49
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentLogoutBinding;->notLoggedInView:Landroid/widget/LinearLayout;

    .line 50
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentLogoutBinding;->primaryBtn:Landroid/widget/Button;

    .line 51
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentLogoutBinding;->secondaryBtn:Landroid/widget/Button;

    .line 52
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentLogoutBinding;->titleLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentLogoutBinding;
    .locals 1

    .line 116
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentLogoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentLogoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentLogoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    sget v0, Lfast/dic/dict/R$layout;->fragment_logout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentLogoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentLogoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentLogoutBinding;
    .locals 1

    .line 98
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentLogoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentLogoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentLogoutBinding;
    .locals 1

    .line 79
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentLogoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentLogoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentLogoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    sget v0, Lfast/dic/dict/R$layout;->fragment_logout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentLogoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentLogoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    sget v0, Lfast/dic/dict/R$layout;->fragment_logout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentLogoutBinding;

    return-object p0
.end method


# virtual methods
.method public getCloseAction()Landroid/view/View$OnClickListener;
    .locals 0

    .line 73
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentLogoutBinding;->mCloseAction:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getLogoutAction()Landroid/view/View$OnClickListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentLogoutBinding;->mLogoutAction:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getLogoutBody()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentLogoutBinding;->mLogoutBody:Ljava/lang/String;

    return-object p0
.end method

.method public abstract setCloseAction(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setLogoutAction(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setLogoutBody(Ljava/lang/String;)V
.end method
