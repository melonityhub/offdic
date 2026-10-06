.class public final Lfast/dic/dict/utils/FDWordPartOfSpeech;
.super Ljava/lang/Object;
.source "FDWordPartOfSpeech.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lfast/dic/dict/utils/FDWordPartOfSpeech;",
        "",
        "<init>",
        "()V",
        "getPos",
        "",
        "type",
        "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
        "posId",
        "",
        "findEnglishEquivalentInPersian",
        "getEnglish",
        "getPersian",
        "findPersianEquivalentInEnglish",
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
.field public static final INSTANCE:Lfast/dic/dict/utils/FDWordPartOfSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfast/dic/dict/utils/FDWordPartOfSpeech;

    invoke-direct {v0}, Lfast/dic/dict/utils/FDWordPartOfSpeech;-><init>()V

    sput-object v0, Lfast/dic/dict/utils/FDWordPartOfSpeech;->INSTANCE:Lfast/dic/dict/utils/FDWordPartOfSpeech;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final findEnglishEquivalentInPersian(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :pswitch_0
    const-string/jumbo p0, "\u0636\u0631\u0628\u200c\u0627\u0644\u0645\u062b\u0644"

    return-object p0

    .line 48
    :pswitch_1
    const-string/jumbo p0, "\u0634\u06a9\u0644 \u0627\u062e\u062a\u0635\u0627\u0631"

    return-object p0

    .line 47
    :pswitch_2
    const-string/jumbo p0, "\u062d\u0631\u0641 \u0646\u062f\u0627"

    return-object p0

    .line 46
    :pswitch_3
    const-string/jumbo p0, "\u0627\u0633\u0645 \u0645\u0641\u0631\u062f"

    return-object p0

    .line 45
    :pswitch_4
    const-string/jumbo p0, "\u0639\u0628\u0627\u0631\u062a"

    return-object p0

    .line 44
    :pswitch_5
    const-string/jumbo p0, "\u0639\u0628\u0627\u0631\u062a \u0641\u0639\u0644\u06cc"

    return-object p0

    .line 43
    :pswitch_6
    const-string/jumbo p0, "\u0646\u0645\u0627\u062f"

    return-object p0

    .line 42
    :pswitch_7
    const-string/jumbo p0, "\u0633\u0631\u0648\u0627\u0698\u0647"

    return-object p0

    .line 41
    :pswitch_8
    const-string/jumbo p0, "\u0639\u0628\u0627\u0631\u062a \u0627\u0635\u0637\u0644\u0627\u062d\u06cc"

    return-object p0

    .line 40
    :pswitch_9
    const-string/jumbo p0, "\u0639\u0627\u0645\u06cc\u0627\u0646\u0647"

    return-object p0

    .line 39
    :pswitch_a
    const-string/jumbo p0, "\u0645\u062e\u0641\u0641"

    return-object p0

    .line 38
    :pswitch_b
    const-string/jumbo p0, "\u067e\u06cc\u0634\u200c \u0645\u0639\u0631\u0641\u0647"

    return-object p0

    .line 37
    :pswitch_c
    const-string/jumbo p0, "\u0645\u0639\u0631\u0641\u0647\u200c\u06cc \u0627\u0633\u0645"

    return-object p0

    .line 36
    :pswitch_d
    const-string/jumbo p0, "\u0641\u0639\u0644 \u06a9\u0645\u06a9\u06cc"

    return-object p0

    .line 35
    :pswitch_e
    const-string/jumbo p0, "\u0641\u0639\u0644 \u0639\u0628\u0627\u0631\u062a\u06cc"

    return-object p0

    .line 34
    :pswitch_f
    const-string/jumbo p0, "\u0647\u0645\u200c\u0646\u0634\u06cc\u0646"

    return-object p0

    .line 33
    :pswitch_10
    const-string/jumbo p0, "\u0627\u0635\u0637\u0644\u0627\u062d"

    return-object p0

    .line 32
    :pswitch_11
    const-string/jumbo p0, "\u067e\u0633\u0648\u0646\u062f"

    return-object p0

    .line 31
    :pswitch_12
    const-string/jumbo p0, "\u067e\u06cc\u0634\u0648\u0646\u062f"

    return-object p0

    .line 30
    :pswitch_13
    const-string/jumbo p0, "\u0646\u0647\u0627\u062f"

    return-object p0

    .line 29
    :pswitch_14
    const-string/jumbo p0, "\u062d\u0631\u0641 \u0646\u06a9\u0631\u0647"

    return-object p0

    .line 28
    :pswitch_15
    const-string/jumbo p0, "\u062d\u0631\u0641 \u0645\u0639\u0631\u0641\u0647\u060c \u062d\u0631\u0641 \u062a\u0639\u0631\u06cc\u0641"

    return-object p0

    .line 27
    :pswitch_16
    const-string/jumbo p0, "\u0636\u0645\u06cc\u0631"

    return-object p0

    .line 26
    :pswitch_17
    const-string/jumbo p0, "\u0635\u0648\u062a"

    return-object p0

    .line 25
    :pswitch_18
    const-string/jumbo p0, "\u062d\u0631\u0641 \u0627\u0636\u0627\u0641\u0647"

    return-object p0

    .line 24
    :pswitch_19
    const-string/jumbo p0, "\u062d\u0631\u0641 \u0631\u0628\u0637"

    return-object p0

    .line 23
    :pswitch_1a
    const-string/jumbo p0, "\u0642\u06cc\u062f"

    return-object p0

    .line 22
    :pswitch_1b
    const-string/jumbo p0, "\u0635\u0641\u062a"

    return-object p0

    .line 21
    :pswitch_1c
    const-string/jumbo p0, "\u0641\u0639\u0644 \u0644\u0627\u0632\u0645"

    return-object p0

    .line 20
    :pswitch_1d
    const-string/jumbo p0, "\u0641\u0639\u0644 \u0645\u062a\u0639\u062f\u06cc"

    return-object p0

    .line 19
    :pswitch_1e
    const-string/jumbo p0, "\u0635\u0641\u062a \u0641\u0639\u0644\u06cc"

    return-object p0

    .line 18
    :pswitch_1f
    const-string/jumbo p0, "\u0639\u0628\u0627\u0631\u062a \u0627\u0633\u0645\u06cc"

    return-object p0

    .line 17
    :pswitch_20
    const-string/jumbo p0, "\u062c\u0645\u0639"

    return-object p0

    .line 16
    :pswitch_21
    const-string/jumbo p0, "\u0627\u0633\u0645"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final findPersianEquivalentInEnglish(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 165
    :pswitch_0
    const-string p0, "auxiliary verb"

    return-object p0

    .line 164
    :pswitch_1
    const-string p0, "phrase"

    return-object p0

    .line 163
    :pswitch_2
    const-string p0, "idiom"

    return-object p0

    .line 162
    :pswitch_3
    const-string p0, "proverb"

    return-object p0

    .line 161
    :pswitch_4
    const-string p0, "sentence"

    return-object p0

    .line 160
    :pswitch_5
    const-string p0, "symbol"

    return-object p0

    .line 159
    :pswitch_6
    const-string p0, "acronym"

    return-object p0

    .line 158
    :pswitch_7
    const-string p0, "abbreviation"

    return-object p0

    .line 157
    :pswitch_8
    const-string p0, "interjection"

    return-object p0

    .line 156
    :pswitch_9
    const-string p0, "conjunction"

    return-object p0

    .line 155
    :pswitch_a
    const-string p0, "plural Noun"

    return-object p0

    .line 154
    :pswitch_b
    const-string/jumbo p0, "vocative Particle"

    return-object p0

    .line 153
    :pswitch_c
    const-string p0, "compound Adjective"

    return-object p0

    .line 152
    :pswitch_d
    const-string p0, "compound Verb"

    return-object p0

    .line 151
    :pswitch_e
    const-string p0, "prefix Verb"

    return-object p0

    .line 150
    :pswitch_f
    const-string p0, "pronoun"

    return-object p0

    .line 149
    :pswitch_10
    const-string p0, "subordinate Clause"

    return-object p0

    .line 148
    :pswitch_11
    const-string p0, "common Noun"

    return-object p0

    .line 147
    :pswitch_12
    const-string p0, "prefix"

    return-object p0

    .line 146
    :pswitch_13
    const-string p0, "preposition"

    return-object p0

    .line 145
    :pswitch_14
    const-string p0, "onomatopoeia"

    return-object p0

    .line 144
    :pswitch_15
    const-string p0, "derived Verb"

    return-object p0

    .line 143
    :pswitch_16
    const-string p0, "derived Noun"

    return-object p0

    .line 142
    :pswitch_17
    const-string p0, "proper Noun"

    return-object p0

    .line 141
    :pswitch_18
    const-string p0, "compound Structure"

    return-object p0

    .line 140
    :pswitch_19
    const-string p0, "suffix"

    return-object p0

    .line 139
    :pswitch_1a
    const-string/jumbo p0, "transitive Verb"

    return-object p0

    .line 138
    :pswitch_1b
    const-string p0, "intransitive Verb"

    return-object p0

    .line 137
    :pswitch_1c
    const-string p0, "adverb"

    return-object p0

    .line 136
    :pswitch_1d
    const-string p0, "adjective"

    return-object p0

    .line 135
    :pswitch_1e
    const-string p0, "noun"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final getEnglish(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 92
    const-string p0, ""

    return-object p0

    .line 90
    :pswitch_0
    const-string p0, "proverb"

    return-object p0

    .line 89
    :pswitch_1
    const-string p0, "contraction"

    return-object p0

    .line 88
    :pswitch_2
    const-string p0, "exclamation"

    return-object p0

    .line 87
    :pswitch_3
    const-string p0, "singular"

    return-object p0

    .line 86
    :pswitch_4
    const-string p0, "phrase"

    return-object p0

    .line 85
    :pswitch_5
    const-string/jumbo p0, "verb phrase"

    return-object p0

    .line 84
    :pswitch_6
    const-string p0, "symbol"

    return-object p0

    .line 83
    :pswitch_7
    const-string p0, "acronym"

    return-object p0

    .line 82
    :pswitch_8
    const-string p0, "idiomatic phrase"

    return-object p0

    .line 81
    :pswitch_9
    const-string p0, "slang"

    return-object p0

    .line 80
    :pswitch_a
    const-string p0, "abbreviation"

    return-object p0

    .line 79
    :pswitch_b
    const-string p0, "predeterminer"

    return-object p0

    .line 78
    :pswitch_c
    const-string p0, "determiner"

    return-object p0

    .line 77
    :pswitch_d
    const-string p0, "auxiliary verb"

    return-object p0

    .line 76
    :pswitch_e
    const-string p0, "phrasal verb"

    return-object p0

    .line 75
    :pswitch_f
    const-string p0, "collocation"

    return-object p0

    .line 74
    :pswitch_10
    const-string p0, "idiom"

    return-object p0

    .line 73
    :pswitch_11
    const-string p0, "suffix"

    return-object p0

    .line 72
    :pswitch_12
    const-string p0, "prefix"

    return-object p0

    .line 71
    :pswitch_13
    const-string p0, "nominative"

    return-object p0

    .line 70
    :pswitch_14
    const-string p0, "indefinite article"

    return-object p0

    .line 69
    :pswitch_15
    const-string p0, "definite article"

    return-object p0

    .line 68
    :pswitch_16
    const-string p0, "pronoun"

    return-object p0

    .line 67
    :pswitch_17
    const-string p0, "interjection"

    return-object p0

    .line 66
    :pswitch_18
    const-string p0, "preposition"

    return-object p0

    .line 65
    :pswitch_19
    const-string p0, "conjunction"

    return-object p0

    .line 64
    :pswitch_1a
    const-string p0, "adverb"

    return-object p0

    .line 63
    :pswitch_1b
    const-string p0, "adjective"

    return-object p0

    .line 62
    :pswitch_1c
    const-string/jumbo p0, "verb - intransitive"

    return-object p0

    .line 61
    :pswitch_1d
    const-string/jumbo p0, "verb - transitive"

    return-object p0

    .line 60
    :pswitch_1e
    const-string/jumbo p0, "verb - use participle"

    return-object p0

    .line 59
    :pswitch_1f
    const-string p0, "noun phrase"

    return-object p0

    .line 58
    :pswitch_20
    const-string p0, "plural"

    return-object p0

    .line 57
    :pswitch_21
    const-string p0, "noun"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final getPersian(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 130
    const-string p0, ""

    return-object p0

    .line 128
    :pswitch_0
    const-string/jumbo p0, "\u0641\u0639\u0644 \u06a9\u0645\u06a9\u06cc"

    return-object p0

    .line 127
    :pswitch_1
    const-string/jumbo p0, "\u0639\u0628\u0627\u0631\u062a"

    return-object p0

    .line 126
    :pswitch_2
    const-string/jumbo p0, "\u0627\u0635\u0637\u0644\u0627\u062d"

    return-object p0

    .line 125
    :pswitch_3
    const-string/jumbo p0, "\u0636\u0631\u0628\u200c\u0627\u0644\u0645\u062b\u0644"

    return-object p0

    .line 124
    :pswitch_4
    const-string/jumbo p0, "\u062c\u0645\u0644\u0647"

    return-object p0

    .line 123
    :pswitch_5
    const-string/jumbo p0, "\u0646\u0645\u0627\u062f"

    return-object p0

    .line 122
    :pswitch_6
    const-string/jumbo p0, "\u0633\u0631\u0648\u0627\u0698\u0647"

    return-object p0

    .line 121
    :pswitch_7
    const-string/jumbo p0, "\u0645\u062e\u0641\u0641"

    return-object p0

    .line 120
    :pswitch_8
    const-string/jumbo p0, "\u0635\u0648\u062a"

    return-object p0

    .line 119
    :pswitch_9
    const-string/jumbo p0, "\u062d\u0631\u0641 \u0631\u0628\u0637"

    return-object p0

    .line 118
    :pswitch_a
    const-string/jumbo p0, "\u0627\u0633\u0645 \u062c\u0645\u0639"

    return-object p0

    .line 117
    :pswitch_b
    const-string/jumbo p0, "\u062d\u0631\u0641 \u0646\u062f\u0627"

    return-object p0

    .line 116
    :pswitch_c
    const-string/jumbo p0, "\u0635\u0641\u062a \u0645\u0631\u06a9\u0628 \u0627\u062a\u0628\u0627\u0639\u06cc"

    return-object p0

    .line 115
    :pswitch_d
    const-string/jumbo p0, "\u0641\u0639\u0644 \u0645\u0631\u06a9\u0628"

    return-object p0

    .line 114
    :pswitch_e
    const-string/jumbo p0, "\u0641\u0639\u0644 \u067e\u06cc\u0634\u0648\u0646\u062f\u06cc"

    return-object p0

    .line 113
    :pswitch_f
    const-string/jumbo p0, "\u0636\u0645\u06cc\u0631"

    return-object p0

    .line 112
    :pswitch_10
    const-string/jumbo p0, "\u0634\u0628\u0647\u200c\u062c\u0645\u0644\u0647"

    return-object p0

    .line 111
    :pswitch_11
    const-string/jumbo p0, "\u0627\u0633\u0645 \u0639\u0627\u0645"

    return-object p0

    .line 110
    :pswitch_12
    const-string/jumbo p0, "\u067e\u06cc\u0634\u0648\u0646\u062f"

    return-object p0

    .line 109
    :pswitch_13
    const-string/jumbo p0, "\u062d\u0631\u0641 \u0627\u0636\u0627\u0641\u0647"

    return-object p0

    .line 108
    :pswitch_14
    const-string/jumbo p0, "\u0646\u0627\u0645 \u0622\u0648\u0627"

    return-object p0

    .line 107
    :pswitch_15
    const-string/jumbo p0, "\u0641\u0639\u0644 \u0645\u0634\u062a\u0642"

    return-object p0

    .line 106
    :pswitch_16
    const-string/jumbo p0, "\u0627\u0633\u0645 \u0645\u0634\u062a\u0642"

    return-object p0

    .line 105
    :pswitch_17
    const-string/jumbo p0, "\u0627\u0633\u0645 \u062e\u0627\u0635"

    return-object p0

    .line 104
    :pswitch_18
    const-string/jumbo p0, "\u0633\u0627\u0632\u0647\u200c\u06cc \u067e\u06cc\u0648\u0646\u062f\u06cc"

    return-object p0

    .line 103
    :pswitch_19
    const-string/jumbo p0, "\u067e\u0633\u0648\u0646\u062f"

    return-object p0

    .line 102
    :pswitch_1a
    const-string/jumbo p0, "\u0641\u0639\u0644 \u0645\u062a\u0639\u062f\u06cc"

    return-object p0

    .line 101
    :pswitch_1b
    const-string/jumbo p0, "\u0641\u0639\u0644 \u0644\u0627\u0632\u0645"

    return-object p0

    .line 100
    :pswitch_1c
    const-string/jumbo p0, "\u0642\u06cc\u062f"

    return-object p0

    .line 99
    :pswitch_1d
    const-string/jumbo p0, "\u0635\u0641\u062a"

    return-object p0

    .line 98
    :pswitch_1e
    const-string/jumbo p0, "\u0627\u0633\u0645"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final getPos(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne p1, v0, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lfast/dic/dict/utils/FDWordPartOfSpeech;->getEnglish(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne p1, v0, :cond_1

    .line 8
    invoke-virtual {p0, p2}, Lfast/dic/dict/utils/FDWordPartOfSpeech;->getPersian(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    const-string p0, ""

    return-object p0
.end method
