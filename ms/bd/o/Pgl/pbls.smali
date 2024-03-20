.class public Lms/bd/o/Pgl/pbls;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lms/bd/o/Pgl/pblu$pgla;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lms/bd/o/Pgl/pbls$pgla;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lms/bd/o/Pgl/pblv;)Lms/bd/o/Pgl/pbls$pgla;
    .locals 16

    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p1}, Lms/bd/o/Pgl/pbls;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_6

    aget-object v6, v1, v4

    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v8, v7, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-ge v7, v9, :cond_0

    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11, v10}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v7, v8

    goto :goto_1

    :cond_0
    move-object v7, v5

    :goto_2
    if-nez v7, :cond_1

    move-object/from16 v13, p3

    goto :goto_5

    :cond_1
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v11, v8, 0x1

    if-ge v8, v9, :cond_5

    array-length v8, v0

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v8, :cond_4

    aget-object v13, v0, v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "lib"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v15, Ljava/io/File;->separatorChar:C

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v13, Ljava/io/File;->separatorChar:C

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v13, p3

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v14, v15, v3

    aput-object v6, v15, v10

    if-eqz p4, :cond_3

    .line 1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Looking for %s in APK %s..."

    invoke-static {v3, v9, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-virtual {v7, v14}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v0, Lms/bd/o/Pgl/pbls$pgla;

    invoke-direct {v0, v7, v3}, Lms/bd/o/Pgl/pbls$pgla;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-object v0

    :cond_2
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x5

    goto :goto_4

    .line 3
    :cond_3
    throw v5

    :cond_4
    move-object/from16 v13, p3

    move v8, v11

    goto :goto_3

    :cond_5
    move-object/from16 v13, p3

    .line 4
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_5
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    return-object v5
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    array-length v3, v0

    add-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object p1, v3, v1

    array-length p1, v0

    invoke-static {v0, v1, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object p1, v0, v1

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "([^\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "]*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1}, Lms/bd/o/Pgl/pbls;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v5, v6, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v2, v5

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lms/bd/o/Pgl/pblv;)V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p5}, Lms/bd/o/Pgl/pbls;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lms/bd/o/Pgl/pblv;)Lms/bd/o/Pgl/pbls$pgla;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p5, :cond_6

    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p2, p1, 0x1

    const/4 v3, 0x5

    if-ge p1, v3, :cond_4

    const-string p1, "Found %s! Extracting..."

    :try_start_1
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p3, v3, v2

    .line 5
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 6
    :try_start_2
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p4}, Ljava/io/File;->createNewFile()Z

    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    :try_start_3
    iget-object p1, p5, Lms/bd/o/Pgl/pbls$pgla;->a:Ljava/util/zip/ZipFile;

    iget-object v3, p5, Lms/bd/o/Pgl/pbls$pgla;->b:Ljava/util/zip/ZipEntry;

    invoke-virtual {p1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/16 v4, 0x0

    const/16 v6, 0x1000

    :try_start_5
    new-array v6, v6, [B

    .line 7
    :goto_1
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v6
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_3

    :cond_1
    :try_start_6
    invoke-direct {p0, p1}, Lms/bd/o/Pgl/pbls;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v3}, Lms/bd/o/Pgl/pbls;->a(Ljava/io/Closeable;)V

    invoke-virtual {p4, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p4, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p4, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iget-object p1, p5, Lms/bd/o/Pgl/pbls$pgla;->a:Ljava/util/zip/ZipFile;

    if-eqz p1, :cond_2

    iget-object p1, p5, Lms/bd/o/Pgl/pbls$pgla;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    :cond_2
    return-void

    .line 9
    :cond_3
    :try_start_8
    invoke-virtual {v3, v6, v2, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    int-to-long v7, v7

    add-long/2addr v4, v7

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v0, v3

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    .line 10
    :goto_2
    :try_start_9
    invoke-direct {p0, p1}, Lms/bd/o/Pgl/pbls;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v0}, Lms/bd/o/Pgl/pbls;->a(Ljava/io/Closeable;)V

    throw p2

    :catch_1
    move-object p1, v0

    :catch_2
    move-object v3, v0

    .line 8
    :catch_3
    :goto_3
    invoke-direct {p0, p1}, Lms/bd/o/Pgl/pbls;->a(Ljava/io/Closeable;)V

    .line 10
    invoke-direct {p0, v3}, Lms/bd/o/Pgl/pbls;->a(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catch_4
    :goto_4
    move p1, p2

    goto/16 :goto_0

    :cond_4
    :try_start_a
    iget-object p1, p5, Lms/bd/o/Pgl/pbls$pgla;->a:Ljava/util/zip/ZipFile;

    if-eqz p1, :cond_5

    iget-object p1, p5, Lms/bd/o/Pgl/pbls$pgla;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    :cond_5
    return-void

    :cond_6
    :try_start_b
    invoke-direct {p0, p1, p3}, Lms/bd/o/Pgl/pbls;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    move-object v0, p5

    goto :goto_6

    :catch_6
    move-exception p1

    :try_start_c
    new-array p4, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v2

    move-object p1, p4

    :goto_5
    new-instance p4, Lms/bd/o/Pgl/pblt;

    invoke-direct {p4, p3, p2, p1}, Lms/bd/o/Pgl/pblt;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    throw p4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_4
    move-exception p1

    :goto_6
    if-eqz v0, :cond_7

    :try_start_d
    iget-object p2, v0, Lms/bd/o/Pgl/pbls$pgla;->a:Ljava/util/zip/ZipFile;

    if-eqz p2, :cond_7

    iget-object p2, v0, Lms/bd/o/Pgl/pbls$pgla;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :catch_7
    :cond_7
    throw p1
.end method
