.class public final Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;
.super Lfast/dic/dict/activities/MainViewModel$CopyUiState;
.source "MainViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/activities/MainViewModel$CopyUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StorageAlert"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\tH\u00c6\u0003J;\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0014\u0010\u001a\u001a\u00020\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0083\u0004J\n\u0010\u001d\u001a\u00020\u0003H\u00d6\u0081\u0004J\n\u0010\u001e\u001a\u00020\u001fH\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006 "
    }
    d2 = {
        "Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;",
        "Lfast/dic/dict/activities/MainViewModel$CopyUiState;",
        "titleResId",
        "",
        "databaseSize",
        "",
        "availableSpace",
        "ctaResId",
        "exitApp",
        "",
        "<init>",
        "(IJJIZ)V",
        "getTitleResId",
        "()I",
        "getDatabaseSize",
        "()J",
        "getAvailableSpace",
        "getCtaResId",
        "getExitApp",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
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


# instance fields
.field private final availableSpace:J

.field private final ctaResId:I

.field private final databaseSize:J

.field private final exitApp:Z

.field private final titleResId:I


# direct methods
.method public constructor <init>(IJJIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 356
    invoke-direct {p0, v0}, Lfast/dic/dict/activities/MainViewModel$CopyUiState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 357
    iput p1, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->titleResId:I

    .line 358
    iput-wide p2, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->databaseSize:J

    .line 359
    iput-wide p4, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->availableSpace:J

    .line 360
    iput p6, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->ctaResId:I

    .line 361
    iput-boolean p7, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->exitApp:Z

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;IJJIZILjava/lang/Object;)Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->titleResId:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-wide p2, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->databaseSize:J

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-wide p4, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->availableSpace:J

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget p6, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->ctaResId:I

    :cond_3
    and-int/lit8 p8, p8, 0x10

    if-eqz p8, :cond_4

    iget-boolean p7, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->exitApp:Z

    :cond_4
    move p8, p6

    move p9, p7

    move-wide p6, p4

    move-wide p4, p2

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p9}, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->copy(IJJIZ)Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->titleResId:I

    return p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->databaseSize:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->availableSpace:J

    return-wide v0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->ctaResId:I

    return p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->exitApp:Z

    return p0
.end method

.method public final copy(IJJIZ)Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;
    .locals 0

    new-instance p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;

    invoke-direct/range {p0 .. p7}, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;-><init>(IJJIZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;

    iget v1, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->titleResId:I

    iget v3, p1, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->titleResId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->databaseSize:J

    iget-wide v5, p1, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->databaseSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->availableSpace:J

    iget-wide v5, p1, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->availableSpace:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->ctaResId:I

    iget v3, p1, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->ctaResId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->exitApp:Z

    iget-boolean p1, p1, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->exitApp:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAvailableSpace()J
    .locals 2

    .line 359
    iget-wide v0, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->availableSpace:J

    return-wide v0
.end method

.method public final getCtaResId()I
    .locals 0

    .line 360
    iget p0, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->ctaResId:I

    return p0
.end method

.method public final getDatabaseSize()J
    .locals 2

    .line 358
    iget-wide v0, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->databaseSize:J

    return-wide v0
.end method

.method public final getExitApp()Z
    .locals 0

    .line 361
    iget-boolean p0, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->exitApp:Z

    return p0
.end method

.method public final getTitleResId()I
    .locals 0

    .line 357
    iget p0, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->titleResId:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->titleResId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->databaseSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->availableSpace:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->ctaResId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->exitApp:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->titleResId:I

    iget-wide v1, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->databaseSize:J

    iget-wide v3, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->availableSpace:J

    iget v5, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->ctaResId:I

    iget-boolean p0, p0, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;->exitApp:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "StorageAlert(titleResId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", databaseSize="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", availableSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ctaResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exitApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
