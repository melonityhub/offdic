package fast.dic.dict;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import im.delight.android.webview.AdvancedWebView;

/* JADX INFO: loaded from: classes11.dex */
public class BindingAdapters {
    public static void setHtml(AdvancedWebView advancedWebView, String str, boolean z) {
        BindingAdapterKt.setHtml(advancedWebView, str, z);
    }

    public static void setRightIcon(TextView textView, Integer num) {
        BindingAdapterKt.setRightIcon(textView, num);
    }

    public static void setPersianAlignment(TextView textView, boolean z) {
        BindingAdapterKt.setPersianAlignment(textView, z);
    }

    public static void setStringResource(TextView textView, Integer num) {
        BindingAdapterKt.setStringResource(textView, num);
    }

    public static void setImageSrcId(ImageView imageView, int i) {
        BindingAdapterKt.setImageSrcId(imageView, i);
    }

    public static void setImageCatId(ImageView imageView, String str) {
        BindingAdapterKt.setImageCatId(imageView, str);
    }

    public static void setButtonLoading(MaterialButton materialButton, boolean z) {
        BindingAdapterKt.setButtonLoading(materialButton, z);
    }

    public static void setLeftIcon(TextView textView, Integer num) {
        BindingAdapterKt.setLeftIcon(textView, num);
    }

    public static void setIconTintColorTextView(TextView textView, int i) {
        BindingAdapterKt.setIconTintColor(textView, i);
    }

    public static void setIconTintColorImageView(ImageView imageView, int i) {
        BindingAdapterKt.setIconTintColor(imageView, i);
    }

    public static void setAdapter(RecyclerView recyclerView, RecyclerView.Adapter adapter) {
        BindingAdapterKt.setAdapter(recyclerView, adapter);
    }

    public static void setLockBackgroundWithAttribute(MaterialCardView materialCardView, boolean z) {
        BindingAdapterKt.setLockBackgroundWithAttribute(materialCardView, z);
    }

    public static void setEnableDecorator(RecyclerView recyclerView, boolean z) {
        BindingAdapterKt.setEnableDecorator(recyclerView, z);
    }

    public static void setTextColor(TextView textView, int i) {
        BindingAdapterKt.setTextColor(textView, i);
    }

    public static void setIsEnglishWordForFont(TextView textView, boolean z) {
        BindingAdapterKt.setIsEnglishWordForFont(textView, z);
    }

    public static void setIsEnglishMeaningForFont(TextView textView, boolean z) {
        BindingAdapterKt.setIsEnglishMeaningForFont(textView, z);
    }

    public static void setLocalizedNumber(TextView textView, Integer num) {
        BindingAdapterKt.setLocalizedNumber(textView, num);
    }

    public static void setSelectedState(MaterialCardView materialCardView, boolean z) {
        BindingAdapterKt.setSelectedState(materialCardView, z);
    }
}
