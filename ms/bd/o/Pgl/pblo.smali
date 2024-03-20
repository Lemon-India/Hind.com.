.class public abstract Lms/bd/o/Pgl/pblo;
.super Lms/bd/o/Pgl/pblb$pgla;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/pblb$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/16 v2, 0x1b

    new-array v8, v2, [B

    fill-array-data v8, :array_0

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "ce879f"

    invoke-static/range {v3 .. v8}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1
    :try_start_0
    invoke-static {}, Lms/bd/o/Pgl/pgla;->a()Lms/bd/o/Pgl/pgla;

    move-result-object v2

    invoke-virtual {v2}, Lms/bd/o/Pgl/pgla;->b()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v5, v1, v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_2

    :catchall_0
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 2
    invoke-super/range {p0 .. p6}, Lms/bd/o/Pgl/pblb$pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p6, [Ljava/lang/Object;

    aget-object p1, p6, v3

    check-cast p1, Ljava/lang/String;

    aget-object p2, p6, v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p5, p1, p2}, Lms/bd/o/Pgl/pblo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p6, [Ljava/lang/Object;

    aget-object p1, p6, v3

    check-cast p1, Ljava/lang/String;

    aget-object p2, p6, v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p5, p1, p2}, Lms/bd/o/Pgl/pblo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p6, [Ljava/lang/Object;

    aget-object p1, p6, v3

    check-cast p1, [B

    aget-object p2, p6, v0

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x2

    aget-object p3, p6, p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p5, p1, p2, p3}, Lms/bd/o/Pgl/pblo;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x73t
        0x69t
        0x4ft
        0x51t
        0x9t
        0x78t
        0x64t
        0xat
        0x79t
        0x62t
        0x60t
        0x6at
        0x42t
        0x50t
        0x15t
        0x78t
        0x6ft
        0x4at
        0x27t
        0x4et
        0x5ct
        0x53t
        0x6et
        0x71t
        0x28t
        0x54t
        0x54t
    .end array-data
.end method

.method protected a(Ljava/io/InputStream;)V
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x5

    new-array v5, p1, [B

    fill-array-data v5, :array_0

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "c3cb49"

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        0x7ft
        0x32t
        0x2ft
        0x15t
        0x2t
    .end array-data
.end method

.method protected a(Ljava/io/OutputStream;)V
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x5

    new-array v5, p1, [B

    fill-array-data v5, :array_0

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "cfc1d9"

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        0x7ft
        0x67t
        0x2ft
        0x46t
        0x54t
    .end array-data
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method public abstract a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
.end method
