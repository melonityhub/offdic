package fast.dic.dict.viewmodels.fragments;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.utils.FDImageRecognizer;

/* JADX INFO: loaded from: classes11.dex */
public final class TextRecognitionTranslatorViewModel_Factory implements Factory<TextRecognitionTranslatorViewModel> {
    private final Provider<FDImageRecognizer> imageRecognizerProvider;

    private TextRecognitionTranslatorViewModel_Factory(Provider<FDImageRecognizer> provider) {
        this.imageRecognizerProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public TextRecognitionTranslatorViewModel get() {
        return newInstance(this.imageRecognizerProvider.get());
    }

    public static TextRecognitionTranslatorViewModel_Factory create(Provider<FDImageRecognizer> provider) {
        return new TextRecognitionTranslatorViewModel_Factory(provider);
    }

    public static TextRecognitionTranslatorViewModel newInstance(FDImageRecognizer fDImageRecognizer) {
        return new TextRecognitionTranslatorViewModel(fDImageRecognizer);
    }
}
