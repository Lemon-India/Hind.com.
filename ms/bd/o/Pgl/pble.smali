.class final Lms/bd/o/Pgl/pble;
.super Lms/bd/o/Pgl/pblb$pgla;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/pblb$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lms/bd/o/Pgl/pgla;->a()Lms/bd/o/Pgl/pgla;

    move-result-object p1

    invoke-virtual {p1}, Lms/bd/o/Pgl/pgla;->b()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const/4 p3, 0x7

    new-array v5, p3, [B

    fill-array-data v5, :array_0

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "304015"

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 1
        0x6ct
        0x3ft
        0x54t
        0x40t
        0xft
        0x36t
        0x31t
    .end array-data
.end method
