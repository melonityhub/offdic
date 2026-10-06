package fast.dic.dict.utils;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.AlertDialog;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import io.sentry.SentryEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDAlertManger.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J8\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J(\u0010\u0012\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0013\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0014\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0016\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\tJ\u000e\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011J\u0018\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J \u0010\u001d\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u001e\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011JL\u0010 \u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010!\u001a\u00020\t2\b\u0010\"\u001a\u0004\u0018\u00010\u000f2\b\u0010#\u001a\u0004\u0018\u00010\t2\b\u0010$\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011J\u0018\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020'2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u000e\u0010(\u001a\u00020)2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lfast/dic/dict/utils/FDAlertManger;", "", "<init>", "()V", SentryEvent.JsonKeys.LOGGER, "Lfast/dic/dict/utils/Logger;", "showAlert", "", "title", "", "message", "buttonText", "quit", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroid/content/DialogInterface$OnClickListener;", Names.CONTEXT, "Landroid/content/Context;", "showAlertWithOutForeCloseApp", "showNotConnectedToInternetAlert", "showAccountIsDeactivatedAlert", "showErrorForSpeechToTextAlert", "language", "showCafeBazaarNotInstalledErrorAlert", "showCouldNotRestorePurchaseAlert", "showNeverPurchasedAlert", "showCouldNotPurchaseAlert", "showErrorMessageAlert", "errorMessage", "showSimpleAlert", "showNoResponseFromServerAlert", "showServerHasProblemAlert", "showAlertWithOptions", "buttonText1", "listenerButton1", "buttonText2", "listenerButton2", "showAlertActivity", "alertDialog", "Landroidx/appcompat/app/AlertDialog;", "getAlertTheme", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDAlertManger {
    public static final FDAlertManger INSTANCE = new FDAlertManger();
    private static final Logger logger = Logger.INSTANCE.getLogger1();

    static final void showErrorForSpeechToTextAlert$lambda$0(DialogInterface dialogInterface, int i) {
    }

    private FDAlertManger() {
    }

    public final void showAlert(String title, String message, String buttonText, boolean quit, DialogInterface.OnClickListener listener, Context context) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        Intrinsics.checkNotNullParameter(context, "context");
        showAlertWithOptions(title, message, buttonText, listener, null, null, quit, context);
    }

    public final void showAlertWithOutForeCloseApp(String title, String message, String buttonText, Context context) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        if (context == null) {
            return;
        }
        showAlert(title, message, buttonText, false, null, context);
    }

    public final void showNotConnectedToInternetAlert(Context context) {
        if (context == null) {
            return;
        }
        String string = context.getString(R.string.error);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = context.getString(R.string.check_internet_connection);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = context.getString(R.string.close);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        showAlertWithOutForeCloseApp(string, string2, string3, context);
    }

    public final void showAccountIsDeactivatedAlert(Context context) {
        if (context == null) {
            return;
        }
        String string = context.getString(R.string.error);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = context.getString(R.string.your_account_is_deactivated);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = context.getString(R.string.close);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        showAlertWithOutForeCloseApp(string, string2, string3, context);
    }

    public final void showErrorForSpeechToTextAlert(final Context context, String language) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(language, "language");
        String string = context.getString(R.string.error);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = context.getString(R.string.error_not_found_speech_to_text_content, language);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = context.getString(R.string.close);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        showAlertWithOptions(string, string2, string3, new DialogInterface.OnClickListener() { // from class: fast.dic.dict.utils.FDAlertManger$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                FDAlertManger.showErrorForSpeechToTextAlert$lambda$0(dialogInterface, i);
            }
        }, context.getString(R.string.open_tts_setting), new DialogInterface.OnClickListener() { // from class: fast.dic.dict.utils.FDAlertManger$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                FDAlertManger.showErrorForSpeechToTextAlert$lambda$1(context, dialogInterface, i);
            }
        }, false, context);
    }

    static final void showErrorForSpeechToTextAlert$lambda$1(Context context, DialogInterface dialogInterface, int i) {
        Intent intent = new Intent();
        intent.setAction("com.android.settings.TTS_SETTINGS");
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    public final void showCafeBazaarNotInstalledErrorAlert(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String string = context.getString(R.string.error);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = context.getString(R.string.cafebazaar_app_not_installed);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = context.getString(R.string.close);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        showAlertWithOutForeCloseApp(string, string2, string3, context);
    }

    public final void showCouldNotRestorePurchaseAlert(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String string = context.getString(R.string.error);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = context.getString(R.string.error_restore_purchase);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = context.getString(R.string.close);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        showAlertWithOutForeCloseApp(string, string2, string3, context);
    }

    public final void showNeverPurchasedAlert(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String string = context.getString(R.string.information);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = context.getString(R.string.no_purchased_founded);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = context.getString(R.string.close);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        showAlertWithOutForeCloseApp(string, string2, string3, context);
    }

    public final void showCouldNotPurchaseAlert(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String string = context.getString(R.string.error);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = context.getString(R.string.unknown_error_in_purchase);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = context.getString(R.string.close);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        showAlertWithOutForeCloseApp(string, string2, string3, context);
    }

    public final void showErrorMessageAlert(String errorMessage, Context context) {
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        if (context == null) {
            return;
        }
        String string = context.getString(R.string.error);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = context.getString(R.string.close);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        showAlertWithOutForeCloseApp(string, errorMessage, string2, context);
    }

    public final void showSimpleAlert(String title, String message, Context context) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        if (context == null) {
            return;
        }
        String string = context.getString(R.string.cancelButtonTitle);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        showAlertWithOutForeCloseApp(title, message, string, context);
    }

    public final void showNoResponseFromServerAlert(Context context) {
        if (context == null) {
            return;
        }
        String string = context.getString(R.string.error);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = context.getString(R.string.no_response_from_server_retry_again);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = context.getString(R.string.close);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        showAlertWithOutForeCloseApp(string, string2, string3, context);
    }

    public final void showServerHasProblemAlert(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String string = context.getString(R.string.error);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = context.getString(R.string.server_has_problem_please_try_again);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = context.getString(R.string.close);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        showAlertWithOutForeCloseApp(string, string2, string3, context);
    }

    public final void showAlertWithOptions(String title, String message, String buttonText1, final DialogInterface.OnClickListener listenerButton1, String buttonText2, final DialogInterface.OnClickListener listenerButton2, final boolean quit, Context context) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(buttonText1, "buttonText1");
        Intrinsics.checkNotNullParameter(context, "context");
        AlertDialog.Builder builder = new AlertDialog.Builder(context, getAlertTheme(context));
        builder.setNegativeButton(buttonText1, new DialogInterface.OnClickListener() { // from class: fast.dic.dict.utils.FDAlertManger$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                FDAlertManger.showAlertWithOptions$lambda$0(quit, listenerButton1, dialogInterface, i);
            }
        });
        if (buttonText2 != null) {
            builder.setPositiveButton(buttonText2, new DialogInterface.OnClickListener() { // from class: fast.dic.dict.utils.FDAlertManger$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    FDAlertManger.showAlertWithOptions$lambda$1(listenerButton2, dialogInterface, i);
                }
            });
        }
        AlertDialog alertDialogCreate = builder.create();
        Intrinsics.checkNotNullExpressionValue(alertDialogCreate, "create(...)");
        try {
            Window window = alertDialogCreate.getWindow();
            Intrinsics.checkNotNull(window);
            window.getDecorView().setLayoutDirection(1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        alertDialogCreate.setTitle(title);
        alertDialogCreate.setMessage(message);
        showAlertActivity(alertDialogCreate, context);
    }

    static final void showAlertWithOptions$lambda$0(boolean z, DialogInterface.OnClickListener onClickListener, DialogInterface dialogInterface, int i) {
        if (z) {
            System.exit(0);
            throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
        }
        if (onClickListener != null) {
            onClickListener.onClick(dialogInterface, i);
        }
    }

    static final void showAlertWithOptions$lambda$1(DialogInterface.OnClickListener onClickListener, DialogInterface dialogInterface, int i) {
        if (onClickListener != null) {
            onClickListener.onClick(dialogInterface, i);
        }
    }

    private final void showAlertActivity(final AlertDialog alertDialog, final Context context) {
        Dispatch.INSTANCE.asyncOnMain(new Function0() { // from class: fast.dic.dict.utils.FDAlertManger$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FDAlertManger.showAlertActivity$lambda$0(context, alertDialog);
            }
        });
    }

    static final Unit showAlertActivity$lambda$0(Context context, AlertDialog alertDialog) {
        try {
            if (!(context instanceof Activity) || !((Activity) context).isFinishing()) {
                try {
                    alertDialog.show();
                } catch (WindowManager.BadTokenException e) {
                    logger.error("WindowManagerBad : " + e, new Object[0]);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return Unit.INSTANCE;
    }

    public final int getAlertTheme(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return ContextExtKt.isDarkThemeOn(context) ? android.R.style.Theme.DeviceDefault.Dialog.NoActionBar : android.R.style.Theme.DeviceDefault.Light.Dialog.NoActionBar;
    }
}
