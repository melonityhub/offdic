package fast.dic.dict.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SupportedLanguageModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0014\u0010\u0014\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0016\u001a\u00020\u0017HÖ\u0081\u0004J\n\u0010\u0018\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lfast/dic/dict/models/SupportedLanguageModel;", "", "title", "", "translate", "selected", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Z)V", "getTitle", "()Ljava/lang/String;", "getTranslate", "getSelected", "()Z", "setSelected", "(Z)V", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class SupportedLanguageModel {
    private boolean selected;
    private final String title;
    private final String translate;

    public static /* synthetic */ SupportedLanguageModel copy$default(SupportedLanguageModel supportedLanguageModel, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = supportedLanguageModel.title;
        }
        if ((i & 2) != 0) {
            str2 = supportedLanguageModel.translate;
        }
        if ((i & 4) != 0) {
            z = supportedLanguageModel.selected;
        }
        return supportedLanguageModel.copy(str, str2, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTranslate() {
        return this.translate;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getSelected() {
        return this.selected;
    }

    public final SupportedLanguageModel copy(String title, String translate, boolean selected) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(translate, "translate");
        return new SupportedLanguageModel(title, translate, selected);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SupportedLanguageModel)) {
            return false;
        }
        SupportedLanguageModel supportedLanguageModel = (SupportedLanguageModel) other;
        return Intrinsics.areEqual(this.title, supportedLanguageModel.title) && Intrinsics.areEqual(this.translate, supportedLanguageModel.translate) && this.selected == supportedLanguageModel.selected;
    }

    public int hashCode() {
        return (((this.title.hashCode() * 31) + this.translate.hashCode()) * 31) + Boolean.hashCode(this.selected);
    }

    public String toString() {
        return "SupportedLanguageModel(title=" + this.title + ", translate=" + this.translate + ", selected=" + this.selected + ")";
    }

    public SupportedLanguageModel(String title, String translate, boolean z) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(translate, "translate");
        this.title = title;
        this.translate = translate;
        this.selected = z;
    }

    public final boolean getSelected() {
        return this.selected;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getTranslate() {
        return this.translate;
    }

    public final void setSelected(boolean z) {
        this.selected = z;
    }
}
