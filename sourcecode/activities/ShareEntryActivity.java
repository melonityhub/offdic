package fast.dic.dict.activities;

import android.content.ClipData;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.activity.EdgeToEdge;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.navigation.ActivityKt;
import androidx.navigation.NavController;
import androidx.navigation.NavGraph;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.ActivityShareEntryBinding;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.presentation.word_result_screen.WordResultFragmentArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;

/* JADX INFO: compiled from: ShareEntryActivity.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0014J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tÊ\u0001\u0002\b\u0012¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/activities/ShareEntryActivity;", "Lfast/dic/dict/bases/BaseActivity;", "<init>", "()V", "binding", "Lfast/dic/dict/databinding/ActivityShareEntryBinding;", "getBinding", "()Lfast/dic/dict/databinding/ActivityShareEntryBinding;", "setBinding", "(Lfast/dic/dict/databinding/ActivityShareEntryBinding;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onNewIntent", "intent", "Landroid/content/Intent;", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class ShareEntryActivity extends Hilt_ShareEntryActivity {
    public ActivityShareEntryBinding binding;

    public final ActivityShareEntryBinding getBinding() {
        ActivityShareEntryBinding activityShareEntryBinding = this.binding;
        if (activityShareEntryBinding != null) {
            return activityShareEntryBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void setBinding(ActivityShareEntryBinding activityShareEntryBinding) {
        Intrinsics.checkNotNullParameter(activityShareEntryBinding, "<set-?>");
        this.binding = activityShareEntryBinding;
    }

    @Override // fast.dic.dict.bases.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        EdgeToEdge.enable$default(this, null, null, 3, null);
        super.onCreate(savedInstanceState);
        ActivityShareEntryBinding activityShareEntryBindingInflate = ActivityShareEntryBinding.inflate(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(activityShareEntryBindingInflate, "inflate(...)");
        setBinding(activityShareEntryBindingInflate);
        setContentView(getBinding().getRoot());
        ViewCompat.setOnApplyWindowInsetsListener(getBinding().getRoot(), new OnApplyWindowInsetsListener() { // from class: fast.dic.dict.activities.ShareEntryActivity$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return ShareEntryActivity.onCreate$lambda$0(view, windowInsetsCompat);
            }
        });
        getBinding().backToolbarButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.activities.ShareEntryActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.finish();
            }
        });
        Intent intent = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "getIntent(...)");
        onNewIntent(intent);
    }

    static final WindowInsetsCompat onCreate$lambda$0(View v, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        v.setPadding(v.getPaddingLeft(), insets2.top, v.getPaddingRight(), insets2.bottom);
        return insets;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        CharSequence text;
        CharSequence string;
        String value;
        ClipData.Item itemAt;
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        if (Intrinsics.areEqual(intent.getAction(), "android.intent.action.PROCESS_TEXT") || Intrinsics.areEqual(intent.getAction(), "android.intent.action.SEND")) {
            ClipData clipData = intent.getClipData();
            if ((clipData != null ? clipData.getItemCount() : 0) > 0) {
                ClipData clipData2 = intent.getClipData();
                text = (clipData2 == null || (itemAt = clipData2.getItemAt(0)) == null) ? null : itemAt.getText();
            }
            CharSequence charSequenceExtra = intent.getCharSequenceExtra("android.intent.extra.PROCESS_TEXT");
            if (charSequenceExtra != null) {
                text = charSequenceExtra;
            }
            if (text == null || text.length() == 0) {
                Bundle extras = intent.getExtras();
                if (extras != null && extras.containsKey("WORD")) {
                    Bundle extras2 = intent.getExtras();
                    string = extras2 != null ? extras2.getString("WORD") : null;
                }
                text = string;
            }
            String strValueOf = String.valueOf(text);
            MatchResult matchResultFind$default = Regex.find$default(new Regex("(www|http:|https:)+\\S+\\w"), strValueOf, 0, 2, null);
            String value2 = matchResultFind$default != null ? matchResultFind$default.getValue() : null;
            if (value2 != null && value2.length() != 0) {
                String strReplace = new Regex("(www|http:|https:)+\\S+\\w").replace(strValueOf, "");
                MatchResult matchResultFind$default2 = Regex.find$default(new Regex("\"(.*?)\""), strReplace, 0, 2, null);
                if (matchResultFind$default2 != null && (value = matchResultFind$default2.getValue()) != null) {
                    strReplace = value;
                }
                strValueOf = new Regex(".$").replace(new Regex("\"").replaceFirst(strReplace, ""), "");
            }
            if (strValueOf.length() > 0) {
                NavController navControllerFindNavController = ActivityKt.findNavController(this, R.id.nav_fragment);
                NavGraph navGraphInflate = navControllerFindNavController.getNavInflater().inflate(R.navigation.nav_graph);
                Bundle bundle = new WordResultFragmentArgs(new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, strValueOf, null, 0, 1835007, null), true, false, 4, null).toBundle();
                navGraphInflate.setStartDestination(R.id.wordResultScreen);
                navControllerFindNavController.setGraph(navGraphInflate, bundle);
            }
        }
    }
}
