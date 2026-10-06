package fast.dic.dict.helpers;

import android.database.Cursor;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import fast.dic.dict.database.FDDatabaseManager;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.Levenshtein;
import fast.dic.dict.utils.StringUtils;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.zetetic.database.sqlcipher.SQLiteDatabase;

/* JADX INFO: compiled from: FDSuggestions.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J<\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007b\u0010\b\f\u0012\f\b\r\u0012\b\b\fJ\u0004\b\b(\u000eJ(\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u0011¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/helpers/FDSuggestions;", "", "<init>", "()V", "getModelsFromWord", "Ljava/util/ArrayList;", "Lfast/dic/dict/models/database/ListModel;", "Lkotlin/collections/ArrayList;", "characters", "", "db", "Lnet/zetetic/database/sqlcipher/SQLiteDatabase;", "Landroid/annotation/SuppressLint;", "value", "Range", "getLevenshtein", "fdDatabaseManager", "Lfast/dic/dict/database/FDDatabaseManager;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDSuggestions {
    public final ArrayList<ListModel> getModelsFromWord(String characters, SQLiteDatabase db) {
        String strSuffixStringOf;
        char c;
        String str;
        String string;
        String string2;
        Intrinsics.checkNotNullParameter(db, "db");
        ArrayList<ListModel> arrayList = new ArrayList<>();
        if (characters != null) {
            String str2 = characters;
            char c2 = 1;
            int length = str2.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = str2.charAt(!z ? i : length) <= ' ';
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
            if (!Intrinsics.areEqual(str2.subSequence(i, length + 1).toString(), "") && characters.length() < 100) {
                int length2 = characters.length();
                String strPrefixStringOf = StringUtils.INSTANCE.prefixStringOf(characters, 2);
                String strSuffixStringOf2 = StringUtils.INSTANCE.suffixStringOf(characters, 2);
                if (length2 % 2 == 0) {
                    strSuffixStringOf = StringUtils.INSTANCE.suffixStringOf(StringUtils.INSTANCE.prefixStringOf(characters, length2 / 2), 2);
                } else {
                    strSuffixStringOf = StringUtils.INSTANCE.suffixStringOf(StringUtils.INSTANCE.prefixStringOf(characters, (length2 + 1) / 2), 2);
                }
                FDLanguageWord.Companion companion = FDLanguageWord.INSTANCE;
                int length3 = str2.length() - 1;
                int i2 = 0;
                char c3 = 0;
                while (true) {
                    c = c2;
                    if (i2 > length3) {
                        break;
                    }
                    char c4 = str2.charAt(c3 == 0 ? i2 : length3) <= ' ' ? c : (char) 0;
                    if (c3 == 0) {
                        if (c4 == 0) {
                            c2 = c;
                            c3 = c2;
                        } else {
                            i2++;
                        }
                    } else {
                        if (c4 == 0) {
                            break;
                        }
                        length3--;
                    }
                    c2 = c;
                }
                if (companion.isEnglish(str2.subSequence(i2, length3 + 1).toString())) {
                    str = "SELECT english_word AS word, english_word_id AS id FROM english_words WHERE  LENGTH(english_word) < ? AND (english_word GLOB ? OR english_word GLOB ? OR english_word GLOB ?)";
                } else {
                    str = "SELECT persian_word AS word, persian_word_id AS id FROM persian_words WHERE LENGTH(persian_word) < ? AND (persian_word GLOB ? OR persian_word GLOB ? OR persian_word GLOB ? )";
                }
                try {
                    String[] strArr = new String[4];
                    strArr[0] = String.valueOf(length2 * 2);
                    String string3 = null;
                    if (strPrefixStringOf != null) {
                        String str3 = strPrefixStringOf;
                        int length4 = str3.length() - 1;
                        int i3 = 0;
                        char c5 = 0;
                        while (i3 <= length4) {
                            char c6 = str3.charAt(c5 == 0 ? i3 : length4) <= ' ' ? c : (char) 0;
                            if (c5 == 0) {
                                if (c6 == 0) {
                                    c5 = c;
                                } else {
                                    i3++;
                                }
                            } else {
                                if (c6 == 0) {
                                    break;
                                }
                                length4--;
                            }
                        }
                        string = str3.subSequence(i3, length4 + 1).toString();
                    } else {
                        string = null;
                    }
                    strArr[c] = string + ProxyConfig.MATCH_ALL_SCHEMES;
                    if (strSuffixStringOf != null) {
                        String str4 = strSuffixStringOf;
                        int length5 = str4.length() - 1;
                        int i4 = 0;
                        char c7 = 0;
                        while (i4 <= length5) {
                            char c8 = str4.charAt(c7 == 0 ? i4 : length5) <= ' ' ? c : (char) 0;
                            if (c7 == 0) {
                                if (c8 == 0) {
                                    c7 = c;
                                } else {
                                    i4++;
                                }
                            } else {
                                if (c8 == 0) {
                                    break;
                                }
                                length5--;
                            }
                        }
                        string2 = str4.subSequence(i4, length5 + 1).toString();
                    } else {
                        string2 = null;
                    }
                    strArr[2] = ProxyConfig.MATCH_ALL_SCHEMES + string2 + ProxyConfig.MATCH_ALL_SCHEMES;
                    if (strSuffixStringOf2 != null) {
                        String str5 = strSuffixStringOf2;
                        int length6 = str5.length() - 1;
                        int i5 = 0;
                        char c9 = 0;
                        while (i5 <= length6) {
                            char c10 = str5.charAt(c9 == 0 ? i5 : length6) <= ' ' ? c : (char) 0;
                            if (c9 == 0) {
                                if (c10 == 0) {
                                    c9 = c;
                                } else {
                                    i5++;
                                }
                            } else {
                                if (c10 == 0) {
                                    break;
                                }
                                length6--;
                            }
                        }
                        string3 = str5.subSequence(i5, length6 + 1).toString();
                    }
                    strArr[3] = ProxyConfig.MATCH_ALL_SCHEMES + string3;
                    Cursor cursorRawQuery = db.rawQuery(str, strArr);
                    if (cursorRawQuery != null) {
                        if (cursorRawQuery.moveToFirst()) {
                            do {
                                ListModel listModel = new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, null, null, 0, 2097151, null);
                                listModel.setWordId(Integer.valueOf(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("id"))));
                                listModel.setWord(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("word")));
                                arrayList.add(listModel);
                            } while (cursorRawQuery.moveToNext());
                        }
                        cursorRawQuery.close();
                    }
                } catch (Exception unused) {
                }
            }
        }
        return arrayList;
    }

    public final ArrayList<ListModel> getLevenshtein(String characters, FDDatabaseManager fdDatabaseManager) {
        Intrinsics.checkNotNullParameter(fdDatabaseManager, "fdDatabaseManager");
        SQLiteDatabase database = fdDatabaseManager.getDatabase();
        if (database == null) {
            return new ArrayList<>();
        }
        ArrayList<ListModel> modelsFromWord = getModelsFromWord(characters, database);
        ArrayList arrayList = new ArrayList();
        Iterator<ListModel> it = modelsFromWord.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            ListModel next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            ListModel listModel = next;
            int levenshteinDistance = Levenshtein.INSTANCE.getLevenshteinDistance(characters, listModel.getWord());
            if (levenshteinDistance <= 2) {
                listModel.setLevenshtein(Integer.valueOf(levenshteinDistance));
                arrayList.add(listModel);
            }
        }
        ArrayList arrayList2 = arrayList;
        int i = 1;
        if (arrayList2.size() > 1) {
            CollectionsKt.sortWith(arrayList2, new Comparator() { // from class: fast.dic.dict.helpers.FDSuggestions$getLevenshtein$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(((ListModel) t).getLevenshtein(), ((ListModel) t2).getLevenshtein());
                }
            });
        }
        ArrayList<ListModel> arrayList3 = new ArrayList<>();
        Iterator it2 = arrayList.iterator();
        Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
        while (it2.hasNext()) {
            Object next2 = it2.next();
            Intrinsics.checkNotNullExpressionValue(next2, "next(...)");
            ListModel listModel2 = (ListModel) next2;
            FDLanguageWord.LanguageType languageTypeFind = FDLanguageWord.INSTANCE.find(listModel2.getWord());
            Integer wordId = listModel2.getWordId();
            Intrinsics.checkNotNull(wordId);
            listModel2.setMeanings(fdDatabaseManager.getWordMeanings(languageTypeFind, wordId.intValue()));
            FDLanguageWord.Companion companion = FDLanguageWord.INSTANCE;
            String word = listModel2.getWord();
            if (companion.isEnglish(word != null ? StringsKt.trim((CharSequence) word).toString() : null)) {
                List<String> meanings = listModel2.getMeanings();
                Intrinsics.checkNotNull(meanings);
                listModel2.setMeaning(TextUtils.join("، ", meanings));
            } else {
                List<String> meanings2 = listModel2.getMeanings();
                Intrinsics.checkNotNull(meanings2);
                listModel2.setMeaning(TextUtils.join(", ", meanings2));
            }
            if (!Intrinsics.areEqual(listModel2.getMeaning(), "")) {
                arrayList3.add(listModel2);
                if (i >= 50) {
                    break;
                }
                i++;
            }
        }
        return arrayList3;
    }
}
