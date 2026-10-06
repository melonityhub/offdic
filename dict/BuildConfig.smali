.class public final Lfast/dic/dict/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "fast.dic.dict"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final ENABLE_REWARDED_ADS:Z = false

.field public static final FLAVOR:Ljava/lang/String; = "googleflavor"

.field public static final TRANSLATION_ARRAY:[Ljava/lang/String;

.field public static final VERSION_CODE:I = 0x1bc

.field public static final VERSION_NAME:Ljava/lang/String; = "5.7.4"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 16
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "en_US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fa_IR"

    aput-object v2, v0, v1

    sput-object v0, Lfast/dic/dict/BuildConfig;->TRANSLATION_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
