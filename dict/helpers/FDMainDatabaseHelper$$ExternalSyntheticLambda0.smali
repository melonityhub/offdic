.class public final synthetic Lfast/dic/dict/helpers/FDMainDatabaseHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lnet/zetetic/database/DatabaseErrorHandler;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/helpers/FDMainDatabaseHelper;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/helpers/FDMainDatabaseHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    return-void
.end method


# virtual methods
.method public final onCorruption(Lnet/zetetic/database/sqlcipher/SQLiteDatabase;Landroid/database/sqlite/SQLiteException;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-static {p0, p1, p2}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->openSqlCipherDB$lambda$0(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;Landroid/database/sqlite/SQLiteException;)V

    return-void
.end method
