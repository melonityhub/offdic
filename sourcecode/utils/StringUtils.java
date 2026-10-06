package fast.dic.dict.utils;

import com.fastdic.android.modules.fdnumberstowords.constants.FDPeConstantKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.U3;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: StringExt.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0019\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u0012\u0010\n\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\bH\u0002J\b\u0010\f\u001a\u00020\rH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lfast/dic/dict/utils/StringUtils;", "", "<init>", "()V", "brokenChars", "", "correctChars", "trimmingAndLowerCaseWords", "", FirebaseAnalytics.Param.CHARACTER, "charReplacement", "receivedStr", "putFarsiChars", "", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class StringUtils {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private char[] brokenChars = new char[128];
    private char[] correctChars = new char[128];

    private final String charReplacement(String receivedStr) {
        putFarsiChars();
        try {
            int length = receivedStr.length();
            char[] cArr = new char[length];
            receivedStr.getChars(0, length, cArr, 0);
            for (int i = 0; i < length; i++) {
                int length2 = this.brokenChars.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    if (cArr[i] == this.brokenChars[i2]) {
                        cArr[i] = this.correctChars[i2];
                    }
                }
            }
            return new String(cArr);
        } catch (Exception unused) {
            return null;
        }
    }

    private final void putFarsiChars() {
        char[] cArr = this.brokenChars;
        cArr[0] = 64394;
        cArr[1] = 64395;
        cArr[2] = 65267;
        cArr[3] = 65268;
        cArr[4] = 65266;
        cArr[5] = 65265;
        cArr[6] = 65153;
        cArr[7] = 65261;
        cArr[8] = 65262;
        cArr[9] = 65161;
        cArr[10] = 65163;
        cArr[11] = 65162;
        cArr[12] = 65164;
        cArr[13] = 65193;
        cArr[14] = 65194;
        cArr[15] = 65195;
        cArr[16] = 65196;
        cArr[17] = 65197;
        cArr[18] = 65198;
        cArr[19] = 65199;
        cArr[20] = 65200;
        cArr[21] = 65217;
        cArr[22] = 65220;
        cArr[23] = 65218;
        cArr[24] = 65219;
        cArr[25] = 65221;
        cArr[26] = 65224;
        cArr[27] = 65222;
        cArr[28] = 65223;
        cArr[29] = 64402;
        cArr[30] = 64404;
        cArr[31] = 64405;
        cArr[32] = 64403;
        cArr[33] = 64398;
        cArr[34] = 64400;
        cArr[35] = 64401;
        cArr[36] = 64399;
        cArr[37] = 65249;
        cArr[38] = 65251;
        cArr[39] = 65252;
        cArr[40] = 65250;
        cArr[41] = 65253;
        cArr[42] = 65255;
        cArr[43] = 65256;
        cArr[44] = 65254;
        cArr[45] = 65173;
        cArr[46] = 65175;
        cArr[47] = 65176;
        cArr[48] = 65174;
        cArr[49] = 65165;
        cArr[50] = 65166;
        cArr[51] = 65245;
        cArr[52] = 65247;
        cArr[53] = 65248;
        cArr[54] = 65246;
        cArr[55] = 65167;
        cArr[56] = 65169;
        cArr[57] = 65170;
        cArr[58] = 65168;
        cArr[59] = 64508;
        cArr[60] = 65267;
        cArr[61] = 65268;
        cArr[62] = 64509;
        cArr[63] = 65201;
        cArr[64] = 65203;
        cArr[65] = 65204;
        cArr[66] = 65202;
        cArr[67] = 65205;
        cArr[68] = 65207;
        cArr[69] = 65208;
        cArr[70] = 65206;
        cArr[71] = 64342;
        cArr[72] = 64344;
        cArr[73] = 64345;
        cArr[74] = 64343;
        cArr[75] = 64378;
        cArr[76] = 64380;
        cArr[77] = 64381;
        cArr[78] = 64379;
        cArr[79] = 65181;
        cArr[80] = 65183;
        cArr[81] = 65184;
        cArr[82] = 65182;
        cArr[83] = 65185;
        cArr[84] = 65187;
        cArr[85] = 65188;
        cArr[86] = 65186;
        cArr[87] = 65189;
        cArr[88] = 65191;
        cArr[89] = 65192;
        cArr[90] = 65190;
        cArr[91] = 65257;
        cArr[92] = 65259;
        cArr[93] = 65260;
        cArr[94] = 65258;
        cArr[95] = 65225;
        cArr[96] = 65227;
        cArr[97] = 65228;
        cArr[98] = 65226;
        cArr[99] = 65229;
        cArr[100] = 65231;
        cArr[101] = 65232;
        cArr[102] = 65230;
        cArr[103] = 65233;
        cArr[104] = 65235;
        cArr[105] = 65236;
        cArr[106] = 65234;
        cArr[107] = 65237;
        cArr[108] = 65239;
        cArr[109] = 65240;
        cArr[110] = 65238;
        cArr[111] = 65177;
        cArr[112] = 65179;
        cArr[113] = 65180;
        cArr[114] = 65178;
        cArr[115] = 65209;
        cArr[116] = 65211;
        cArr[117] = 65212;
        cArr[118] = 65210;
        cArr[119] = 65213;
        cArr[120] = 65215;
        cArr[121] = 65216;
        cArr[122] = 65214;
        cArr[123] = 1705;
        cArr[124] = 1610;
        cArr[125] = 1603;
        cArr[126] = 65263;
        cArr[127] = 1603;
        char[] cArr2 = this.correctChars;
        cArr2[0] = 1688;
        cArr2[1] = 1688;
        cArr2[2] = 1740;
        cArr2[3] = 1740;
        cArr2[4] = 1740;
        cArr2[5] = 1740;
        cArr2[6] = 1570;
        cArr2[7] = FDPeConstantKt.PE_AND_SIGN;
        cArr2[8] = FDPeConstantKt.PE_AND_SIGN;
        cArr2[9] = 1574;
        cArr2[10] = 1574;
        cArr2[11] = 1574;
        cArr2[12] = 1574;
        cArr2[13] = 1583;
        cArr2[14] = 1583;
        cArr2[15] = 1584;
        cArr2[16] = 1584;
        cArr2[17] = 1585;
        cArr2[18] = 1585;
        cArr2[19] = 1586;
        cArr2[20] = 1586;
        cArr2[21] = 1591;
        cArr2[22] = 1591;
        cArr2[23] = 1591;
        cArr2[24] = 1591;
        cArr2[25] = 1592;
        cArr2[26] = 1592;
        cArr2[27] = 1592;
        cArr2[28] = 1592;
        cArr2[29] = 1711;
        cArr2[30] = 1711;
        cArr2[31] = 1711;
        cArr2[32] = 1711;
        cArr2[33] = 1705;
        cArr2[34] = 1705;
        cArr2[35] = 1705;
        cArr2[36] = 1705;
        cArr2[37] = 1605;
        cArr2[38] = 1605;
        cArr2[39] = 1605;
        cArr2[40] = 1605;
        cArr2[41] = 1606;
        cArr2[42] = 1606;
        cArr2[43] = 1606;
        cArr2[44] = 1606;
        cArr2[45] = 1578;
        cArr2[46] = 1578;
        cArr2[47] = 1578;
        cArr2[48] = 1578;
        cArr2[49] = 1575;
        cArr2[50] = 1575;
        cArr2[51] = 1604;
        cArr2[52] = 1604;
        cArr2[53] = 1604;
        cArr2[54] = 1604;
        cArr2[55] = 1576;
        cArr2[56] = 1576;
        cArr2[57] = 1576;
        cArr2[58] = 1576;
        cArr2[59] = 1740;
        cArr2[60] = 1740;
        cArr2[61] = 1740;
        cArr2[62] = 1740;
        cArr2[63] = 1587;
        cArr2[64] = 1587;
        cArr2[65] = 1587;
        cArr2[66] = 1587;
        cArr2[67] = 1588;
        cArr2[68] = 1588;
        cArr2[69] = 1588;
        cArr2[70] = 1588;
        cArr2[71] = 1662;
        cArr2[72] = 1662;
        cArr2[73] = 1662;
        cArr2[74] = 1662;
        cArr2[75] = 1670;
        cArr2[76] = 1670;
        cArr2[77] = 1670;
        cArr2[78] = 1670;
        cArr2[79] = 1580;
        cArr2[80] = 1580;
        cArr2[81] = 1580;
        cArr2[82] = 1580;
        cArr2[83] = 1581;
        cArr2[84] = 1581;
        cArr2[85] = 1581;
        cArr2[86] = 1581;
        cArr2[87] = 1582;
        cArr2[88] = 1582;
        cArr2[89] = 1582;
        cArr2[90] = 1582;
        cArr2[91] = 1607;
        cArr2[92] = 1607;
        cArr2[93] = 1607;
        cArr2[94] = 1607;
        cArr2[95] = 1593;
        cArr2[96] = 1593;
        cArr2[97] = 1593;
        cArr2[98] = 1593;
        cArr2[99] = 1594;
        cArr2[100] = 1594;
        cArr2[101] = 1594;
        cArr2[102] = 1594;
        cArr2[103] = 1601;
        cArr2[104] = 1601;
        cArr2[105] = 1601;
        cArr2[106] = 1601;
        cArr2[107] = 1602;
        cArr2[108] = 1602;
        cArr2[109] = 1602;
        cArr2[110] = 1602;
        cArr2[111] = 1579;
        cArr2[112] = 1579;
        cArr2[113] = 1579;
        cArr2[114] = 1579;
        cArr2[115] = 1589;
        cArr2[116] = 1589;
        cArr2[117] = 1589;
        cArr2[118] = 1589;
        cArr2[119] = 1590;
        cArr2[120] = 1590;
        cArr2[121] = 1590;
        cArr2[122] = 1590;
        cArr2[123] = 1705;
        cArr2[124] = 1740;
        cArr2[125] = 1705;
        cArr2[126] = 1740;
        cArr2[127] = 1705;
    }

    /* JADX INFO: compiled from: StringExt.kt */
    /* JADX INFO: loaded from: classes10.dex */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005J\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\nJ\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\n¨\u0006\f"}, d2 = {"Lfast/dic/dict/utils/StringUtils$Companion;", "", "<init>", "()V", "peCharacterToNumber", "", "word", "prefixStringOf", "s", U3.i.L, "", "suffixStringOf", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String peCharacterToNumber(String word) {
            Intrinsics.checkNotNullParameter(word, "word");
            if (word.length() == 0) {
                return "";
            }
            return StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(word, "ا", "10", false, 4, (Object) null), "آ", "10", false, 4, (Object) null), "ع", "10", false, 4, (Object) null), "ب", "13", false, 4, (Object) null), "پ", "15", false, 4, (Object) null), "ت", "17", false, 4, (Object) null), "ط", "17", false, 4, (Object) null), "ث", "19", false, 4, (Object) null), "س", "19", false, 4, (Object) null), "ص", "19", false, 4, (Object) null), "ج", "20", false, 4, (Object) null), "چ", "23", false, 4, (Object) null), "ح", "25", false, 4, (Object) null), "ه", "25", false, 4, (Object) null), "خ", "27", false, 4, (Object) null), "د", "29", false, 4, (Object) null), "ذ", "40", false, 4, (Object) null), "ز", "40", false, 4, (Object) null), "ض", "40", false, 4, (Object) null), "ظ", "40", false, 4, (Object) null), "ر", "43", false, 4, (Object) null), "ژ", "45", false, 4, (Object) null), "ش", "47", false, 4, (Object) null), "غ", "49", false, 4, (Object) null), "ق", "49", false, 4, (Object) null), "ف", "60", false, 4, (Object) null), "ک", "63", false, 4, (Object) null), "گ", "65", false, 4, (Object) null), "ل", "67", false, 4, (Object) null), "م", "69", false, 4, (Object) null), "ن", "80", false, 4, (Object) null), "و", "83", false, 4, (Object) null), "ی", "85", false, 4, (Object) null), "ئ", "85", false, 4, (Object) null), ".", "87", false, 4, (Object) null), "-", "87", false, 4, (Object) null), "!", "87", false, 4, (Object) null), "؟", "87", false, 4, (Object) null), io.appmetrica.analytics.coreutils.internal.StringUtils.PROCESS_POSTFIX_DELIMITER, "87", false, 4, (Object) null), "(", "87", false, 4, (Object) null), ")", "87", false, 4, (Object) null), " ", "89", false, 4, (Object) null);
        }

        public final String prefixStringOf(String s, int position) {
            if (s == null || s.length() < position) {
                return s;
            }
            String strSubstring = s.substring(0, position);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            return strSubstring;
        }

        public final String suffixStringOf(String s, int position) {
            if (s == null || s.length() < position) {
                return s;
            }
            int length = s.length();
            String strSubstring = s.substring(length - position, length);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            return strSubstring;
        }
    }

    public final String trimmingAndLowerCaseWords(String character) {
        if (character == null) {
            return null;
        }
        String str = character;
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = str.charAt(!z ? i : length) <= ' ';
            if (z) {
                if (!z2) {
                    break;
                }
                length--;
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        String string = str.subSequence(i, length + 1).toString();
        if (string.length() > 100) {
            return string;
        }
        String strCharReplacement = charReplacement(string);
        if (strCharReplacement == null) {
            return null;
        }
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        String lowerCase = strCharReplacement.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }
}
