package fast.dic.dict.presentation.word_category_screen;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import fast.dic.dict.models.WordCategoryModel;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WordCategoryFragmentArgs.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0015HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0017"}, d2 = {"Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;", "Landroidx/navigation/NavArgs;", "category", "Lfast/dic/dict/models/WordCategoryModel;", "<init>", "(Lfast/dic/dict/models/WordCategoryModel;)V", "getCategory", "()Lfast/dic/dict/models/WordCategoryModel;", "toBundle", "Landroid/os/Bundle;", "toSavedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class WordCategoryFragmentArgs implements NavArgs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final WordCategoryModel category;

    public static /* synthetic */ WordCategoryFragmentArgs copy$default(WordCategoryFragmentArgs wordCategoryFragmentArgs, WordCategoryModel wordCategoryModel, int i, Object obj) {
        if ((i & 1) != 0) {
            wordCategoryModel = wordCategoryFragmentArgs.category;
        }
        return wordCategoryFragmentArgs.copy(wordCategoryModel);
    }

    @JvmStatic
    public static final WordCategoryFragmentArgs fromBundle(Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @JvmStatic
    public static final WordCategoryFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        return INSTANCE.fromSavedStateHandle(savedStateHandle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final WordCategoryModel getCategory() {
        return this.category;
    }

    public final WordCategoryFragmentArgs copy(WordCategoryModel category) {
        Intrinsics.checkNotNullParameter(category, "category");
        return new WordCategoryFragmentArgs(category);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof WordCategoryFragmentArgs) && Intrinsics.areEqual(this.category, ((WordCategoryFragmentArgs) other).category);
    }

    public int hashCode() {
        return this.category.hashCode();
    }

    public String toString() {
        return "WordCategoryFragmentArgs(category=" + this.category + ")";
    }

    public WordCategoryFragmentArgs(WordCategoryModel category) {
        Intrinsics.checkNotNullParameter(category, "category");
        this.category = category;
    }

    public final WordCategoryModel getCategory() {
        return this.category;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (Parcelable.class.isAssignableFrom(WordCategoryModel.class)) {
            WordCategoryModel wordCategoryModel = this.category;
            Intrinsics.checkNotNull(wordCategoryModel, "null cannot be cast to non-null type android.os.Parcelable");
            bundle.putParcelable("category", wordCategoryModel);
            return bundle;
        }
        if (Serializable.class.isAssignableFrom(WordCategoryModel.class)) {
            Parcelable parcelable = this.category;
            Intrinsics.checkNotNull(parcelable, "null cannot be cast to non-null type java.io.Serializable");
            bundle.putSerializable("category", (Serializable) parcelable);
            return bundle;
        }
        throw new UnsupportedOperationException(WordCategoryModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
    }

    public final SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (Parcelable.class.isAssignableFrom(WordCategoryModel.class)) {
            WordCategoryModel wordCategoryModel = this.category;
            Intrinsics.checkNotNull(wordCategoryModel, "null cannot be cast to non-null type android.os.Parcelable");
            savedStateHandle.set("category", wordCategoryModel);
            return savedStateHandle;
        }
        if (Serializable.class.isAssignableFrom(WordCategoryModel.class)) {
            Parcelable parcelable = this.category;
            Intrinsics.checkNotNull(parcelable, "null cannot be cast to non-null type java.io.Serializable");
            savedStateHandle.set("category", (Serializable) parcelable);
            return savedStateHandle;
        }
        throw new UnsupportedOperationException(WordCategoryModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
    }

    /* JADX INFO: compiled from: WordCategoryFragmentArgs.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007b\u0002\b\bJ\u0014\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007b\u0002\b\b¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs$Companion;", "", "<init>", "()V", "fromBundle", "Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;", "bundle", "Landroid/os/Bundle;", "Lkotlin/jvm/JvmStatic;", "fromSavedStateHandle", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final WordCategoryFragmentArgs fromBundle(Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.setClassLoader(WordCategoryFragmentArgs.class.getClassLoader());
            if (bundle.containsKey("category")) {
                if (Parcelable.class.isAssignableFrom(WordCategoryModel.class) || Serializable.class.isAssignableFrom(WordCategoryModel.class)) {
                    WordCategoryModel wordCategoryModel = (WordCategoryModel) bundle.get("category");
                    if (wordCategoryModel == null) {
                        throw new IllegalArgumentException("Argument \"category\" is marked as non-null but was passed a null value.");
                    }
                    return new WordCategoryFragmentArgs(wordCategoryModel);
                }
                throw new UnsupportedOperationException(WordCategoryModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            throw new IllegalArgumentException("Required argument \"category\" is missing and does not have an android:defaultValue");
        }

        @JvmStatic
        public final WordCategoryFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
            Intrinsics.checkNotNullParameter(savedStateHandle, "savedStateHandle");
            if (savedStateHandle.contains("category")) {
                if (Parcelable.class.isAssignableFrom(WordCategoryModel.class) || Serializable.class.isAssignableFrom(WordCategoryModel.class)) {
                    WordCategoryModel wordCategoryModel = (WordCategoryModel) savedStateHandle.get("category");
                    if (wordCategoryModel == null) {
                        throw new IllegalArgumentException("Argument \"category\" is marked as non-null but was passed a null value");
                    }
                    return new WordCategoryFragmentArgs(wordCategoryModel);
                }
                throw new UnsupportedOperationException(WordCategoryModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            throw new IllegalArgumentException("Required argument \"category\" is missing and does not have an android:defaultValue");
        }
    }
}
