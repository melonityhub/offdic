package fast.dic.dict.presentation.pricing_screen.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.tabs.TabLayout;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
public class BindingAdapters {
    public static void bindingStrikeThroughMonths(TextView textView, int i, String str, String str2) {
        BindingAdapterKt.bindingStrikeThrough(textView, i, str, str2);
    }

    public static void bindingFreeMonthsBadge(TextView textView, int i, String str, String str2) throws IOException {
        BindingAdapterKt.bindingFreeMonthsBadge(textView, i, str, str2);
    }

    public static void bindingStrikeThrough(TextView textView, boolean z) {
        BindingAdapterKt.bindingStrikeThrough(textView, z);
    }

    public static void changeTextColor(TextView textView, int i) {
        BindingAdapterKt.changeTextColor(textView, i);
    }

    public static void changeImage(ImageView imageView, int i) {
        BindingAdapterKt.changeImage(imageView, i);
    }

    public static void updateFirstTabText(TabLayout tabLayout, String str) {
        BindingAdapterKt.updateFirstTabText(tabLayout, str);
    }

    public static void updateSecondTabText(TabLayout tabLayout, String str) {
        BindingAdapterKt.updateSecondTabText(tabLayout, str);
    }

    public static void bindingForceDirection(View view, int i) {
        BindingAdapterKt.bindingForceDirection(view, i);
    }
}
