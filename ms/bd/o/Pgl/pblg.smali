.class final Lms/bd/o/Pgl/pblg;
.super Lms/bd/o/Pgl/pblb$pgla;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/pblb$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(IJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lms/bd/o/Pgl/pgla;->a()Lms/bd/o/Pgl/pgla;

    move-result-object p1

    invoke-virtual {p1}, Lms/bd/o/Pgl/pgla;->b()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const/4 p2, 0x1

    new-array v5, p2, [B

    const/16 p3, 0x3b

    const/4 p5, 0x0

    aput-byte p3, v5, p5

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "df24d3"

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, p2, [B

    const/16 p2, 0x69

    aput-byte p2, v5, p5

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "6af8e7"

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_0
    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_3

    aget-object v2, p3, v1

    invoke-virtual {v2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, p3, v1

    const/4 v3, 0x5

    new-array v9, v3, [B

    fill-array-data v9, :array_0

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "34dbd5"

    invoke-static/range {v4 .. v9}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v2, v5}, Lms/bd/o/Pgl/pblz;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_3

    :catch_0
    move-exception v3

    move-object v4, v5

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v4

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v5, v4

    :cond_1
    :goto_2
    invoke-static {v2}, Lms/bd/o/Pgl/pblz;->a(Ljava/io/Closeable;)V

    invoke-static {v5}, Lms/bd/o/Pgl/pblz;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_2
    move-exception p1

    :goto_3
    invoke-static {v2}, Lms/bd/o/Pgl/pblz;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lms/bd/o/Pgl/pblz;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-array p1, p5, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 1
        0x2ft
        0x25t
        0x12t
        0xet
        0x4ft
    .end array-data
.end method
