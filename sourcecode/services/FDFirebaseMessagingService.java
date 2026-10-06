package fast.dic.dict.services;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.media.AudioAttributes;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableKt;
import androidx.core.graphics.drawable.IconCompat;
import androidx.work.Constraints;
import androidx.work.ListenableWorker;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.firebase.messaging.Constants;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.google.gson.Gson;
import com.yandex.div.core.dagger.Names;
import com.yandex.div.core.timer.TimerController;
import fast.dic.dict.R;
import fast.dic.dict.activities.MainActivity;
import fast.dic.dict.p000const.ConfigConstKt;
import fast.dic.dict.utils.Logger;
import fast.dic.dict.utils.Util;
import fast.dic.dict.workers.DownloadMediaWorker;
import io.sentry.SentryEvent;
import io.sentry.protocol.FeatureFlag;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: FDFirebaseMessagingService.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0007H\u0002¨\u0006\u0010"}, d2 = {"Lfast/dic/dict/services/FDFirebaseMessagingService;", "Lcom/google/firebase/messaging/FirebaseMessagingService;", "<init>", "()V", "onNewToken", "", "s", "", "onMessageReceived", "remoteMessage", "Lcom/google/firebase/messaging/RemoteMessage;", "scheduleJob", "handleNow", "sendRegistrationToParse", "token", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDFirebaseMessagingService extends FirebaseMessagingService {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Logger logger = Logger.INSTANCE.getLogger1();
    private static RemoteMessage remoteMessage;

    @JvmStatic
    public static final Notification getFloatingWindowsNotification(Context context) {
        return INSTANCE.getFloatingWindowsNotification(context);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String s) {
        Intrinsics.checkNotNullParameter(s, "s");
        super.onNewToken(s);
        Logger logger2 = logger;
        logger2.info("Got new refresh token.", new Object[0]);
        logger2.debug("Got new push token : %s", s);
        sendRegistrationToParse(s);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage2) {
        Intrinsics.checkNotNullParameter(remoteMessage2, "remoteMessage");
        super.onMessageReceived(remoteMessage2);
        remoteMessage = remoteMessage2;
        Logger logger2 = logger;
        logger2.info("Got FCM message from: %s", remoteMessage2.getFrom());
        Map<String, String> data = remoteMessage2.getData();
        Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
        if (!data.isEmpty()) {
            logger2.debug("Message data payload: %s", new Gson().toJson(data));
        }
        RemoteMessage.Notification notification = remoteMessage2.getNotification();
        if (notification != null) {
            logger2.debug("Message Notification Body: %s", notification.getBody());
            if (notification.getImageUrl() != null) {
                logger2.info("This is a rich notification and should be schedule to download media.", new Object[0]);
                scheduleJob();
            } else {
                logger2.info("This is a simple notification and it should be handled now.", new Object[0]);
                handleNow(remoteMessage2);
            }
        }
    }

    private final void scheduleJob() {
        WorkManager.INSTANCE.getInstance(this).beginWith(new OneTimeWorkRequest.Builder((Class<? extends ListenableWorker>) DownloadMediaWorker.class).setConstraints(new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build()).build()).enqueue();
    }

    private final void handleNow(RemoteMessage remoteMessage2) {
        Companion companion = INSTANCE;
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        companion.showNotification(remoteMessage2, applicationContext);
    }

    private final void sendRegistrationToParse(String token) {
        logger.debug("Ready to send push token (" + token + ") to server", new Object[0]);
    }

    /* JADX INFO: compiled from: FDFirebaseMessagingService.kt */
    @Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fJ6\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u001a\u0010\u001b\u001a\u00020\u00112\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u001a\u0010 \u001a\u00020\u00112\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\"\u0010!\u001a\u00020\u00112\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J(\u0010\"\u001a\u00020\u001f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020$2\u0006\u0010\u0016\u001a\u00020\u00132\u0006\u0010%\u001a\u00020&H\u0002J\u0012\u0010'\u001a\u00020$2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002JW\u0010(\u001a\u00020$2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010+\u001a\u0004\u0018\u00010,H\u0007b\u0010\b.\u0012\f\b/\u0012\b\b\fJ\u0004\b\b(0¢\u0006\u0002\u0010-J\u001a\u00101\u001a\u00020\u00112\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u001a\u00102\u001a\u00020\u00112\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u001a\u00103\u001a\u00020\u00112\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u001a\u00104\u001a\u00020\u00112\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u001a\u00105\u001a\u00020\u00112\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u001a\u00106\u001a\u00020\u00112\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0012\u00107\u001a\u00020\r2\b\u00108\u001a\u0004\u0018\u00010\u0013H\u0002J\u001a\u00109\u001a\u00020\u00112\b\u0010:\u001a\u0004\u0018\u00010\u001d2\u0006\u0010;\u001a\u00020\u001fH\u0002J\u001a\u0010<\u001a\u00020,2\b\u0010=\u001a\u0004\u0018\u00010\u00132\u0006\u0010>\u001a\u00020\u000fH\u0002J\u0018\u0010?\u001a\u00020,2\u0006\u0010@\u001a\u00020\u00132\u0006\u0010>\u001a\u00020\u000fH\u0002J\u0012\u0010A\u001a\u0004\u0018\u00010B2\u0006\u0010C\u001a\u00020\u0013H\u0002J\u0016\u0010D\u001a\u0004\u0018\u00010E2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007b\u0002\bFR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006G"}, d2 = {"Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;", "", "<init>", "()V", "remoteMessage", "Lcom/google/firebase/messaging/RemoteMessage;", "getRemoteMessage", "()Lcom/google/firebase/messaging/RemoteMessage;", "setRemoteMessage", "(Lcom/google/firebase/messaging/RemoteMessage;)V", SentryEvent.JsonKeys.LOGGER, "Lfast/dic/dict/utils/Logger;", "showNotification", "", Names.CONTEXT, "Landroid/content/Context;", "createNotificationChannel", "", "sound", "", "vibrateTimings", "", "channelId", "notificationManager", "Landroid/app/NotificationManager;", "isNotificationChannelExists", "Landroid/app/NotificationChannel;", "addBodyIfExists", "firebaseNotification", "Lcom/google/firebase/messaging/RemoteMessage$Notification;", "notificationBuilder", "Landroidx/core/app/NotificationCompat$Builder;", "addTitleIfExists", "addIconOrSmallIconIfExists", "createNotificationBuilder", BaseGmsClient.KEY_PENDING_INTENT, "Landroid/app/PendingIntent;", "defaultSoundUri", "Landroid/net/Uri;", "getMainActivityPendingIntent", "getPendingIntent", "extraKey", "extraValue", FeatureFlag.JsonKeys.FLAG, "", "(Lcom/google/firebase/messaging/RemoteMessage;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/app/PendingIntent;", "Landroid/annotation/SuppressLint;", "value", "UnspecifiedImmutableFlag", "addColorIfExists", "addSoundIfExists", "addChannelIdIfExists", "addVisibilityIfExists", "addVibrateIfExists", "addNotificationBigPictureOrBigTextStyle", "isSilentMessage", "body", "changeNotificationStyleToBigText", "notification", "builder", "getResourceIcon", "iconName", "ctx", "getDrawableId", "name", "getBitmapFromURL", "Landroid/graphics/Bitmap;", "strURL", "getFloatingWindowsNotification", "Landroid/app/Notification;", "Lkotlin/jvm/JvmStatic;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean isSilentMessage(String body) {
            return body == null;
        }

        private Companion() {
        }

        public final RemoteMessage getRemoteMessage() {
            return FDFirebaseMessagingService.remoteMessage;
        }

        public final void setRemoteMessage(RemoteMessage remoteMessage) {
            FDFirebaseMessagingService.remoteMessage = remoteMessage;
        }

        public final boolean showNotification(RemoteMessage remoteMessage, Context context) {
            NotificationCompat.Action action;
            NotificationCompat.Action action2;
            Intrinsics.checkNotNullParameter(remoteMessage, "remoteMessage");
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                RemoteMessage.Notification notification = remoteMessage.getNotification();
                Intrinsics.checkNotNull(notification);
                Map<String, String> data = remoteMessage.getData();
                Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
                NotificationCompat.Action action3 = null;
                if (data.isEmpty()) {
                    action = null;
                } else {
                    if (data.containsKey("buttonCancel")) {
                        PendingIntent pendingIntent$default = getPendingIntent$default(this, remoteMessage, context, TimerController.CANCEL_COMMAND, "true", null, 16, null);
                        String str = data.get("buttonCancel");
                        if (str == null) {
                            str = "بستن";
                        }
                        action2 = new NotificationCompat.Action((IconCompat) null, str, pendingIntent$default);
                    } else {
                        action2 = null;
                    }
                    if (data.containsKey("url")) {
                        PendingIntent pendingIntent$default2 = getPendingIntent$default(this, remoteMessage, context, "button", "true", null, 16, null);
                        String str2 = data.get("buttonView");
                        if (str2 == null) {
                            str2 = "باز کردن لینک";
                        }
                        action3 = action2;
                        action = new NotificationCompat.Action((IconCompat) null, str2, pendingIntent$default2);
                    } else {
                        action3 = action2;
                        action = null;
                    }
                }
                PendingIntent pendingIntent$default3 = getPendingIntent$default(this, remoteMessage, context, null, null, null, 28, null);
                String string = context.getString(R.string.default_notification_channel_id);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                Uri defaultUri = RingtoneManager.getDefaultUri(2);
                Intrinsics.checkNotNullExpressionValue(defaultUri, "getDefaultUri(...)");
                NotificationCompat.Builder builderCreateNotificationBuilder = createNotificationBuilder(context, pendingIntent$default3, string, defaultUri);
                if (action3 != null) {
                    builderCreateNotificationBuilder.addAction(action3);
                }
                if (action != null) {
                    builderCreateNotificationBuilder.addAction(action);
                }
                addIconOrSmallIconIfExists(notification, context, builderCreateNotificationBuilder);
                addTitleIfExists(notification, builderCreateNotificationBuilder);
                addBodyIfExists(notification, builderCreateNotificationBuilder);
                addColorIfExists(notification, builderCreateNotificationBuilder);
                addSoundIfExists(notification, builderCreateNotificationBuilder);
                addChannelIdIfExists(notification, builderCreateNotificationBuilder);
                addVisibilityIfExists(notification, builderCreateNotificationBuilder);
                addVibrateIfExists(notification, builderCreateNotificationBuilder);
                addNotificationBigPictureOrBigTextStyle(notification, builderCreateNotificationBuilder);
                Object systemService = context.getSystemService("notification");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
                NotificationManager notificationManager = (NotificationManager) systemService;
                createNotificationChannel(context, notification.getSound(), notification.getVibrateTimings(), string, notificationManager);
                if (isSilentMessage(notification.getBody())) {
                    FDFirebaseMessagingService.logger.info("It was silent notification and ignore showing notification.", new Object[0]);
                    return true;
                }
                notificationManager.notify(0, builderCreateNotificationBuilder.build());
                return true;
            } catch (Exception e) {
                FDFirebaseMessagingService.logger.error("For unknown reason error happening to show notification", e);
                e.printStackTrace();
                return false;
            }
        }

        private final void createNotificationChannel(Context context, String sound, long[] vibrateTimings, String channelId, NotificationManager notificationManager) {
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    NotificationChannel notificationChannelIsNotificationChannelExists = isNotificationChannelExists(channelId, notificationManager);
                    if (notificationChannelIsNotificationChannelExists == null) {
                        notificationChannelIsNotificationChannelExists = new NotificationChannel(channelId, context.getString(R.string.default_notification_channel_name), 4);
                    }
                    notificationChannelIsNotificationChannelExists.setImportance(4);
                    AudioAttributes.Builder builder = new AudioAttributes.Builder();
                    builder.setContentType(4);
                    builder.setUsage(5);
                    Uri defaultUri = RingtoneManager.getDefaultUri(2);
                    if (sound != null) {
                        defaultUri = Uri.parse("android.resource://" + context.getPackageName() + "/raw/" + sound);
                    }
                    notificationChannelIsNotificationChannelExists.setSound(defaultUri, builder.build());
                    if (vibrateTimings != null) {
                        if (!(vibrateTimings.length == 0)) {
                            notificationChannelIsNotificationChannelExists.enableVibration(true);
                            notificationChannelIsNotificationChannelExists.setVibrationPattern(vibrateTimings);
                        }
                    }
                    notificationManager.createNotificationChannel(notificationChannelIsNotificationChannelExists);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        private final NotificationChannel isNotificationChannelExists(String channelId, NotificationManager notificationManager) {
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    for (NotificationChannel notificationChannel : notificationManager.getNotificationChannels()) {
                        if (StringsKt.contains$default((CharSequence) notificationChannel.getName().toString(), (CharSequence) (channelId == null ? "" : channelId), false, 2, (Object) null)) {
                            return notificationChannel;
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        }

        private final void addBodyIfExists(RemoteMessage.Notification firebaseNotification, NotificationCompat.Builder notificationBuilder) {
            notificationBuilder.setContentText(firebaseNotification != null ? firebaseNotification.getBody() : null);
        }

        private final void addTitleIfExists(RemoteMessage.Notification firebaseNotification, NotificationCompat.Builder notificationBuilder) {
            notificationBuilder.setContentTitle(firebaseNotification != null ? firebaseNotification.getTitle() : null);
        }

        private final void addIconOrSmallIconIfExists(RemoteMessage.Notification firebaseNotification, Context context, NotificationCompat.Builder notificationBuilder) {
            if ((firebaseNotification != null ? firebaseNotification.getIcon() : null) != null) {
                String icon = firebaseNotification.getIcon();
                Intrinsics.checkNotNull(icon);
                if (Util.INSTANCE.isValidUrl(icon)) {
                    Bitmap bitmapFromURL = getBitmapFromURL(icon);
                    if (bitmapFromURL != null) {
                        notificationBuilder.setLargeIcon(bitmapFromURL);
                        return;
                    }
                    return;
                }
                int resourceIcon = getResourceIcon(icon, context);
                if (resourceIcon != 0) {
                    notificationBuilder.setSmallIcon(resourceIcon);
                }
            }
        }

        private final NotificationCompat.Builder createNotificationBuilder(Context context, PendingIntent pendingIntent, String channelId, Uri defaultSoundUri) {
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), R.mipmap.ic_launcher);
            if (bitmapDecodeResource == null) {
                Drawable drawable = ContextCompat.getDrawable(context, R.mipmap.ic_launcher);
                bitmapDecodeResource = drawable != null ? DrawableKt.toBitmap$default(drawable, 0, 0, null, 7, null) : null;
            }
            NotificationCompat.Builder priority = new NotificationCompat.Builder(context, channelId).setSmallIcon(R.drawable.ic_stat_ic_notification).setAutoCancel(true).setSound(defaultSoundUri).setContentIntent(pendingIntent).setLargeIcon(bitmapDecodeResource).setPriority(2);
            Intrinsics.checkNotNullExpressionValue(priority, "setPriority(...)");
            return priority;
        }

        private final PendingIntent getMainActivityPendingIntent(Context context) {
            return getPendingIntent$default(this, null, context, null, null, null, 28, null);
        }

        public static /* synthetic */ PendingIntent getPendingIntent$default(Companion companion, RemoteMessage remoteMessage, Context context, String str, String str2, Integer num, int i, Object obj) {
            if ((i & 4) != 0) {
                str = null;
            }
            if ((i & 8) != 0) {
                str2 = null;
            }
            if ((i & 16) != 0) {
                num = null;
            }
            return companion.getPendingIntent(remoteMessage, context, str, str2, num);
        }

        public final PendingIntent getPendingIntent(RemoteMessage remoteMessage, Context context, String extraKey, String extraValue, Integer flag) {
            Class cls;
            if (StringsKt.contentEquals((CharSequence) extraKey, (CharSequence) TimerController.CANCEL_COMMAND)) {
                cls = NotificationCancelActionService.class;
            } else {
                cls = MainActivity.class;
            }
            Intent intent = new Intent(context, (Class<?>) cls);
            intent.addFlags(67108864);
            intent.setAction(extraKey);
            if (remoteMessage != null) {
                Map<String, String> data = remoteMessage.getData();
                Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
                if (!data.isEmpty()) {
                    intent.putExtras(Util.INSTANCE.mapToBundle(data));
                }
                if (remoteMessage.getMessageId() != null) {
                    intent.putExtra(Constants.MessagePayloadKeys.MSGID, remoteMessage.getMessageId());
                }
                if (remoteMessage.getCollapseKey() != null) {
                    intent.putExtra(Constants.MessagePayloadKeys.COLLAPSE_KEY, remoteMessage.getCollapseKey());
                }
                intent.putExtra(Constants.MessagePayloadKeys.ORIGINAL_PRIORITY, remoteMessage.getPriority());
                if (extraKey != null) {
                    intent.putExtra(extraKey, extraValue);
                }
            }
            if (Intrinsics.areEqual(extraKey, TimerController.CANCEL_COMMAND)) {
                PendingIntent broadcast = PendingIntent.getBroadcast(context, Util.INSTANCE.getUniqueInt(), intent, flag != null ? flag.intValue() : 67108864);
                Intrinsics.checkNotNullExpressionValue(broadcast, "getBroadcast(...)");
                return broadcast;
            }
            PendingIntent activity = PendingIntent.getActivity(context, Util.INSTANCE.getUniqueInt(), intent, flag != null ? flag.intValue() : 67108864);
            Intrinsics.checkNotNull(activity);
            return activity;
        }

        private final void addColorIfExists(RemoteMessage.Notification firebaseNotification, NotificationCompat.Builder notificationBuilder) {
            if ((firebaseNotification != null ? firebaseNotification.getColor() : null) != null) {
                notificationBuilder.setColor(Color.parseColor(firebaseNotification.getColor()));
            }
        }

        private final void addSoundIfExists(RemoteMessage.Notification firebaseNotification, NotificationCompat.Builder notificationBuilder) {
            if ((firebaseNotification != null ? firebaseNotification.getSound() : null) != null) {
                notificationBuilder.setSound(Uri.parse(firebaseNotification.getSound()));
            }
        }

        private final void addChannelIdIfExists(RemoteMessage.Notification firebaseNotification, NotificationCompat.Builder notificationBuilder) {
            if ((firebaseNotification != null ? firebaseNotification.getChannelId() : null) != null) {
                String channelId = firebaseNotification.getChannelId();
                Intrinsics.checkNotNull(channelId);
                notificationBuilder.setChannelId(channelId);
            }
        }

        private final void addVisibilityIfExists(RemoteMessage.Notification firebaseNotification, NotificationCompat.Builder notificationBuilder) {
            if ((firebaseNotification != null ? firebaseNotification.getVisibility() : null) != null) {
                Integer visibility = firebaseNotification.getVisibility();
                Intrinsics.checkNotNull(visibility);
                notificationBuilder.setVisibility(visibility.intValue());
            }
        }

        private final void addVibrateIfExists(RemoteMessage.Notification firebaseNotification, NotificationCompat.Builder notificationBuilder) {
            if ((firebaseNotification != null ? firebaseNotification.getVibrateTimings() : null) != null) {
                notificationBuilder.setVibrate(firebaseNotification.getVibrateTimings());
            }
        }

        private final void addNotificationBigPictureOrBigTextStyle(RemoteMessage.Notification firebaseNotification, NotificationCompat.Builder notificationBuilder) {
            if ((firebaseNotification != null ? firebaseNotification.getImageUrl() : null) != null) {
                Bitmap bitmapFromURL = getBitmapFromURL(String.valueOf(firebaseNotification.getImageUrl()));
                if (bitmapFromURL != null) {
                    NotificationCompat.BigPictureStyle bigPictureStyleBigPicture = new NotificationCompat.BigPictureStyle().bigPicture(bitmapFromURL);
                    Intrinsics.checkNotNullExpressionValue(bigPictureStyleBigPicture, "bigPicture(...)");
                    if (firebaseNotification.getTitle() != null) {
                        bigPictureStyleBigPicture.setBigContentTitle(firebaseNotification.getTitle());
                    }
                    if (firebaseNotification.getBody() != null) {
                        bigPictureStyleBigPicture.setSummaryText(firebaseNotification.getBody());
                    }
                    notificationBuilder.setStyle(bigPictureStyleBigPicture);
                    return;
                }
                return;
            }
            changeNotificationStyleToBigText(firebaseNotification, notificationBuilder);
        }

        private final void changeNotificationStyleToBigText(RemoteMessage.Notification notification, NotificationCompat.Builder builder) {
            String body;
            if (notification != null) {
                try {
                    body = notification.getBody();
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            } else {
                body = null;
            }
            String title = notification != null ? notification.getTitle() : null;
            NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle();
            if (body != null) {
                bigTextStyle.bigText(body);
            }
            if (title != null) {
                bigTextStyle.setBigContentTitle(title);
            }
            builder.setStyle(bigTextStyle);
            builder.setPriority(2);
        }

        private final int getDrawableId(String name, Context ctx) {
            String packageName;
            Resources resources = ctx.getResources();
            if (resources == null || (packageName = ctx.getPackageName()) == null) {
                return 0;
            }
            return resources.getIdentifier(name, "drawable", packageName);
        }

        private final Bitmap getBitmapFromURL(String strURL) {
            try {
                if (!Util.INSTANCE.isValidUrl(strURL)) {
                    return null;
                }
                FDFirebaseMessagingService.logger.verbose("Start downloading media.", new Object[0]);
                URLConnection uRLConnectionOpenConnection = new URL(strURL).openConnection();
                Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                InputStream inputStream = httpURLConnection.getInputStream();
                FDFirebaseMessagingService.logger.verbose("Media downloaded successfully.", new Object[0]);
                return BitmapFactory.decodeStream(inputStream);
            } catch (IOException e) {
                FDFirebaseMessagingService.logger.error("Fail to download media. Error : %s", e);
                e.printStackTrace();
                return null;
            }
        }

        @JvmStatic
        public final Notification getFloatingWindowsNotification(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            PendingIntent mainActivityPendingIntent = getMainActivityPendingIntent(context);
            if (Build.VERSION.SDK_INT < 26) {
                return null;
            }
            NotificationChannel notificationChannel = new NotificationChannel(ConfigConstKt.FLOATING_WINDOWS_CHANNEL_ID, "Floating windows", 3);
            String string = context.getResources().getString(R.string.app_name_pe);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = context.getResources().getString(R.string.floating_window_notification_text);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            Object systemService = context.getSystemService("notification");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
            ((NotificationManager) systemService).createNotificationChannel(notificationChannel);
            return new NotificationCompat.Builder(context, ConfigConstKt.FLOATING_WINDOWS_CHANNEL_ID).setContentText(string2).setContentTitle(string).setStyle(new NotificationCompat.BigTextStyle()).setSmallIcon(R.drawable.ic_stat_ic_notification).setColor(ContextCompat.getColor(context, R.color.fdPrimary)).setContentIntent(mainActivityPendingIntent).setOnlyAlertOnce(true).setOngoing(true).setAutoCancel(true).build();
        }

        private final int getResourceIcon(String iconName, Context ctx) {
            int drawableId;
            if (iconName == null) {
                return 0;
            }
            String str = iconName;
            int length = str.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = str.charAt(!z ? i : length) <= ' ';
                if (z) {
                    if (!z2) {
                        break;
                    }
                    length--;
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            String string = str.subSequence(i, length + 1).toString();
            if (Util.INSTANCE.isValidResourceName(string) && (drawableId = getDrawableId(string, ctx)) != 0) {
                return drawableId;
            }
            return 0;
        }
    }
}
