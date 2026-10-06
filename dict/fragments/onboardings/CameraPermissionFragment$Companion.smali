.class public final Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;
.super Ljava/lang/Object;
.source "CameraPermissionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraPermissionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraPermissionFragment.kt\nfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,125:1\n14063#2,2:126\n14266#2,2:128\n*S KotlinDebug\n*F\n+ 1 CameraPermissionFragment.kt\nfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion\n*L\n100#1:126,2\n105#1:128,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\u0002\u00a2\u0006\u0002\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;",
        "",
        "<init>",
        "()V",
        "PERMISSION_GRANTED_KEY",
        "",
        "REQUIRED_PERMISSIONS",
        "",
        "[Ljava/lang/String;",
        "isCameraPermissionGranted",
        "",
        "context",
        "Landroid/content/Context;",
        "isStoragePermissionGranted",
        "activity",
        "Landroid/app/Activity;",
        "readImagePermission",
        "()[Ljava/lang/String;",
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

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$readImagePermission(Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;)[Ljava/lang/String;
    .locals 0

    .line 92
    invoke-direct {p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;->readImagePermission()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final readImagePermission()[Ljava/lang/String;
    .locals 4

    .line 111
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p0, v0, :cond_1

    .line 112
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    if-lt p0, v0, :cond_0

    const/4 p0, 0x2

    .line 114
    new-array p0, p0, [Ljava/lang/String;

    aput-object v3, p0, v1

    .line 115
    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    aput-object v0, p0, v2

    return-object p0

    .line 118
    :cond_0
    new-array p0, v2, [Ljava/lang/String;

    aput-object v3, p0, v1

    return-object p0

    .line 121
    :cond_1
    new-array p0, v2, [Ljava/lang/String;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v0, p0, v1

    return-object p0
.end method


# virtual methods
.method public final isCameraPermissionGranted(Landroid/content/Context;)Z
    .locals 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->access$getREQUIRED_PERMISSIONS$cp()[Ljava/lang/String;

    move-result-object p0

    .line 126
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 101
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final isStoragePermissionGranted(Landroid/app/Activity;)Z
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;->readImagePermission()[Ljava/lang/String;

    move-result-object p0

    .line 128
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 106
    move-object v4, p1

    check-cast v4, Landroid/content/Context;

    invoke-static {v4, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
