package fast.dic.dict.fragments;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.helpers.FDSoundEffect;

/* JADX INFO: loaded from: classes11.dex */
public final class CameraFragment_MembersInjector implements MembersInjector<CameraFragment> {
    private final Provider<FDSoundEffect> soundEffectProvider;

    private CameraFragment_MembersInjector(Provider<FDSoundEffect> provider) {
        this.soundEffectProvider = provider;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(CameraFragment cameraFragment) {
        injectSoundEffect(cameraFragment, this.soundEffectProvider.get());
    }

    public static MembersInjector<CameraFragment> create(Provider<FDSoundEffect> provider) {
        return new CameraFragment_MembersInjector(provider);
    }

    public static void injectSoundEffect(CameraFragment cameraFragment, FDSoundEffect fDSoundEffect) {
        cameraFragment.soundEffect = fDSoundEffect;
    }
}
