.class public final Lfast/dic/dict/utils/FDCategory;
.super Ljava/lang/Object;
.source "FDCategory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0008\u0007\u001a\u0002\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0015\u0010\n\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lfast/dic/dict/utils/FDCategory;",
        "",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "findLanguage",
        "",
        "word",
        "",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "find",
        "category_id",
        "(Ljava/lang/Integer;)Ljava/lang/String;",
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
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final find(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 39
    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    .line 43
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-object p0

    .line 156
    :pswitch_0
    const-string/jumbo p0, "\u0639\u0646\u0635\u0631 \u0634\u06cc\u0645\u06cc\u0627\u06cc\u06cc"

    return-object p0

    .line 154
    :pswitch_1
    const-string/jumbo p0, "\u062c\u0627\u0645\u0639\u0647\u200c\u0634\u0646\u0627\u0633\u06cc"

    return-object p0

    .line 152
    :pswitch_2
    const-string/jumbo p0, "\u0633\u0644\u0627\u0645\u062a \u0631\u0648\u0627\u0646"

    return-object p0

    .line 150
    :pswitch_3
    const-string/jumbo p0, "\u062a\u0627\u0631\u06cc\u062e"

    return-object p0

    .line 148
    :pswitch_4
    const-string/jumbo p0, "\u0647\u0648\u0634 \u0645\u0635\u0646\u0648\u0639\u06cc"

    return-object p0

    .line 146
    :pswitch_5
    const-string/jumbo p0, "\u0627\u062f\u0628\u06cc\u0627\u062a"

    return-object p0

    .line 144
    :pswitch_6
    const-string/jumbo p0, "\u0644\u0627\u062a\u06cc\u0646"

    return-object p0

    .line 142
    :pswitch_7
    const-string/jumbo p0, "\u0622\u0645\u06cc\u0632\u0648\u0627\u062c"

    return-object p0

    .line 140
    :pswitch_8
    const-string/jumbo p0, "\u0646\u0627\u0645 \u062a\u062c\u0627\u0631\u06cc"

    return-object p0

    .line 138
    :pswitch_9
    const-string/jumbo p0, "\u06a9\u0633\u0628\u200c\u0648\u06a9\u0627\u0631"

    return-object p0

    .line 136
    :pswitch_a
    const-string/jumbo p0, "\u062f\u06cc\u0646"

    return-object p0

    .line 134
    :pswitch_b
    const-string/jumbo p0, "\u0647\u0646\u062f\u0633\u0647"

    return-object p0

    .line 132
    :pswitch_c
    const-string/jumbo p0, "\u0645\u06cc\u0648\u0647"

    return-object p0

    .line 130
    :pswitch_d
    const-string/jumbo p0, "\u0633\u06cc\u0627\u0633\u062a"

    return-object p0

    .line 128
    :pswitch_e
    const-string/jumbo p0, "\u062a\u0642\u0648\u06cc\u0645"

    return-object p0

    .line 126
    :pswitch_f
    const-string/jumbo p0, "\u0622\u0631\u0627\u06cc\u0634 \u0648 \u067e\u06cc\u0631\u0627\u06cc\u0634"

    return-object p0

    .line 124
    :pswitch_10
    const-string/jumbo p0, "\u0647\u0646\u0631"

    return-object p0

    .line 122
    :pswitch_11
    const-string/jumbo p0, "\u0645\u062c\u0627\u0632\u06cc"

    return-object p0

    .line 120
    :pswitch_12
    const-string/jumbo p0, "\u062c\u063a\u0631\u0627\u0641\u06cc\u0627"

    return-object p0

    .line 118
    :pswitch_13
    const-string/jumbo p0, "\u06a9\u0634\u0648\u0631"

    return-object p0

    .line 116
    :pswitch_14
    const-string/jumbo p0, "\u0633\u06cc\u0646\u0645\u0627 \u0648 \u062a\u0626\u0627\u062a\u0631"

    return-object p0

    .line 114
    :pswitch_15
    const-string/jumbo p0, "\u0642\u062f\u06cc\u0645\u06cc"

    return-object p0

    .line 112
    :pswitch_16
    const-string/jumbo p0, "\u06a9\u0648\u062f\u06a9\u0627\u0646\u0647"

    return-object p0

    .line 110
    :pswitch_17
    const-string/jumbo p0, "\u0639\u0627\u0645\u06cc\u0627\u0646\u0647"

    return-object p0

    .line 108
    :pswitch_18
    const-string/jumbo p0, "\u067e\u0648\u0634\u0627\u06a9"

    return-object p0

    .line 106
    :pswitch_19
    const-string/jumbo p0, "\u062a\u06a9\u0646\u0648\u0644\u0648\u0698\u06cc"

    return-object p0

    .line 104
    :pswitch_1a
    const-string/jumbo p0, "\u0627\u0642\u062a\u0635\u0627\u062f"

    return-object p0

    .line 102
    :pswitch_1b
    const-string/jumbo p0, "\u0646\u0627\u067e\u0633\u0646\u062f"

    return-object p0

    .line 100
    :pswitch_1c
    const-string/jumbo p0, "\u0627\u062f\u0628\u06cc"

    return-object p0

    .line 98
    :pswitch_1d
    const-string/jumbo p0, "\u0631\u0646\u06af"

    return-object p0

    .line 96
    :pswitch_1e
    const-string/jumbo p0, "\u0632\u0628\u0627\u0646\u200c\u0634\u0646\u0627\u0633\u06cc"

    return-object p0

    .line 94
    :pswitch_1f
    const-string/jumbo p0, "\u0633\u0641\u0631"

    return-object p0

    .line 92
    :pswitch_20
    const-string/jumbo p0, "\u0647\u062a\u0644"

    return-object p0

    .line 90
    :pswitch_21
    const-string/jumbo p0, "\u0622\u0628 \u0648 \u0647\u0648\u0627"

    return-object p0

    .line 88
    :pswitch_22
    const-string/jumbo p0, "\u0631\u0648\u0627\u0646\u200c\u067e\u0632\u0634\u06a9\u06cc"

    return-object p0

    .line 86
    :pswitch_23
    const-string/jumbo p0, "\u0631\u0648\u0627\u0646\u200c\u0634\u0646\u0627\u0633\u06cc"

    return-object p0

    .line 84
    :pswitch_24
    const-string/jumbo p0, "\u0648\u0631\u0632\u0634"

    return-object p0

    .line 82
    :pswitch_25
    const-string/jumbo p0, "\u0632\u0645\u06cc\u0646\u200c\u0634\u0646\u0627\u0633\u06cc"

    return-object p0

    .line 80
    :pswitch_26
    const-string/jumbo p0, "\u062d\u0634\u0631\u0647\u200c\u0634\u0646\u0627\u0633\u06cc"

    return-object p0

    .line 78
    :pswitch_27
    const-string/jumbo p0, "\u063a\u0630\u0627 \u0648 \u0622\u0634\u067e\u0632\u06cc"

    return-object p0

    .line 76
    :pswitch_28
    const-string/jumbo p0, "\u062f\u0633\u062a\u0648\u0631 \u0632\u0628\u0627\u0646"

    return-object p0

    .line 74
    :pswitch_29
    const-string/jumbo p0, "\u0628\u0631\u0642"

    return-object p0

    .line 72
    :pswitch_2a
    const-string/jumbo p0, "\u06a9\u0627\u0645\u067e\u06cc\u0648\u062a\u0631"

    return-object p0

    .line 70
    :pswitch_2b
    const-string/jumbo p0, "\u0645\u06a9\u0627\u0646\u06cc\u06a9"

    return-object p0

    .line 68
    :pswitch_2c
    const-string/jumbo p0, "\u0645\u0639\u0645\u0627\u0631\u06cc"

    return-object p0

    .line 66
    :pswitch_2d
    const-string/jumbo p0, "\u062f\u0627\u0631\u0648\u0633\u0627\u0632\u06cc"

    return-object p0

    .line 64
    :pswitch_2e
    const-string/jumbo p0, "\u0631\u06cc\u0627\u0636\u06cc"

    return-object p0

    .line 62
    :pswitch_2f
    const-string/jumbo p0, "\u0646\u062c\u0648\u0645"

    return-object p0

    .line 60
    :pswitch_30
    const-string/jumbo p0, "\u0641\u06cc\u0632\u06cc\u06a9"

    return-object p0

    .line 58
    :pswitch_31
    const-string/jumbo p0, "\u0645\u0648\u0633\u06cc\u0642\u06cc"

    return-object p0

    .line 56
    :pswitch_32
    const-string/jumbo p0, "\u062d\u0642\u0648\u0642"

    return-object p0

    .line 54
    :pswitch_33
    const-string/jumbo p0, "\u06a9\u0627\u0644\u0628\u062f\u0634\u0646\u0627\u0633\u06cc"

    return-object p0

    .line 52
    :pswitch_34
    const-string/jumbo p0, "\u0632\u06cc\u0633\u062a\u200c\u0634\u0646\u0627\u0633\u06cc"

    return-object p0

    .line 50
    :pswitch_35
    const-string/jumbo p0, "\u067e\u0632\u0634\u06a9\u06cc"

    return-object p0

    .line 48
    :pswitch_36
    const-string/jumbo p0, "\u0634\u06cc\u0645\u06cc"

    return-object p0

    .line 46
    :pswitch_37
    const-string/jumbo p0, "\u062c\u0627\u0646\u0648\u0631\u0634\u0646\u0627\u0633\u06cc"

    return-object p0

    .line 44
    :pswitch_38
    const-string/jumbo p0, "\u06af\u06cc\u0627\u0647\u200c\u0634\u0646\u0627\u0633\u06cc"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final findLanguage(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    const-string/jumbo p0, "word"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object p0, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {p0, p1}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isEnglish(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 29
    sget-object p0, Lfast/dic/dict/utils/Category;->English:Lfast/dic/dict/utils/Category;

    invoke-virtual {p0}, Lfast/dic/dict/utils/Category;->getRawValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 30
    :cond_0
    sget-object p0, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {p0, p1}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isPersian(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 31
    sget-object p0, Lfast/dic/dict/utils/Category;->Persian:Lfast/dic/dict/utils/Category;

    invoke-virtual {p0}, Lfast/dic/dict/utils/Category;->getRawValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
