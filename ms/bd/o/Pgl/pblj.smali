.class public final Lms/bd/o/Pgl/pblj;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()V
    .locals 2

    .line 1
    new-instance v0, Lms/bd/o/Pgl/pblc;

    invoke-direct {v0}, Lms/bd/o/Pgl/pblc;-><init>()V

    const v1, 0x10001

    invoke-static {v1, v0}, Lms/bd/o/Pgl/pblb;->a(ILms/bd/o/Pgl/pblb$pgla;)V

    new-instance v0, Lms/bd/o/Pgl/pbld;

    invoke-direct {v0}, Lms/bd/o/Pgl/pbld;-><init>()V

    const v1, 0x10002

    invoke-static {v1, v0}, Lms/bd/o/Pgl/pblb;->a(ILms/bd/o/Pgl/pblb$pgla;)V

    new-instance v0, Lms/bd/o/Pgl/pble;

    invoke-direct {v0}, Lms/bd/o/Pgl/pble;-><init>()V

    const v1, 0x10003

    invoke-static {v1, v0}, Lms/bd/o/Pgl/pblb;->a(ILms/bd/o/Pgl/pblb$pgla;)V

    new-instance v0, Lms/bd/o/Pgl/pblf;

    invoke-direct {v0}, Lms/bd/o/Pgl/pblf;-><init>()V

    const v1, 0x10004

    invoke-static {v1, v0}, Lms/bd/o/Pgl/pblb;->a(ILms/bd/o/Pgl/pblb$pgla;)V

    new-instance v0, Lms/bd/o/Pgl/pblg;

    invoke-direct {v0}, Lms/bd/o/Pgl/pblg;-><init>()V

    const v1, 0x10005

    invoke-static {v1, v0}, Lms/bd/o/Pgl/pblb;->a(ILms/bd/o/Pgl/pblb$pgla;)V

    new-instance v0, Lms/bd/o/Pgl/pblh;

    invoke-direct {v0}, Lms/bd/o/Pgl/pblh;-><init>()V

    const v1, 0x10006

    invoke-static {v1, v0}, Lms/bd/o/Pgl/pblb;->a(ILms/bd/o/Pgl/pblb$pgla;)V

    new-instance v0, Lms/bd/o/Pgl/pbli;

    invoke-direct {v0}, Lms/bd/o/Pgl/pbli;-><init>()V

    const v1, 0x10007

    invoke-static {v1, v0}, Lms/bd/o/Pgl/pblb;->a(ILms/bd/o/Pgl/pblb$pgla;)V

    .line 2
    invoke-static {}, Lms/bd/o/Pgl/pbly;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lms/bd/o/Pgl/pbla;

    invoke-direct {v0}, Lms/bd/o/Pgl/pbla;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lms/bd/o/Pgl/pblp;

    invoke-direct {v0}, Lms/bd/o/Pgl/pblp;-><init>()V

    :goto_0
    const v1, 0x30001

    invoke-static {v1, v0}, Lms/bd/o/Pgl/pblb;->a(ILms/bd/o/Pgl/pblb$pgla;)V

    const v1, 0x30002

    invoke-static {v1, v0}, Lms/bd/o/Pgl/pblb;->a(ILms/bd/o/Pgl/pblb$pgla;)V

    const v1, 0x30003

    invoke-static {v1, v0}, Lms/bd/o/Pgl/pblb;->a(ILms/bd/o/Pgl/pblb$pgla;)V

    .line 3
    invoke-static {}, Lms/bd/o/Pgl/pbly;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lms/bd/o/Pgl/pbln;

    invoke-direct {v0}, Lms/bd/o/Pgl/pbln;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Lms/bd/o/Pgl/pbll;

    invoke-direct {v0}, Lms/bd/o/Pgl/pbll;-><init>()V

    :goto_1
    invoke-static {v0}, Lms/bd/o/Pgl/pblm;->a(Lms/bd/o/Pgl/pblm;)V

    const v1, 0x20001

    invoke-static {v1, v0}, Lms/bd/o/Pgl/pblb;->a(ILms/bd/o/Pgl/pblb$pgla;)V

    const v1, 0x20002

    invoke-static {v1, v0}, Lms/bd/o/Pgl/pblb;->a(ILms/bd/o/Pgl/pblb$pgla;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lms/bd/o/Pgl/pblj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v9, 0x1000001

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-string v13, "706181"

    :try_start_1
    new-array v14, v2, [B

    const/16 v15, 0x69

    aput-byte v15, v14, v3

    invoke-static/range {v9 .. v14}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const v10, 0x1000001

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-string v14, "f9c19e"

    :try_start_2
    new-array v15, v2, [B

    const/16 v16, 0x38

    aput-byte v16, v15, v3

    invoke-static/range {v10 .. v15}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, p0

    invoke-static {v9, v8, v7}, Lms/bd/o/Pgl/pblj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-static {v1}, Lms/bd/o/Pgl/pblz;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lms/bd/o/Pgl/pblz;->a(Ljava/io/Closeable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 v0, 0x3

    new-array v9, v0, [B

    fill-array-data v9, :array_0

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "ab003d"

    invoke-static/range {v4 .. v9}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    :cond_1
    return v2

    :array_0
    .array-data 1
        0x73t
        0x61t
        0x45t
    .end array-data
.end method
