package fast.dic.dict.helpers;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.mlkit.common.model.DownloadConditions;
import com.google.mlkit.nl.translate.TranslateLanguage;
import com.google.mlkit.nl.translate.Translation;
import com.google.mlkit.nl.translate.Translator;
import com.google.mlkit.nl.translate.TranslatorOptions;
import com.google.mlkit.vision.text.Text;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import fast.dic.dict.providers.FDContentProvider;
import fast.dic.dict.utils.Category;
import fast.dic.dict.utils.FDCategory;
import fast.dic.dict.utils.LoggerKt;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: FDOfflineTranslator.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J>\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192&\u0010\u001a\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0012\f\u0012\n\u0018\u00010\u001cj\u0004\u0018\u0001`\u001d\u0012\u0004\u0012\u00020\u000b0\u001bj\u0002`\u001eJ\u001e\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0086@¢\u0006\u0002\u0010 J.\u0010\u0015\u001a\u00020\u000b2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0018\u0010\u001a\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\"\u0012\u0004\u0012\u00020\u000b0$R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lfast/dic/dict/helpers/FDOfflineTranslator;", "", "<init>", "()V", "enToPeOptions", "Lcom/google/mlkit/nl/translate/TranslatorOptions;", "peToEnOptions", "englishPersianTranslator", "Lcom/google/mlkit/nl/translate/Translator;", "persianEnglishTranslator", "downloadModelIfNeeded", "", "copyOfflineModel", Names.CONTEXT, "Landroid/content/Context;", "unzip", "zipFile", "Ljava/io/File;", FirebaseAnalytics.Param.LOCATION, "inStream", "Ljava/util/zip/ZipInputStream;", "translateAsync", "sentence", "", "language", "", "callback", "Lkotlin/Function2;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "Lfast/dic/dict/helpers/OfflineTranslatorCallback;", "translate", "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "blocks", "", "Lcom/google/mlkit/vision/text/Text$TextBlock;", "Lkotlin/Function1;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDOfflineTranslator {
    public static final FDOfflineTranslator INSTANCE = new FDOfflineTranslator();
    private static TranslatorOptions enToPeOptions;
    private static final Translator englishPersianTranslator;
    private static TranslatorOptions peToEnOptions;
    private static final Translator persianEnglishTranslator;

    /* JADX INFO: renamed from: fast.dic.dict.helpers.FDOfflineTranslator$translate$1, reason: invalid class name */
    /* JADX INFO: compiled from: FDOfflineTranslator.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.helpers.FDOfflineTranslator", f = "FDOfflineTranslator.kt", i = {0, 0, 0}, l = {162}, m = "translate", n = {"sentence", "task", "language"}, nl = {-1}, s = {"L$0", "L$1", "I$0"}, v = 2)
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FDOfflineTranslator.this.translate(null, 0, this);
        }
    }

    private FDOfflineTranslator() {
    }

    static {
        TranslatorOptions translatorOptionsBuild = new TranslatorOptions.Builder().setSourceLanguage(TranslateLanguage.ENGLISH).setTargetLanguage(TranslateLanguage.PERSIAN).build();
        Intrinsics.checkNotNullExpressionValue(translatorOptionsBuild, "build(...)");
        enToPeOptions = translatorOptionsBuild;
        TranslatorOptions translatorOptionsBuild2 = new TranslatorOptions.Builder().setSourceLanguage(TranslateLanguage.PERSIAN).setTargetLanguage(TranslateLanguage.ENGLISH).build();
        Intrinsics.checkNotNullExpressionValue(translatorOptionsBuild2, "build(...)");
        peToEnOptions = translatorOptionsBuild2;
        Translator client = Translation.getClient(enToPeOptions);
        Intrinsics.checkNotNullExpressionValue(client, "getClient(...)");
        englishPersianTranslator = client;
        Translator client2 = Translation.getClient(peToEnOptions);
        Intrinsics.checkNotNullExpressionValue(client2, "getClient(...)");
        persianEnglishTranslator = client2;
    }

    public final void downloadModelIfNeeded() {
        DownloadConditions downloadConditionsBuild = new DownloadConditions.Builder().build();
        Intrinsics.checkNotNullExpressionValue(downloadConditionsBuild, "build(...)");
        Task<Void> taskDownloadModelIfNeeded = englishPersianTranslator.downloadModelIfNeeded(downloadConditionsBuild);
        final Function1 function1 = new Function1() { // from class: fast.dic.dict.helpers.FDOfflineTranslator$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FDOfflineTranslator.downloadModelIfNeeded$lambda$0((Void) obj);
            }
        };
        taskDownloadModelIfNeeded.addOnSuccessListener(new OnSuccessListener() { // from class: fast.dic.dict.helpers.FDOfflineTranslator$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                function1.invoke(obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: fast.dic.dict.helpers.FDOfflineTranslator$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                FDOfflineTranslator.downloadModelIfNeeded$lambda$2(exc);
            }
        });
    }

    static final Unit downloadModelIfNeeded$lambda$0(Void r2) {
        LoggerKt.getLogger().debug("Offline translator model successfully downloaded.", new Object[0]);
        return Unit.INSTANCE;
    }

    static final void downloadModelIfNeeded$lambda$2(Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        LoggerKt.getLogger().error("Failed to download offline translator model. " + exception.getMessage(), new Object[0]);
    }

    public final void copyOfflineModel(Context context) throws IOException {
        Intrinsics.checkNotNullParameter(context, "context");
        File file = new File(context.getApplicationInfo().dataDir, "no_backup");
        File file2 = new File(new File(new File(file.getPath(), "com.google.mlkit.translate.models").getPath(), "en_fa").getPath(), "translate_enfa");
        if (file2.isDirectory() && file2.exists()) {
            LoggerKt.getLogger().debug("MLKit translator model is exists.", new Object[0]);
            return;
        }
        File file3 = new File(file.getPath(), "mlkit_translator_model.zip");
        FileOutputStream fileOutputStream = new FileOutputStream(file3);
        Context appContext = FDContentProvider.INSTANCE.getAppContext();
        if (appContext == null || appContext.getResources() == null) {
            return;
        }
        byte[] bArr = new byte[1024];
        Context appContext2 = FDContentProvider.INSTANCE.getAppContext();
        Resources resources = appContext2 != null ? appContext2.getResources() : null;
        Intrinsics.checkNotNull(resources);
        InputStream inputStreamOpenRawResource = resources.openRawResource(R.raw.mlkit_translator_model);
        Intrinsics.checkNotNullExpressionValue(inputStreamOpenRawResource, "openRawResource(...)");
        while (true) {
            int i = inputStreamOpenRawResource.read(bArr);
            if (i > 0) {
                fileOutputStream.write(bArr, 0, i);
            } else {
                inputStreamOpenRawResource.close();
                unzip(file3, file);
                return;
            }
        }
    }

    private final void unzip(File zipFile, File location) {
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(zipFile)));
            try {
                INSTANCE.unzip(zipInputStream, location);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(zipInputStream, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(zipInputStream, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            LoggerKt.getLogger().debug("Can not unzip model right now + " + e, new Object[0]);
            FirebaseCrashlytics.getInstance().log("Can not unzip model right now + " + e.getMessage());
        }
    }

    private final void unzip(ZipInputStream inStream, File location) {
        if (location.exists() && !location.isDirectory()) {
            throw new IllegalStateException("Location file must be directory or not exist");
        }
        if (!location.isDirectory()) {
            location.mkdirs();
        }
        String absolutePath = location.getAbsolutePath();
        Intrinsics.checkNotNull(absolutePath);
        String separator = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        if (!StringsKt.endsWith$default(absolutePath, separator, false, 2, (Object) null)) {
            absolutePath = absolutePath + File.separator;
        }
        while (true) {
            try {
                ZipEntry nextEntry = inStream.getNextEntry();
                if (nextEntry == null) {
                    return;
                }
                try {
                    Intrinsics.checkNotNull(nextEntry);
                    File file = new File(absolutePath + nextEntry.getName());
                    if (nextEntry.isDirectory()) {
                        if (!file.isDirectory()) {
                            file.mkdirs();
                        }
                    } else {
                        File parentFile = file.getParentFile();
                        if (parentFile != null && !parentFile.isDirectory()) {
                            parentFile.mkdirs();
                        }
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                        try {
                            Long.valueOf(ByteStreamsKt.copyTo$default(inStream, bufferedOutputStream, 0, 2, null));
                            CloseableKt.closeFinally(bufferedOutputStream, null);
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(bufferedOutputStream, th);
                                throw th2;
                            }
                        }
                    }
                } catch (Exception e) {
                    LoggerKt.getLogger().error("Unzip exception inner + " + e, new Object[0]);
                }
            } catch (Exception e2) {
                LoggerKt.getLogger().error("Unzip exception + " + e2, new Object[0]);
                return;
            }
        }
    }

    public final void translateAsync(String sentence, int language, final Function2<? super String, ? super Exception, Unit> callback) {
        Task<String> taskTranslate;
        Intrinsics.checkNotNullParameter(sentence, "sentence");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (language == Category.English.getRawValue()) {
            taskTranslate = englishPersianTranslator.translate(sentence);
        } else {
            taskTranslate = persianEnglishTranslator.translate(sentence);
        }
        Intrinsics.checkNotNull(taskTranslate);
        final Function1 function1 = new Function1() { // from class: fast.dic.dict.helpers.FDOfflineTranslator$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FDOfflineTranslator.translateAsync$lambda$0(callback, (String) obj);
            }
        };
        taskTranslate.addOnSuccessListener(new OnSuccessListener() { // from class: fast.dic.dict.helpers.FDOfflineTranslator$$ExternalSyntheticLambda4
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                function1.invoke(obj);
            }
        });
        taskTranslate.addOnFailureListener(new OnFailureListener() { // from class: fast.dic.dict.helpers.FDOfflineTranslator$$ExternalSyntheticLambda5
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                FDOfflineTranslator.translateAsync$lambda$2(callback, exc);
            }
        });
    }

    static final Unit translateAsync$lambda$0(Function2 function2, String str) {
        function2.invoke(str, null);
        return Unit.INSTANCE;
    }

    static final void translateAsync$lambda$2(Function2 function2, Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        function2.invoke(null, exception);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object translate(String str, int i, Continuation<? super String> continuation) {
        AnonymousClass1 anonymousClass1;
        Task<String> taskTranslate;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objAwait = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objAwait);
            if (i == Category.English.getRawValue()) {
                taskTranslate = englishPersianTranslator.translate(str);
            } else {
                taskTranslate = persianEnglishTranslator.translate(str);
            }
            Intrinsics.checkNotNull(taskTranslate);
            anonymousClass1.L$0 = SpillingKt.nullOutSpilledVariable(str);
            anonymousClass1.L$1 = SpillingKt.nullOutSpilledVariable(taskTranslate);
            anonymousClass1.I$0 = i;
            anonymousClass1.label = 1;
            objAwait = FDOfflineTranslatorKt.await(taskTranslate, anonymousClass1);
            if (objAwait == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i3 = anonymousClass1.I$0;
            ResultKt.throwOnFailure(objAwait);
        }
        Intrinsics.checkNotNullExpressionValue(objAwait, "await(...)");
        return objAwait;
    }

    public final void translateAsync(List<? extends Text.TextBlock> blocks, Function1<? super List<String>, Unit> callback) {
        Intrinsics.checkNotNullParameter(blocks, "blocks");
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new AnonymousClass3(blocks, callback, new FDCategory(), null), 3, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.helpers.FDOfflineTranslator$translateAsync$3, reason: invalid class name */
    /* JADX INFO: compiled from: FDOfflineTranslator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.helpers.FDOfflineTranslator$translateAsync$3", f = "FDOfflineTranslator.kt", i = {0}, l = {175}, m = "invokeSuspend", n = {"$this$launch"}, nl = {169}, s = {"L$0"}, v = 2)
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<Text.TextBlock> $blocks;
        final /* synthetic */ Function1<List<String>, Unit> $callback;
        final /* synthetic */ FDCategory $category;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(List<? extends Text.TextBlock> list, Function1<? super List<String>, Unit> function1, FDCategory fDCategory, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$blocks = list;
            this.$callback = function1;
            this.$category = fDCategory;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$blocks, this.$callback, this.$category, continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                List<Text.TextBlock> list = this.$blocks;
                FDCategory fDCategory = this.$category;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(BuildersKt__Builders_commonKt.async$default(coroutineScope, Dispatchers.getIO(), null, new FDOfflineTranslator$translateAsync$3$result$1$1((Text.TextBlock) it.next(), fDCategory, null), 2, null));
                }
                this.L$0 = SpillingKt.nullOutSpilledVariable(coroutineScope);
                this.label = 1;
                obj = AwaitKt.awaitAll(arrayList, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            this.$callback.invoke((List) obj);
            return Unit.INSTANCE;
        }
    }
}
