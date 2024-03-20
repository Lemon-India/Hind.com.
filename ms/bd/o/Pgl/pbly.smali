.class public final Lms/bd/o/Pgl/pbly;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lms/bd/o/Pgl/pbly$pblb;,
        Lms/bd/o/Pgl/pbly$pgla;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "08e350"

    const/4 v8, 0x1

    :try_start_1
    new-array v8, v8, [B

    const/4 v9, 0x0

    const/16 v10, 0x33

    aput-byte v10, v8, v9

    invoke-static/range {v3 .. v8}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-static {p0}, Lms/bd/o/Pgl/pbly;->a(Ljava/nio/channels/FileChannel;)Lms/bd/o/Pgl/pbly$pgla;

    move-result-object p0

    invoke-virtual {p0}, Lms/bd/o/Pgl/pbly$pgla;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lms/bd/o/Pgl/pbly;->a(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    check-cast p0, Ljava/util/LinkedHashMap;

    :try_start_3
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catchall_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const v4, 0x7109871a

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    :try_start_4
    new-instance v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v6, v4

    invoke-static {v5, v7, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 2
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_1
    move-object v1, v2

    goto :goto_1

    :catchall_2
    nop

    :goto_1
    if-eqz v1, :cond_5

    move-object v2, v1

    :cond_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    :cond_5
    return-object v0
.end method

.method public static a(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lms/bd/o/Pgl/pbly$pblb;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_8

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    const/16 v1, 0x8

    if-lt v0, v1, :cond_7

    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-gt v0, v4, :cond_6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lt v4, v1, :cond_4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v8, v4, v6

    if-ltz v8, :cond_3

    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    if-gtz v8, :cond_3

    long-to-int v5, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-gt v5, v6, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/lit8 v5, v5, -0x4

    if-ltz v5, :cond_1

    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v5, v8

    if-lt v5, v8, :cond_0

    if-gt v5, v7, :cond_0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 12
    invoke-virtual {p0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 13
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw p0

    :cond_0
    new-instance p0, Ljava/nio/BufferUnderflowException;

    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v9, v2, [B

    const/16 v0, 0x75

    aput-byte v0, v9, v3

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "6cd68d"

    invoke-static/range {v4 .. v9}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    new-instance p0, Lms/bd/o/Pgl/pbly$pblb;

    new-array v9, v2, [B

    const/16 v0, 0x70

    aput-byte v0, v9, v3

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "92323c"

    invoke-static/range {v4 .. v9}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lms/bd/o/Pgl/pbly$pblb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lms/bd/o/Pgl/pbly$pblb;

    new-array v9, v2, [B

    const/16 v0, 0x74

    aput-byte v0, v9, v3

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "2077c1"

    invoke-static/range {v4 .. v9}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lms/bd/o/Pgl/pbly$pblb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lms/bd/o/Pgl/pbly$pblb;

    new-array v9, v2, [B

    const/16 v0, 0x21

    aput-byte v0, v9, v3

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "f010cb"

    invoke-static/range {v4 .. v9}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lms/bd/o/Pgl/pbly$pblb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object p0

    :catchall_1
    move-exception v0

    .line 15
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v9, v2, [B

    const/16 v0, 0x26

    aput-byte v0, v9, v3

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "b22f95"

    invoke-static/range {v4 .. v9}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v9, v2, [B

    const/16 v0, 0x71

    aput-byte v0, v9, v3

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "4c1075"

    invoke-static/range {v4 .. v9}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v9, v2, [B

    const/16 v0, 0x22

    aput-byte v0, v9, v3

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "bdd237"

    invoke-static/range {v4 .. v9}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/nio/channels/FileChannel;)Lms/bd/o/Pgl/pbly$pgla;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            ")",
            "Lms/bd/o/Pgl/pbly$pgla<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lms/bd/o/Pgl/pbly$pblb;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    const/4 v4, 0x2

    cmp-long v5, v0, v2

    if-ltz v5, :cond_8

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    int-to-long v7, v6

    cmp-long v9, v7, v2

    if-gtz v9, :cond_7

    sub-long v7, v0, v7

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {p0, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v10}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    const v11, 0x6054b50

    if-ne v10, v11, :cond_6

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    const-wide/16 v11, 0x14

    add-long/2addr v7, v11

    invoke-virtual {p0, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v10}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    if-ne v7, v6, :cond_6

    int-to-long v0, v7

    .line 4
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x6

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x20

    cmp-long v4, v0, v2

    if-ltz v4, :cond_5

    const-wide/16 v2, 0x18

    sub-long v2, v0, v2

    .line 5
    invoke-virtual {p0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v3

    const-wide v6, 0x20676953204b5041L

    cmp-long v8, v3, v6

    if-nez v8, :cond_4

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v3

    const-wide v6, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v8, v3, v6

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v3, v6

    if-ltz v2, :cond_4

    const-wide/32 v6, 0x7ffffff7

    cmp-long v2, v3, v6

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x8

    add-long/2addr v6, v3

    long-to-int v2, v6

    int-to-long v6, v2

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-gez v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v2, p0}, Lms/bd/o/Pgl/pbly$pgla;->a(Ljava/lang/Object;Ljava/lang/Object;)Lms/bd/o/Pgl/pbly$pgla;

    move-result-object p0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0

    :cond_5
    new-instance p0, Lms/bd/o/Pgl/pbly$pblb;

    const/4 v0, 0x1

    new-array v11, v0, [B

    const/16 v0, 0x2d

    aput-byte v0, v11, v5

    const v6, 0x1000001

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "e293c7"

    invoke-static/range {v6 .. v11}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lms/bd/o/Pgl/pbly$pblb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 6
    :cond_7
    new-instance p0, Ljava/io/IOException;

    new-array v10, v4, [B

    fill-array-data v10, :array_0

    const v5, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "459084"

    invoke-static/range {v5 .. v10}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/io/IOException;

    new-array v10, v4, [B

    fill-array-data v10, :array_1

    const v5, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "e8ff44"

    invoke-static/range {v5 .. v10}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 1
        0x74t
        0x67t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x25t
        0x6bt
    .end array-data
.end method

.method public static a()Z
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x39

    new-array v7, v1, [B

    fill-array-data v7, :array_0

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-string v6, "c726d2"

    invoke-static/range {v2 .. v7}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lms/bd/o/Pgl/pbly;->a([Ljava/lang/String;)Z

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x71t
        0x3at
        0x4ct
        0xct
        0x59t
        0x3ct
        0x74t
        0x13t
        0x67t
        0x67t
        0x7ct
        0x36t
        0x44t
        0xct
        0x5dt
        0x37t
        0x61t
        0x1bt
        0x74t
        0x69t
        0x60t
        0x3et
        0xft
        0x41t
        0x54t
        0x37t
        0x65t
        0x58t
        0x70t
        0x62t
        0x79t
        0x38t
        0x4et
        0x4ct
        0x52t
        0x31t
        0x6ft
        0x4t
        0x2dt
        0x56t
        0x75t
        0x39t
        0x72t
        0x66t
        0x70t
        0x8t
        0x6ft
        0x18t
        0x6at
        0x72t
        0x7dt
        0x27t
        0x74t
        0x56t
        0x52t
        0x29t
        0x73t
    .end array-data
.end method

.method private static varargs a([Ljava/lang/String;)Z
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v5, p0, v3

    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    goto :goto_1

    :catchall_0
    const/4 v5, 0x0

    :goto_1
    and-int/2addr v4, v5

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    return v4
.end method

.method public static b()Z
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x20

    new-array v7, v1, [B

    fill-array-data v7, :array_0

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-string v6, "849b5b"

    invoke-static/range {v2 .. v7}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lms/bd/o/Pgl/pbly;->a([Ljava/lang/String;)Z

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x2at
        0x39t
        0x47t
        0x58t
        0x8t
        0x6ct
        0x2ft
        0x10t
        0x6ct
        0x33t
        0x27t
        0x35t
        0x4ft
        0x58t
        0x1et
        0x61t
        0x35t
        0x10t
        0x7ct
        0x7ct
        0x19t
        0x31t
        0x46t
        0x22t
        0x3et
        0x5bt
        0x3et
        0x1t
        0x41t
        0x3ct
        0x20t
        0x22t
    .end array-data
.end method
