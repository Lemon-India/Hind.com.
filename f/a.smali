.class public abstract Lf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Self:",
        "Lf/a<",
        "TSelf;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Lf/d;

.field public final b:Ljava/lang/String;

.field public c:Lf/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c<",
            "TSelf;>;"
        }
    .end annotation
.end field

.field public d:Lf/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/b<",
            "TSelf;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lf/a;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lf/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a;->a:Lf/d;

    iput-object p2, p0, Lf/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lf/a;)V
    .locals 0

    invoke-virtual {p0}, Lf/a;->a()V

    return-void
.end method


# virtual methods
.method public a(Lf/b;)Lf/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/b<",
            "TSelf;>;)TSelf;"
        }
    .end annotation

    iput-object p1, p0, Lf/a;->d:Lf/b;

    invoke-virtual {p0}, Lf/a;->d()Lf/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lf/c;)Lf/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c<",
            "TSelf;>;)TSelf;"
        }
    .end annotation

    iput-object p1, p0, Lf/a;->c:Lf/c;

    invoke-virtual {p0}, Lf/a;->d()Lf/a;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lf/a;->e()[B

    move-result-object v0

    iget-object v1, p0, Lf/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lf/a;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {p0}, Lf/a;->b()V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;[B)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v1, p0, Lf/a;->a:Lf/d;

    invoke-virtual {v1, p1}, Lf/d;->a(Ljava/net/URLConnection;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const v1, 0x9c40

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p0, p1}, Lf/a;->c(Ljava/net/URLConnection;)V

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1, p2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1}, La/a;->a(Ljava/io/Flushable;)V

    invoke-static {v1}, La/a;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p2

    :goto_0
    invoke-static {v0}, La/a;->a(Ljava/io/Flushable;)V

    invoke-static {v0}, La/a;->a(Ljava/io/Closeable;)V

    throw p2

    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lf/a;->b(Ljava/net/URLConnection;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_3

    const/16 v1, 0x131

    if-eq v0, v1, :cond_1

    const/16 v1, 0x133

    if-eq v0, v1, :cond_1

    const/16 v1, 0x134

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :cond_1
    :pswitch_0
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0, p2}, Lf/a;->a(Ljava/lang/String;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {p0, p1}, Lf/a;->a(Ljava/net/URLConnection;)V

    return-void

    :cond_2
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Lf/a;->b()V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lf/a;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {p0, p1}, Lf/a;->a(Ljava/net/URLConnection;)V

    return-void

    :catchall_2
    move-object v0, p1

    :catchall_3
    :try_start_6
    invoke-virtual {p0}, Lf/a;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object p1, v0

    :goto_3
    invoke-virtual {p0, p1}, Lf/a;->a(Ljava/net/URLConnection;)V

    return-void

    :catchall_4
    move-exception p1

    invoke-virtual {p0, v0}, Lf/a;->a(Ljava/net/URLConnection;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/net/URLConnection;)V
    .locals 1

    :try_start_0
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final b(Ljava/net/URLConnection;)I
    .locals 1

    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lf/a;->d:Lf/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf/a;->d()Lf/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/b;->b(Lf/a;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lf/a;->c:Lf/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf/a;->d()Lf/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/c;->a(Lf/a;)V

    :cond_0
    return-void
.end method

.method public abstract c(Ljava/net/URLConnection;)V
.end method

.method public abstract d()Lf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSelf;"
        }
    .end annotation
.end method

.method public abstract e()[B
.end method

.method public f()Lf/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSelf;"
        }
    .end annotation

    sget-object v0, Lf/a;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lf/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lf/a$b;-><init>(Lf/a;Lf/a$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lf/a;->d()Lf/a;

    move-result-object v0

    return-object v0
.end method
