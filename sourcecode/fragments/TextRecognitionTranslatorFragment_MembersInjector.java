package fast.dic.dict.fragments;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.helpers.FDSoundEffect;

/* JADX INFO: loaded from: classes11.dex */
public final class TextRecognitionTranslatorFragment_MembersInjector implements MembersInjector<TextRecognitionTranslatorFragment> {
    private final Provider<FDSoundEffect> soundEffectProvider;

    private TextRecognitionTranslatorFragment_MembersInjector(Provider<FDSoundEffect> provider) {
        this.soundEffectProvider = provider;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(TextRecognitionTranslatorFragment textRecognitionTranslatorFragment) {
        injectSoundEffect(textRecognitionTranslatorFragment, this.soundEffectProvider.get());
    }

    public static MembersInjector<TextRecognitionTranslatorFragment> create(Provider<FDSoundEffect> provider) {
        return new TextRecognitionTranslatorFragment_MembersInjector(provider);
    }

    public static void injectSoundEffect(TextRecognitionTranslatorFragment textRecognitionTranslatorFragment, FDSoundEffect fDSoundEffect) {
        textRecognitionTranslatorFragment.soundEffect = fDSoundEffect;
    }
}
