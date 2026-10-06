package fast.dic.dict.utils;

import fast.dic.dict.helpers.database.couchbase.FDHistory;
import fast.dic.dict.models.CloudWordModel;
import fast.dic.dict.models.PositionModel;
import fast.dic.dict.p000const.ConstKt;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;

/* JADX INFO: compiled from: FDCloudWords.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\fJ\u001e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\t0\u001a2\u0006\u0010\u001b\u001a\u00020\f2\b\b\u0002\u0010\u001c\u001a\u00020\u001dJ-\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001a2\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0!2\b\b\u0002\u0010\u001c\u001a\u00020\u001dH\u0002¢\u0006\u0002\u0010\"J\b\u0010#\u001a\u00020\fH\u0002J\u0016\u0010$\u001a\b\u0012\u0004\u0012\u00020%0\u001a2\u0006\u0010\u001b\u001a\u00020\fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\u001a\u0010\u0014\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010¨\u0006&"}, d2 = {"Lfast/dic/dict/utils/FDCloudWords;", "", "history", "Lfast/dic/dict/helpers/database/couchbase/FDHistory;", "<init>", "(Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V", "Ljavax/inject/Inject;", "cachedWords", "Ljava/util/ArrayList;", "Lfast/dic/dict/models/CloudWordModel;", "Lkotlin/collections/ArrayList;", "min", "", "getMin", "()I", "setMin", "(I)V", "max", "getMax", "setMax", "offset", "getOffset", "setOffset", "getRandomNumber", SentryThread.JsonKeys.CURRENT, "get", "", "height", "enableHistory", "", "getWords", "", "defaultWords", "", "([Ljava/lang/String;Z)Ljava/util/List;", "generateRandomFontSize", "getPositions", "Lfast/dic/dict/models/PositionModel;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDCloudWords {
    private ArrayList<CloudWordModel> cachedWords;
    private final FDHistory history;
    private int max;
    private int min;
    private int offset;

    @Inject
    public FDCloudWords(FDHistory history) {
        Intrinsics.checkNotNullParameter(history, "history");
        this.history = history;
        this.cachedWords = new ArrayList<>();
    }

    public final int getMin() {
        return this.min;
    }

    public final void setMin(int i) {
        this.min = i;
    }

    public final int getMax() {
        return this.max;
    }

    public final void setMax(int i) {
        this.max = i;
    }

    public final int getOffset() {
        return this.offset;
    }

    public final void setOffset(int i) {
        this.offset = i;
    }

    public final int getRandomNumber(int current) {
        int i = this.offset;
        int i2 = current - i;
        int i3 = this.min;
        if (i2 < i3) {
            i2 = i3;
        }
        int i4 = current + i;
        int i5 = this.max;
        if (i4 > i5) {
            i4 = i5;
        }
        return i2 + ((int) (Math.random() * ((double) ((i4 - i2) + 1))));
    }

    public static /* synthetic */ List get$default(FDCloudWords fDCloudWords, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        return fDCloudWords.get(i, z);
    }

    public final List<CloudWordModel> get(int height, boolean enableHistory) {
        if (!this.cachedWords.isEmpty()) {
            return this.cachedWords;
        }
        List words$default = getWords$default(this, null, enableHistory, 1, null);
        List<PositionModel> positions = getPositions(height + 100);
        ArrayList<CloudWordModel> arrayList = new ArrayList<>();
        Iterator it = words$default.iterator();
        int i = 0;
        while (it.hasNext()) {
            arrayList.add(new CloudWordModel((String) it.next(), generateRandomFontSize(), positions.get(i)));
            i++;
        }
        this.cachedWords = arrayList;
        return arrayList;
    }

    static /* synthetic */ List getWords$default(FDCloudWords fDCloudWords, String[] strArr, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            strArr = ConstKt.getWORDS();
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return fDCloudWords.getWords(strArr, z);
    }

    private final List<String> getWords(String[] defaultWords, boolean enableHistory) {
        List<String> listEmptyList;
        int size;
        ArrayList arrayList = new ArrayList();
        if (enableHistory) {
            listEmptyList = this.history.getWords(50);
        } else {
            listEmptyList = CollectionsKt.emptyList();
        }
        for (String str : listEmptyList) {
            if (str != null) {
                arrayList.add(str);
            }
        }
        if (arrayList.size() < 50 && (size = 49 - arrayList.size()) >= 0) {
            int i = 0;
            while (true) {
                arrayList.add(defaultWords[i]);
                if (i == size) {
                    break;
                }
                i++;
            }
        }
        return arrayList;
    }

    private final int generateRandomFontSize() {
        return Random.INSTANCE.nextInt(12, 28);
    }

    private final List<PositionModel> getPositions(int height) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int iFloor = (int) Math.floor(((double) height) / 50.0d);
        this.max = height;
        this.offset = 30;
        if (iFloor > 0) {
            int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, height, iFloor);
            if (progressionLastElement >= 0) {
                int i = 0;
                while (true) {
                    arrayList.add(Integer.valueOf(getRandomNumber(i)));
                    arrayList2.add(Integer.valueOf(getRandomNumber(i)));
                    if (i == progressionLastElement) {
                        break;
                    }
                    i += iFloor;
                }
            }
            Collections.shuffle(arrayList);
            Collections.shuffle(arrayList2);
            int size = arrayList.size();
            if (size >= 0) {
                int i2 = 0;
                while (true) {
                    PositionModel positionModel = new PositionModel(0, 0);
                    if (arrayList.size() > i2) {
                        Object obj = arrayList.get(i2);
                        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
                        positionModel.setX(((Number) obj).intValue());
                        Object obj2 = arrayList2.get(i2);
                        Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
                        positionModel.setY(((Number) obj2).intValue());
                        arrayList3.add(positionModel);
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
            ArrayList arrayList4 = arrayList3;
            Collections.shuffle(arrayList4);
            return arrayList4;
        }
        throw new IllegalArgumentException("Step must be positive, was: " + iFloor + ".");
    }
}
