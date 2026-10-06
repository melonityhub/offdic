package fast.dic.dict.viewmodels.fragments;

import android.graphics.Bitmap;
import android.graphics.Rect;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.google.mlkit.vision.text.Text;
import fast.dic.dict.utils.BitmapExtKt;
import fast.dic.dict.utils.FDImageRecognizer;
import fast.dic.dict.utils.LoggerKt;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: TextRecognitionTranslatorViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0015\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J \u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016J8\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u0019\u0012\u0004\u0012\u00020\u000f0\u001cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rÊ\u0001\u0002\b\u001f¨\u0006\u001e"}, d2 = {"Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;", "Landroidx/lifecycle/ViewModel;", "imageRecognizer", "Lfast/dic/dict/utils/FDImageRecognizer;", "<init>", "(Lfast/dic/dict/utils/FDImageRecognizer;)V", "Ljavax/inject/Inject;", "viewModelState", "Landroidx/lifecycle/MutableLiveData;", "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState;", "state", "Landroidx/lifecycle/LiveData;", "getState", "()Landroidx/lifecycle/LiveData;", "recognizeTextFromImageAndTranslate", "", "bitmap", "Landroid/graphics/Bitmap;", "storeImageToDirectory", "Ljava/io/File;", "directory", "filename", "", "getDominantColor", "blocks", "", "Lcom/google/mlkit/vision/text/Text$TextBlock;", "callback", "Lkotlin/Function1;", "", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class TextRecognitionTranslatorViewModel extends ViewModel {
    private final FDImageRecognizer imageRecognizer;
    private final LiveData<TextRecognitionTranslatorViewModelState> state;
    private final MutableLiveData<TextRecognitionTranslatorViewModelState> viewModelState;

    @Inject
    public TextRecognitionTranslatorViewModel(FDImageRecognizer imageRecognizer) {
        Intrinsics.checkNotNullParameter(imageRecognizer, "imageRecognizer");
        this.imageRecognizer = imageRecognizer;
        MutableLiveData<TextRecognitionTranslatorViewModelState> mutableLiveData = new MutableLiveData<>();
        this.viewModelState = mutableLiveData;
        this.state = mutableLiveData;
    }

    public final LiveData<TextRecognitionTranslatorViewModelState> getState() {
        return this.state;
    }

    public final void recognizeTextFromImageAndTranslate(final Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        this.viewModelState.setValue(TextRecognitionTranslatorViewModelState.Clear.INSTANCE);
        this.imageRecognizer.runTextRecognition(bitmap, new Function2() { // from class: fast.dic.dict.viewmodels.fragments.TextRecognitionTranslatorViewModel$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return TextRecognitionTranslatorViewModel.recognizeTextFromImageAndTranslate$lambda$0(this.f$0, bitmap, (List) obj, (List) obj2);
            }
        });
    }

    static final Unit recognizeTextFromImageAndTranslate$lambda$0(TextRecognitionTranslatorViewModel textRecognitionTranslatorViewModel, Bitmap bitmap, List translates, List blocks) {
        Intrinsics.checkNotNullParameter(translates, "translates");
        Intrinsics.checkNotNullParameter(blocks, "blocks");
        textRecognitionTranslatorViewModel.viewModelState.postValue(new TextRecognitionTranslatorViewModelState.Data(translates, blocks, bitmap));
        return Unit.INSTANCE;
    }

    public final File storeImageToDirectory(Bitmap bitmap, File directory, String filename) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(directory, "directory");
        Intrinsics.checkNotNullParameter(filename, "filename");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        File file = new File(directory, "/share/");
        try {
            if (!file.exists()) {
                if (!file.mkdir()) {
                    LoggerKt.getLogger().error("Couldn't create directory!", new Object[0]);
                } else {
                    file.mkdirs();
                }
            }
            File file2 = new File(file, filename);
            FileOutputStream fileOutputStream = new FileOutputStream(file2.toString());
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
            fileOutputStream.write(byteArrayOutputStream.toByteArray());
            fileOutputStream.flush();
            fileOutputStream.close();
            return file2;
        } catch (Exception e) {
            LoggerKt.getLogger().error("Error file:", new StringBuilder().append(e).toString());
            return null;
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.viewmodels.fragments.TextRecognitionTranslatorViewModel$getDominantColor$1, reason: invalid class name */
    /* JADX INFO: compiled from: TextRecognitionTranslatorViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.viewmodels.fragments.TextRecognitionTranslatorViewModel$getDominantColor$1", f = "TextRecognitionTranslatorViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Bitmap $bitmap;
        final /* synthetic */ List<Text.TextBlock> $blocks;
        final /* synthetic */ Function1<List<Integer>, Unit> $callback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(List<? extends Text.TextBlock> list, Function1<? super List<Integer>, Unit> function1, Bitmap bitmap, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$blocks = list;
            this.$callback = function1;
            this.$bitmap = bitmap;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$blocks, this.$callback, this.$bitmap, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int dominantColor;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            List<Text.TextBlock> list = this.$blocks;
            Bitmap bitmap = this.$bitmap;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                Rect boundingBox = ((Text.TextBlock) it.next()).getBoundingBox();
                if (boundingBox == null) {
                    dominantColor = -1;
                } else {
                    dominantColor = BitmapExtKt.getDominantColor(bitmap, boundingBox.width(), boundingBox.height(), boundingBox.left >= 0 ? boundingBox.left : 0, boundingBox.top >= 0 ? boundingBox.top : 0);
                }
                arrayList.add(Boxing.boxInt(dominantColor));
            }
            this.$callback.invoke(arrayList);
            return Unit.INSTANCE;
        }
    }

    private final void getDominantColor(Bitmap bitmap, List<? extends Text.TextBlock> blocks, Function1<? super List<Integer>, Unit> callback) {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(blocks, callback, bitmap, null), 3, null);
    }
}
