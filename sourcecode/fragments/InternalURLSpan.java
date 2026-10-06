package fast.dic.dict.fragments;

import android.text.style.ClickableSpan;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SettingFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0014"}, d2 = {"Lfast/dic/dict/fragments/InternalURLSpan;", "Landroid/text/style/ClickableSpan;", "<init>", "()V", "text", "", "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "clickInterface", "Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;", "getClickInterface", "()Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;", "setClickInterface", "(Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;)V", "onClick", "", "widget", "Landroid/view/View;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class InternalURLSpan extends ClickableSpan {
    private HandleLinkClickInsideTextView clickInterface;
    private String text;

    public final String getText() {
        return this.text;
    }

    public final void setText(String str) {
        this.text = str;
    }

    public final HandleLinkClickInsideTextView getClickInterface() {
        return this.clickInterface;
    }

    public final void setClickInterface(HandleLinkClickInsideTextView handleLinkClickInsideTextView) {
        this.clickInterface = handleLinkClickInsideTextView;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View widget) {
        Intrinsics.checkNotNullParameter(widget, "widget");
        HandleLinkClickInsideTextView handleLinkClickInsideTextView = this.clickInterface;
        Intrinsics.checkNotNull(handleLinkClickInsideTextView);
        handleLinkClickInsideTextView.onLinkClicked(this.text);
    }
}
