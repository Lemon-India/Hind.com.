.class public Lms/bd/o/Pgl/s0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x9

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "34ae67"

    invoke-static/range {v1 .. v6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lms/bd/o/Pgl/s0;->a:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x36t
        0x22t
        0x2dt
        0x1ft
        0x8t
        0x6et
        0x33t
        0xft
        0x3ct
    .end array-data
.end method

.method public static a(Landroid/content/Context;)I
    .locals 14

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xff

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, "1a0248"

    :try_start_1
    new-array v13, v2, [B

    const/16 v7, 0x6f

    aput-byte v7, v13, v4

    invoke-static/range {v8 .. v13}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lms/bd/o/Pgl/s0;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x2

    goto :goto_0

    :catchall_0
    move-object p0, v3

    const/4 v5, 0x2

    goto :goto_3

    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    sget-object v7, Lms/bd/o/Pgl/s0;->a:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 v3, 0x1000

    :try_start_5
    new-array v8, v3, [B

    :goto_1
    invoke-virtual {p0, v8, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    invoke-virtual {v7, v8, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-gtz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move v0, v5

    :goto_2
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    :catchall_1
    move-object v3, v7

    goto :goto_3

    :catchall_2
    move-object p0, v3

    :catchall_3
    :goto_3
    const v6, 0x1000001

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "9e0a0a"

    const/4 v11, 0x4

    :try_start_7
    new-array v11, v11, [B

    const/16 v12, 0x29

    aput-byte v12, v11, v4

    const/16 v4, 0x64

    aput-byte v4, v11, v2

    const/16 v2, 0x7c

    aput-byte v2, v11, v1

    const/16 v1, 0x12

    aput-byte v1, v11, v0

    invoke-static/range {v6 .. v11}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-eqz p0, :cond_4

    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_4

    :catchall_4
    nop

    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    move-object v7, v3

    move v0, v5

    :catchall_5
    :goto_5
    :try_start_9
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move v5, v0

    :cond_5
    return v5

    :catchall_7
    move-exception v0

    if-eqz p0, :cond_6

    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_6

    :catchall_8
    nop

    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    :try_start_b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    :catchall_9
    :cond_7
    throw v0
.end method
