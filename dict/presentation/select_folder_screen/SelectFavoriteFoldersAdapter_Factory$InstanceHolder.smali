.class final Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "SelectFavoriteFoldersAdapter_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field static final INSTANCE:Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter_Factory;

    invoke-direct {v0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter_Factory;-><init>()V

    sput-object v0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter_Factory$InstanceHolder;->INSTANCE:Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter_Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
