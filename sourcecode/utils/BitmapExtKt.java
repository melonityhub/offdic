package fast.dic.dict.utils;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Matrix;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BitmapExt.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0001\u001a*\u0010\u0004\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005\u001a\n\u0010\n\u001a\u00020\u0005*\u00020\u0001¨\u0006\u000b"}, d2 = {"rotate", "Landroid/graphics/Bitmap;", "degrees", "", "getDominantColor", "", "width", "height", "x", "y", "getDominantColorWay2", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class BitmapExtKt {
    public static final Bitmap rotate(Bitmap bitmap, float f) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Matrix matrix = new Matrix();
        matrix.postRotate(f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
        return bitmapCreateBitmap;
    }

    public static final int getDominantColor(Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        return getDominantColor(bitmap, bitmap.getWidth(), bitmap.getHeight(), 0, 0);
    }

    public static final int getDominantColor(Bitmap bitmap, int i, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        int i5 = i * i2;
        int[] iArr = new int[i5];
        Bitmap bitmapCopy = bitmap.copy(Bitmap.Config.ARGB_8888, false);
        int i6 = i4 + i2;
        int i7 = i6 > bitmapCopy.getHeight() ? i6 : i2;
        int i8 = i3 + i;
        try {
            bitmapCopy.getPixels(iArr, 0, i, i3, i4, i8 > bitmapCopy.getWidth() ? i8 : i, i7);
        } catch (Exception e) {
            LoggerKt.getLogger().error("getDominantColor error happened = " + e.getMessage(), new Object[0]);
        }
        bitmapCopy.recycle();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new HashMap());
        arrayList.add(new HashMap());
        arrayList.add(new HashMap());
        for (int i9 = 0; i9 < i5; i9++) {
            int i10 = iArr[i9];
            int iRed = Color.red(i10);
            int iGreen = Color.green(i10);
            int iBlue = Color.blue(i10);
            Integer num = (Integer) ((HashMap) arrayList.get(0)).get(Integer.valueOf(iRed));
            if (num == null) {
                num = 0;
            }
            ((Map) arrayList.get(0)).put(Integer.valueOf(iRed), Integer.valueOf(num.intValue() + 1));
            Integer num2 = (Integer) ((HashMap) arrayList.get(1)).get(Integer.valueOf(iGreen));
            if (num2 == null) {
                num2 = 0;
            }
            ((Map) arrayList.get(1)).put(Integer.valueOf(iGreen), Integer.valueOf(num2.intValue() + 1));
            Integer num3 = (Integer) ((HashMap) arrayList.get(2)).get(Integer.valueOf(iBlue));
            if (num3 == null) {
                num3 = 0;
            }
            ((Map) arrayList.get(2)).put(Integer.valueOf(iBlue), Integer.valueOf(num3.intValue() + 1));
        }
        int[] iArr2 = new int[3];
        for (int i11 = 0; i11 < 3; i11++) {
            int iIntValue = 0;
            int iIntValue2 = 0;
            for (Object obj : ((HashMap) arrayList.get(i11)).entrySet()) {
                Intrinsics.checkNotNullExpressionValue(obj, "next(...)");
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Intrinsics.checkNotNullExpressionValue(key, "component1(...)");
                Integer num4 = (Integer) key;
                Object value = entry.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "component2(...)");
                Integer num5 = (Integer) value;
                if (num5.intValue() > iIntValue2) {
                    iIntValue2 = num5.intValue();
                    iIntValue = num4.intValue();
                }
            }
            iArr2[i11] = iIntValue;
        }
        return Color.rgb(iArr2[0], iArr2[1], iArr2[2]);
    }

    public static final int getDominantColorWay2(Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, 1, 1, true);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateScaledBitmap, "createScaledBitmap(...)");
        int pixel = bitmapCreateScaledBitmap.getPixel(0, 0);
        bitmapCreateScaledBitmap.recycle();
        return pixel;
    }
}
