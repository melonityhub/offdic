package fast.dic.dict.utils;

import android.graphics.Bitmap;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.text.Text;
import com.google.mlkit.vision.text.TextRecognition;
import com.google.mlkit.vision.text.TextRecognizer;
import com.google.mlkit.vision.text.latin.TextRecognizerOptions;
import fast.dic.dict.helpers.FDOfflineTranslator;
import io.sentry.rrweb.RRWebOptionsEvent;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDImageRecognizer.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\b\u0007\u001a\u0002\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003J4\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2$\u0010\u000b\u001a \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\r\u0012\u0004\u0012\u00020\b0\fJ6\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00122$\u0010\u000b\u001a \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\r\u0012\u0004\u0012\u00020\b0\fH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lfast/dic/dict/utils/FDImageRecognizer;", "", "<init>", "()V", "Ljavax/inject/Inject;", RRWebOptionsEvent.EVENT_TAG, "Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions;", "runTextRecognition", "", "imageBitmap", "Landroid/graphics/Bitmap;", "completion", "Lkotlin/Function2;", "", "", "Lcom/google/mlkit/vision/text/Text$TextBlock;", "processTextRecognitionTranslateResult", "texts", "Lcom/google/mlkit/vision/text/Text;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDImageRecognizer {
    private final TextRecognizerOptions options;

    @Inject
    public FDImageRecognizer() {
        TextRecognizerOptions DEFAULT_OPTIONS = TextRecognizerOptions.DEFAULT_OPTIONS;
        Intrinsics.checkNotNullExpressionValue(DEFAULT_OPTIONS, "DEFAULT_OPTIONS");
        this.options = DEFAULT_OPTIONS;
    }

    public final void runTextRecognition(Bitmap imageBitmap, final Function2<? super List<String>, ? super List<? extends Text.TextBlock>, Unit> completion) {
        Intrinsics.checkNotNullParameter(imageBitmap, "imageBitmap");
        Intrinsics.checkNotNullParameter(completion, "completion");
        InputImage inputImageFromBitmap = InputImage.fromBitmap(imageBitmap, 0);
        Intrinsics.checkNotNullExpressionValue(inputImageFromBitmap, "fromBitmap(...)");
        TextRecognizer client = TextRecognition.getClient(this.options);
        Intrinsics.checkNotNullExpressionValue(client, "getClient(...)");
        Task<Text> taskProcess = client.process(inputImageFromBitmap);
        final Function1 function1 = new Function1() { // from class: fast.dic.dict.utils.FDImageRecognizer$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FDImageRecognizer.runTextRecognition$lambda$0(this.f$0, completion, (Text) obj);
            }
        };
        taskProcess.addOnSuccessListener(new OnSuccessListener() { // from class: fast.dic.dict.utils.FDImageRecognizer$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                function1.invoke(obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: fast.dic.dict.utils.FDImageRecognizer$$ExternalSyntheticLambda3
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                FDImageRecognizer.runTextRecognition$lambda$2(exc);
            }
        });
    }

    static final Unit runTextRecognition$lambda$0(FDImageRecognizer fDImageRecognizer, Function2 function2, Text text) {
        Intrinsics.checkNotNull(text);
        fDImageRecognizer.processTextRecognitionTranslateResult(text, function2);
        return Unit.INSTANCE;
    }

    static final void runTextRecognition$lambda$2(Exception e) {
        Intrinsics.checkNotNullParameter(e, "e");
        e.printStackTrace();
    }

    private final void processTextRecognitionTranslateResult(Text texts, final Function2<? super List<String>, ? super List<? extends Text.TextBlock>, Unit> completion) {
        final List<Text.TextBlock> textBlocks = texts.getTextBlocks();
        Intrinsics.checkNotNullExpressionValue(textBlocks, "getTextBlocks(...)");
        FDOfflineTranslator.INSTANCE.translateAsync(textBlocks, new Function1() { // from class: fast.dic.dict.utils.FDImageRecognizer$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FDImageRecognizer.processTextRecognitionTranslateResult$lambda$0(completion, textBlocks, (List) obj);
            }
        });
    }

    static final Unit processTextRecognitionTranslateResult$lambda$0(Function2 function2, List list, List translates) {
        Intrinsics.checkNotNullParameter(translates, "translates");
        function2.invoke(translates, list);
        return Unit.INSTANCE;
    }
}
