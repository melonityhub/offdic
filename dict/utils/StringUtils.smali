.class public final Lfast/dic/dict/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/utils/StringUtils$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStringExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringExt.kt\nfast/dic/dict/utils/StringUtils\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,610:1\n106#2:611\n78#2,22:612\n*S KotlinDebug\n*F\n+ 1 StringExt.kt\nfast/dic/dict/utils/StringUtils\n*L\n252#1:611\n252#1:612,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0019\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\u0008H\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lfast/dic/dict/utils/StringUtils;",
        "",
        "<init>",
        "()V",
        "brokenChars",
        "",
        "correctChars",
        "trimmingAndLowerCaseWords",
        "",
        "character",
        "charReplacement",
        "receivedStr",
        "putFarsiChars",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lfast/dic/dict/utils/StringUtils$Companion;


# instance fields
.field private brokenChars:[C

.field private correctChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/utils/StringUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/utils/StringUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/utils/StringUtils;->Companion:Lfast/dic/dict/utils/StringUtils$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 245
    new-array v1, v0, [C

    iput-object v1, p0, Lfast/dic/dict/utils/StringUtils;->brokenChars:[C

    .line 246
    new-array v0, v0, [C

    iput-object v0, p0, Lfast/dic/dict/utils/StringUtils;->correctChars:[C

    return-void
.end method

.method private final charReplacement(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 262
    invoke-direct {p0}, Lfast/dic/dict/utils/StringUtils;->putFarsiChars()V

    .line 265
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 266
    new-array v1, v0, [C

    const/4 v2, 0x0

    .line 267
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    move p1, v2

    :goto_0
    if-ge p1, v0, :cond_2

    .line 269
    iget-object v3, p0, Lfast/dic/dict/utils/StringUtils;->brokenChars:[C

    array-length v3, v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    .line 270
    aget-char v5, v1, p1

    iget-object v6, p0, Lfast/dic/dict/utils/StringUtils;->brokenChars:[C

    aget-char v6, v6, v4

    if-ne v5, v6, :cond_0

    .line 271
    iget-object v5, p0, Lfast/dic/dict/utils/StringUtils;->correctChars:[C

    aget-char v5, v5, v4

    aput-char v5, v1, p1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 275
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final putFarsiChars()V
    .locals 4

    .line 285
    iget-object v0, p0, Lfast/dic/dict/utils/StringUtils;->brokenChars:[C

    const/4 v1, 0x0

    const v2, 0xfb8a

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const v2, 0xfb8b

    .line 286
    aput-char v2, v0, v1

    const/4 v1, 0x2

    const v2, 0xfef3

    .line 287
    aput-char v2, v0, v1

    const/4 v1, 0x3

    const v2, 0xfef4

    .line 288
    aput-char v2, v0, v1

    const/4 v1, 0x4

    const v2, 0xfef2

    .line 289
    aput-char v2, v0, v1

    const/4 v1, 0x5

    const v2, 0xfef1

    .line 290
    aput-char v2, v0, v1

    const/4 v1, 0x6

    const v2, 0xfe81

    .line 291
    aput-char v2, v0, v1

    const/4 v1, 0x7

    const v2, 0xfeed

    .line 292
    aput-char v2, v0, v1

    const/16 v1, 0x8

    const v2, 0xfeee

    .line 293
    aput-char v2, v0, v1

    const/16 v1, 0x9

    const v2, 0xfe89

    .line 294
    aput-char v2, v0, v1

    const/16 v1, 0xa

    const v2, 0xfe8b

    .line 295
    aput-char v2, v0, v1

    const/16 v1, 0xb

    const v2, 0xfe8a

    .line 296
    aput-char v2, v0, v1

    const/16 v1, 0xc

    const v2, 0xfe8c

    .line 297
    aput-char v2, v0, v1

    const/16 v1, 0xd

    const v2, 0xfea9

    .line 298
    aput-char v2, v0, v1

    const/16 v1, 0xe

    const v2, 0xfeaa

    .line 299
    aput-char v2, v0, v1

    const/16 v1, 0xf

    const v2, 0xfeab

    .line 300
    aput-char v2, v0, v1

    const/16 v1, 0x10

    const v2, 0xfeac

    .line 301
    aput-char v2, v0, v1

    const/16 v1, 0x11

    const v2, 0xfead

    .line 302
    aput-char v2, v0, v1

    const/16 v1, 0x12

    const v2, 0xfeae

    .line 303
    aput-char v2, v0, v1

    const/16 v1, 0x13

    const v2, 0xfeaf

    .line 304
    aput-char v2, v0, v1

    const/16 v1, 0x14

    const v2, 0xfeb0

    .line 305
    aput-char v2, v0, v1

    const/16 v1, 0x15

    const v2, 0xfec1

    .line 306
    aput-char v2, v0, v1

    const/16 v1, 0x16

    const v2, 0xfec4

    .line 307
    aput-char v2, v0, v1

    const/16 v1, 0x17

    const v2, 0xfec2

    .line 308
    aput-char v2, v0, v1

    const/16 v1, 0x18

    const v2, 0xfec3

    .line 309
    aput-char v2, v0, v1

    const/16 v1, 0x19

    const v2, 0xfec5

    .line 310
    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0xfec8

    .line 311
    aput-char v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0xfec6

    .line 312
    aput-char v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0xfec7

    .line 313
    aput-char v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0xfb92

    .line 314
    aput-char v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0xfb94

    .line 315
    aput-char v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0xfb95

    .line 316
    aput-char v2, v0, v1

    const/16 v1, 0x20

    const v2, 0xfb93

    .line 317
    aput-char v2, v0, v1

    const/16 v1, 0x21

    const v2, 0xfb8e

    .line 318
    aput-char v2, v0, v1

    const/16 v1, 0x22

    const v2, 0xfb90

    .line 319
    aput-char v2, v0, v1

    const/16 v1, 0x23

    const v2, 0xfb91

    .line 320
    aput-char v2, v0, v1

    const/16 v1, 0x24

    const v2, 0xfb8f

    .line 321
    aput-char v2, v0, v1

    const/16 v1, 0x25

    const v2, 0xfee1

    .line 322
    aput-char v2, v0, v1

    const/16 v1, 0x26

    const v2, 0xfee3

    .line 323
    aput-char v2, v0, v1

    const/16 v1, 0x27

    const v2, 0xfee4

    .line 324
    aput-char v2, v0, v1

    const/16 v1, 0x28

    const v2, 0xfee2

    .line 325
    aput-char v2, v0, v1

    const/16 v1, 0x29

    const v2, 0xfee5

    .line 326
    aput-char v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0xfee7

    .line 327
    aput-char v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0xfee8

    .line 328
    aput-char v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0xfee6

    .line 329
    aput-char v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0xfe95

    .line 330
    aput-char v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0xfe97

    .line 331
    aput-char v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0xfe98

    .line 332
    aput-char v2, v0, v1

    const/16 v1, 0x30

    const v2, 0xfe96

    .line 333
    aput-char v2, v0, v1

    const/16 v1, 0x31

    const v2, 0xfe8d

    .line 334
    aput-char v2, v0, v1

    const/16 v1, 0x32

    const v2, 0xfe8e

    .line 335
    aput-char v2, v0, v1

    const/16 v1, 0x33

    const v2, 0xfedd

    .line 336
    aput-char v2, v0, v1

    const/16 v1, 0x34

    const v2, 0xfedf

    .line 337
    aput-char v2, v0, v1

    const/16 v1, 0x35

    const v2, 0xfee0

    .line 338
    aput-char v2, v0, v1

    const/16 v1, 0x36

    const v2, 0xfede

    .line 339
    aput-char v2, v0, v1

    const/16 v1, 0x37

    const v2, 0xfe8f

    .line 340
    aput-char v2, v0, v1

    const/16 v1, 0x38

    const v2, 0xfe91

    .line 341
    aput-char v2, v0, v1

    const/16 v1, 0x39

    const v2, 0xfe92

    .line 342
    aput-char v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0xfe90

    .line 343
    aput-char v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0xfbfc

    .line 344
    aput-char v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0xfef3

    .line 345
    aput-char v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0xfef4

    .line 346
    aput-char v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0xfbfd

    .line 347
    aput-char v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0xfeb1

    .line 348
    aput-char v2, v0, v1

    const/16 v1, 0x40

    const v2, 0xfeb3

    .line 349
    aput-char v2, v0, v1

    const/16 v1, 0x41

    const v2, 0xfeb4

    .line 350
    aput-char v2, v0, v1

    const/16 v1, 0x42

    const v2, 0xfeb2

    .line 351
    aput-char v2, v0, v1

    const/16 v1, 0x43

    const v2, 0xfeb5

    .line 352
    aput-char v2, v0, v1

    const/16 v1, 0x44

    const v2, 0xfeb7

    .line 353
    aput-char v2, v0, v1

    const/16 v1, 0x45

    const v2, 0xfeb8

    .line 354
    aput-char v2, v0, v1

    const/16 v1, 0x46

    const v2, 0xfeb6

    .line 355
    aput-char v2, v0, v1

    const/16 v1, 0x47

    const v2, 0xfb56

    .line 356
    aput-char v2, v0, v1

    const/16 v1, 0x48

    const v2, 0xfb58

    .line 357
    aput-char v2, v0, v1

    const/16 v1, 0x49

    const v2, 0xfb59

    .line 358
    aput-char v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0xfb57

    .line 359
    aput-char v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0xfb7a

    .line 360
    aput-char v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0xfb7c

    .line 361
    aput-char v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0xfb7d

    .line 362
    aput-char v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0xfb7b

    .line 363
    aput-char v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0xfe9d

    .line 364
    aput-char v2, v0, v1

    const/16 v1, 0x50

    const v2, 0xfe9f

    .line 365
    aput-char v2, v0, v1

    const/16 v1, 0x51

    const v2, 0xfea0

    .line 366
    aput-char v2, v0, v1

    const/16 v1, 0x52

    const v2, 0xfe9e

    .line 367
    aput-char v2, v0, v1

    const/16 v1, 0x53

    const v2, 0xfea1

    .line 368
    aput-char v2, v0, v1

    const/16 v1, 0x54

    const v2, 0xfea3

    .line 369
    aput-char v2, v0, v1

    const/16 v1, 0x55

    const v2, 0xfea4

    .line 370
    aput-char v2, v0, v1

    const/16 v1, 0x56

    const v2, 0xfea2

    .line 371
    aput-char v2, v0, v1

    const/16 v1, 0x57

    const v2, 0xfea5

    .line 372
    aput-char v2, v0, v1

    const/16 v1, 0x58

    const v2, 0xfea7

    .line 373
    aput-char v2, v0, v1

    const/16 v1, 0x59

    const v2, 0xfea8

    .line 374
    aput-char v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0xfea6

    .line 375
    aput-char v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0xfee9

    .line 376
    aput-char v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0xfeeb

    .line 377
    aput-char v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0xfeec

    .line 378
    aput-char v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0xfeea

    .line 379
    aput-char v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0xfec9

    .line 380
    aput-char v2, v0, v1

    const/16 v1, 0x60

    const v2, 0xfecb

    .line 381
    aput-char v2, v0, v1

    const/16 v1, 0x61

    const v2, 0xfecc

    .line 382
    aput-char v2, v0, v1

    const/16 v1, 0x62

    const v2, 0xfeca

    .line 383
    aput-char v2, v0, v1

    const/16 v1, 0x63

    const v2, 0xfecd

    .line 384
    aput-char v2, v0, v1

    const/16 v1, 0x64

    const v2, 0xfecf

    .line 385
    aput-char v2, v0, v1

    const/16 v1, 0x65

    const v2, 0xfed0

    .line 386
    aput-char v2, v0, v1

    const/16 v1, 0x66

    const v2, 0xfece

    .line 387
    aput-char v2, v0, v1

    const/16 v1, 0x67

    const v2, 0xfed1

    .line 388
    aput-char v2, v0, v1

    const/16 v1, 0x68

    const v2, 0xfed3

    .line 389
    aput-char v2, v0, v1

    const/16 v1, 0x69

    const v2, 0xfed4

    .line 390
    aput-char v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0xfed2

    .line 391
    aput-char v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0xfed5

    .line 392
    aput-char v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0xfed7

    .line 393
    aput-char v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0xfed8

    .line 394
    aput-char v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0xfed6

    .line 395
    aput-char v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0xfe99

    .line 396
    aput-char v2, v0, v1

    const/16 v1, 0x70

    const v2, 0xfe9b

    .line 397
    aput-char v2, v0, v1

    const/16 v1, 0x71

    const v2, 0xfe9c

    .line 398
    aput-char v2, v0, v1

    const/16 v1, 0x72

    const v2, 0xfe9a

    .line 399
    aput-char v2, v0, v1

    const/16 v1, 0x73

    const v2, 0xfeb9

    .line 400
    aput-char v2, v0, v1

    const/16 v1, 0x74

    const v2, 0xfebb

    .line 401
    aput-char v2, v0, v1

    const/16 v1, 0x75

    const v2, 0xfebc

    .line 402
    aput-char v2, v0, v1

    const/16 v1, 0x76

    const v2, 0xfeba

    .line 403
    aput-char v2, v0, v1

    const/16 v1, 0x77

    const v2, 0xfebd

    .line 404
    aput-char v2, v0, v1

    const/16 v1, 0x78

    const v2, 0xfebf

    .line 405
    aput-char v2, v0, v1

    const/16 v1, 0x79

    const v2, 0xfec0

    .line 406
    aput-char v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0xfebe

    .line 407
    aput-char v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x6a9

    .line 408
    aput-char v2, v0, v1

    const/16 v1, 0x7c

    const/16 v3, 0x64a

    .line 409
    aput-char v3, v0, v1

    const/16 v1, 0x7d

    const/16 v3, 0x643

    .line 410
    aput-char v3, v0, v1

    const/16 v1, 0x7e

    const v3, 0xfeef

    .line 411
    aput-char v3, v0, v1

    const/16 v1, 0x7f

    const/16 v3, 0x643

    .line 412
    aput-char v3, v0, v1

    .line 413
    iget-object p0, p0, Lfast/dic/dict/utils/StringUtils;->correctChars:[C

    const/4 v0, 0x0

    const/16 v1, 0x698

    aput-char v1, p0, v0

    const/4 v0, 0x1

    .line 414
    aput-char v1, p0, v0

    const/4 v0, 0x2

    const/16 v1, 0x6cc

    .line 415
    aput-char v1, p0, v0

    const/4 v0, 0x3

    .line 416
    aput-char v1, p0, v0

    const/4 v0, 0x4

    .line 417
    aput-char v1, p0, v0

    const/4 v0, 0x5

    .line 418
    aput-char v1, p0, v0

    const/4 v0, 0x6

    const/16 v3, 0x622

    .line 419
    aput-char v3, p0, v0

    const/4 v0, 0x7

    const/16 v3, 0x648

    .line 420
    aput-char v3, p0, v0

    const/16 v0, 0x8

    .line 421
    aput-char v3, p0, v0

    const/16 v0, 0x9

    const/16 v3, 0x626

    .line 422
    aput-char v3, p0, v0

    const/16 v0, 0xa

    .line 423
    aput-char v3, p0, v0

    const/16 v0, 0xb

    .line 424
    aput-char v3, p0, v0

    const/16 v0, 0xc

    .line 425
    aput-char v3, p0, v0

    const/16 v0, 0xd

    const/16 v3, 0x62f

    .line 426
    aput-char v3, p0, v0

    const/16 v0, 0xe

    .line 427
    aput-char v3, p0, v0

    const/16 v0, 0xf

    const/16 v3, 0x630

    .line 428
    aput-char v3, p0, v0

    const/16 v0, 0x10

    .line 429
    aput-char v3, p0, v0

    const/16 v0, 0x11

    const/16 v3, 0x631

    .line 430
    aput-char v3, p0, v0

    const/16 v0, 0x12

    .line 431
    aput-char v3, p0, v0

    const/16 v0, 0x13

    const/16 v3, 0x632

    .line 432
    aput-char v3, p0, v0

    const/16 v0, 0x14

    .line 433
    aput-char v3, p0, v0

    const/16 v0, 0x15

    const/16 v3, 0x637

    .line 434
    aput-char v3, p0, v0

    const/16 v0, 0x16

    .line 435
    aput-char v3, p0, v0

    const/16 v0, 0x17

    .line 436
    aput-char v3, p0, v0

    const/16 v0, 0x18

    .line 437
    aput-char v3, p0, v0

    const/16 v0, 0x19

    const/16 v3, 0x638

    .line 438
    aput-char v3, p0, v0

    const/16 v0, 0x1a

    .line 439
    aput-char v3, p0, v0

    const/16 v0, 0x1b

    .line 440
    aput-char v3, p0, v0

    const/16 v0, 0x1c

    .line 441
    aput-char v3, p0, v0

    const/16 v0, 0x1d

    const/16 v3, 0x6af

    .line 442
    aput-char v3, p0, v0

    const/16 v0, 0x1e

    .line 443
    aput-char v3, p0, v0

    const/16 v0, 0x1f

    .line 444
    aput-char v3, p0, v0

    const/16 v0, 0x20

    .line 445
    aput-char v3, p0, v0

    const/16 v0, 0x21

    .line 446
    aput-char v2, p0, v0

    const/16 v0, 0x22

    .line 447
    aput-char v2, p0, v0

    const/16 v0, 0x23

    .line 448
    aput-char v2, p0, v0

    const/16 v0, 0x24

    .line 449
    aput-char v2, p0, v0

    const/16 v0, 0x25

    const/16 v3, 0x645

    .line 450
    aput-char v3, p0, v0

    const/16 v0, 0x26

    .line 451
    aput-char v3, p0, v0

    const/16 v0, 0x27

    .line 452
    aput-char v3, p0, v0

    const/16 v0, 0x28

    .line 453
    aput-char v3, p0, v0

    const/16 v0, 0x29

    const/16 v3, 0x646

    .line 454
    aput-char v3, p0, v0

    const/16 v0, 0x2a

    .line 455
    aput-char v3, p0, v0

    const/16 v0, 0x2b

    .line 456
    aput-char v3, p0, v0

    const/16 v0, 0x2c

    .line 457
    aput-char v3, p0, v0

    const/16 v0, 0x2d

    const/16 v3, 0x62a

    .line 458
    aput-char v3, p0, v0

    const/16 v0, 0x2e

    .line 459
    aput-char v3, p0, v0

    const/16 v0, 0x2f

    .line 460
    aput-char v3, p0, v0

    const/16 v0, 0x30

    .line 461
    aput-char v3, p0, v0

    const/16 v0, 0x31

    const/16 v3, 0x627

    .line 462
    aput-char v3, p0, v0

    const/16 v0, 0x32

    .line 463
    aput-char v3, p0, v0

    const/16 v0, 0x33

    const/16 v3, 0x644

    .line 464
    aput-char v3, p0, v0

    const/16 v0, 0x34

    .line 465
    aput-char v3, p0, v0

    const/16 v0, 0x35

    .line 466
    aput-char v3, p0, v0

    const/16 v0, 0x36

    .line 467
    aput-char v3, p0, v0

    const/16 v0, 0x37

    const/16 v3, 0x628

    .line 468
    aput-char v3, p0, v0

    const/16 v0, 0x38

    .line 469
    aput-char v3, p0, v0

    const/16 v0, 0x39

    .line 470
    aput-char v3, p0, v0

    const/16 v0, 0x3a

    .line 471
    aput-char v3, p0, v0

    const/16 v0, 0x3b

    .line 472
    aput-char v1, p0, v0

    const/16 v0, 0x3c

    .line 473
    aput-char v1, p0, v0

    const/16 v0, 0x3d

    .line 474
    aput-char v1, p0, v0

    const/16 v0, 0x3e

    .line 475
    aput-char v1, p0, v0

    const/16 v0, 0x3f

    const/16 v3, 0x633

    .line 476
    aput-char v3, p0, v0

    const/16 v0, 0x40

    .line 477
    aput-char v3, p0, v0

    const/16 v0, 0x41

    .line 478
    aput-char v3, p0, v0

    const/16 v0, 0x42

    .line 479
    aput-char v3, p0, v0

    const/16 v0, 0x43

    const/16 v3, 0x634

    .line 480
    aput-char v3, p0, v0

    const/16 v0, 0x44

    .line 481
    aput-char v3, p0, v0

    const/16 v0, 0x45

    .line 482
    aput-char v3, p0, v0

    const/16 v0, 0x46

    .line 483
    aput-char v3, p0, v0

    const/16 v0, 0x47

    const/16 v3, 0x67e

    .line 484
    aput-char v3, p0, v0

    const/16 v0, 0x48

    .line 485
    aput-char v3, p0, v0

    const/16 v0, 0x49

    .line 486
    aput-char v3, p0, v0

    const/16 v0, 0x4a

    .line 487
    aput-char v3, p0, v0

    const/16 v0, 0x4b

    const/16 v3, 0x686

    .line 488
    aput-char v3, p0, v0

    const/16 v0, 0x4c

    .line 489
    aput-char v3, p0, v0

    const/16 v0, 0x4d

    .line 490
    aput-char v3, p0, v0

    const/16 v0, 0x4e

    .line 491
    aput-char v3, p0, v0

    const/16 v0, 0x4f

    const/16 v3, 0x62c

    .line 492
    aput-char v3, p0, v0

    const/16 v0, 0x50

    .line 493
    aput-char v3, p0, v0

    const/16 v0, 0x51

    .line 494
    aput-char v3, p0, v0

    const/16 v0, 0x52

    .line 495
    aput-char v3, p0, v0

    const/16 v0, 0x53

    const/16 v3, 0x62d

    .line 496
    aput-char v3, p0, v0

    const/16 v0, 0x54

    .line 497
    aput-char v3, p0, v0

    const/16 v0, 0x55

    .line 498
    aput-char v3, p0, v0

    const/16 v0, 0x56

    .line 499
    aput-char v3, p0, v0

    const/16 v0, 0x57

    const/16 v3, 0x62e

    .line 500
    aput-char v3, p0, v0

    const/16 v0, 0x58

    .line 501
    aput-char v3, p0, v0

    const/16 v0, 0x59

    .line 502
    aput-char v3, p0, v0

    const/16 v0, 0x5a

    .line 503
    aput-char v3, p0, v0

    const/16 v0, 0x5b

    const/16 v3, 0x647

    .line 504
    aput-char v3, p0, v0

    const/16 v0, 0x5c

    .line 505
    aput-char v3, p0, v0

    const/16 v0, 0x5d

    .line 506
    aput-char v3, p0, v0

    const/16 v0, 0x5e

    .line 507
    aput-char v3, p0, v0

    const/16 v0, 0x5f

    const/16 v3, 0x639

    .line 508
    aput-char v3, p0, v0

    const/16 v0, 0x60

    .line 509
    aput-char v3, p0, v0

    const/16 v0, 0x61

    .line 510
    aput-char v3, p0, v0

    const/16 v0, 0x62

    .line 511
    aput-char v3, p0, v0

    const/16 v0, 0x63

    const/16 v3, 0x63a

    .line 512
    aput-char v3, p0, v0

    const/16 v0, 0x64

    .line 513
    aput-char v3, p0, v0

    const/16 v0, 0x65

    .line 514
    aput-char v3, p0, v0

    const/16 v0, 0x66

    .line 515
    aput-char v3, p0, v0

    const/16 v0, 0x67

    const/16 v3, 0x641

    .line 516
    aput-char v3, p0, v0

    const/16 v0, 0x68

    .line 517
    aput-char v3, p0, v0

    const/16 v0, 0x69

    .line 518
    aput-char v3, p0, v0

    const/16 v0, 0x6a

    .line 519
    aput-char v3, p0, v0

    const/16 v0, 0x6b

    const/16 v3, 0x642

    .line 520
    aput-char v3, p0, v0

    const/16 v0, 0x6c

    .line 521
    aput-char v3, p0, v0

    const/16 v0, 0x6d

    .line 522
    aput-char v3, p0, v0

    const/16 v0, 0x6e

    .line 523
    aput-char v3, p0, v0

    const/16 v0, 0x6f

    const/16 v3, 0x62b

    .line 524
    aput-char v3, p0, v0

    const/16 v0, 0x70

    .line 525
    aput-char v3, p0, v0

    const/16 v0, 0x71

    .line 526
    aput-char v3, p0, v0

    const/16 v0, 0x72

    .line 527
    aput-char v3, p0, v0

    const/16 v0, 0x73

    const/16 v3, 0x635

    .line 528
    aput-char v3, p0, v0

    const/16 v0, 0x74

    .line 529
    aput-char v3, p0, v0

    const/16 v0, 0x75

    .line 530
    aput-char v3, p0, v0

    const/16 v0, 0x76

    .line 531
    aput-char v3, p0, v0

    const/16 v0, 0x77

    const/16 v3, 0x636

    .line 532
    aput-char v3, p0, v0

    const/16 v0, 0x78

    .line 533
    aput-char v3, p0, v0

    const/16 v0, 0x79

    .line 534
    aput-char v3, p0, v0

    const/16 v0, 0x7a

    .line 535
    aput-char v3, p0, v0

    const/16 v0, 0x7b

    .line 536
    aput-char v2, p0, v0

    const/16 v0, 0x7c

    .line 537
    aput-char v1, p0, v0

    const/16 v0, 0x7d

    .line 538
    aput-char v2, p0, v0

    const/16 v0, 0x7e

    .line 539
    aput-char v1, p0, v0

    const/16 v0, 0x7f

    .line 540
    aput-char v2, p0, v0

    return-void
.end method


# virtual methods
.method public final trimmingAndLowerCaseWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 611
    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    .line 613
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-gt v4, v1, :cond_6

    if-nez v5, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v1

    .line 618
    :goto_1
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-gt v6, v7, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    if-nez v5, :cond_4

    if-nez v6, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v1, v2

    .line 633
    invoke-interface {p1, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 611
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_7

    return-object p1

    .line 256
    :cond_7
    invoke-direct {p0, p1}, Lfast/dic/dict/utils/StringUtils;->charReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return-object v0

    .line 258
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v0, "getDefault(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "toLowerCase(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
