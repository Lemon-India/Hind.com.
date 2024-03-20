.class public final Lms/bd/o/Pgl/pbla;
.super Lms/bd/o/Pgl/pblo;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/pblo;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/retrofit2/client/Header;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0xa

    new-array v8, v2, [B

    fill-array-data v8, :array_0

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "95a3b9"

    invoke-static/range {v3 .. v8}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v0

    :array_0
    .array-data 1
        0x30t
        0x7at
        0x6t
        0x53t
        0x10t
        0x22t
        0x35t
        0x13t
        0x39t
        0x67t
    .end array-data
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    new-instance v4, Lms/bd/o/Pgl/pblm$pgla;

    invoke-direct {v4}, Lms/bd/o/Pgl/pblm$pgla;-><init>()V

    const/16 v6, 0x31

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x6

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, -0x1

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/bytedance/retrofit2/client/Header;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const v18, 0x1000001

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-string v22, "d29e0b"

    :try_start_1
    new-array v7, v13, [B

    const/16 v23, 0x56

    aput-byte v23, v7, v15

    const/16 v23, 0x3f

    aput-byte v23, v7, v11

    const/16 v23, 0x45

    aput-byte v23, v7, v12

    const/16 v23, 0x1a

    aput-byte v23, v7, v14

    aput-byte v13, v7, v10

    const/16 v23, 0x70

    aput-byte v23, v7, v9

    move-object/from16 v23, v7

    invoke-static/range {v18 .. v23}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "262d47"

    const/16 v9, 0xa

    :try_start_2
    new-array v10, v9, [B

    const/16 v21, 0x30

    aput-byte v21, v10, v15

    aput-byte v6, v10, v11

    const/16 v21, 0x52

    aput-byte v21, v10, v12

    aput-byte v14, v10, v14

    const/16 v20, 0x4

    aput-byte v12, v10, v20

    const/16 v21, 0x2f

    const/16 v19, 0x5

    aput-byte v21, v10, v19

    const/16 v21, 0x3f

    const/16 v18, 0x6

    aput-byte v21, v10, v18

    const/16 v21, 0x1e

    const/16 v22, 0x7

    aput-byte v21, v10, v22

    const/16 v21, 0x67

    const/16 v23, 0x8

    aput-byte v21, v10, v23

    const/16 v30, 0x69

    const/16 v31, 0x9

    aput-byte v30, v10, v31

    move-object/from16 v30, v10

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p3

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v7, v10}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/bytedance/retrofit2/client/Header;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "810288"

    const/4 v7, 0x6

    :try_start_3
    new-array v10, v7, [B

    aput-byte v23, v10, v15

    const/16 v7, 0x30

    aput-byte v7, v10, v11

    const/16 v7, 0x40

    aput-byte v7, v10, v12

    const/16 v7, 0x43

    aput-byte v7, v10, v14

    const/16 v7, 0x17

    const/4 v13, 0x4

    aput-byte v7, v10, v13

    const/16 v7, 0x3b

    const/4 v13, 0x5

    aput-byte v7, v10, v13

    move-object/from16 v30, v10

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "a1f748"

    :try_start_4
    new-array v10, v14, [B

    const/16 v13, 0x3a

    aput-byte v13, v10, v15

    const/16 v13, 0x7c

    aput-byte v13, v10, v11

    const/16 v13, 0x5f

    aput-byte v13, v10, v12

    move-object/from16 v30, v10

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v5, v7, v10}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/bytedance/retrofit2/client/Header;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "5c829a"

    :try_start_5
    new-array v7, v9, [B

    const/16 v10, 0x11

    aput-byte v10, v7, v15

    const/16 v13, 0x72

    aput-byte v13, v7, v11

    const/16 v13, 0x4e

    aput-byte v13, v7, v12

    const/16 v13, 0x54

    aput-byte v13, v7, v14

    const/16 v13, 0x4b

    const/16 v20, 0x4

    aput-byte v13, v7, v20

    const/16 v13, 0x57

    const/16 v19, 0x5

    aput-byte v13, v7, v19

    const/4 v13, 0x6

    aput-byte v6, v7, v13

    const/16 v13, 0x47

    aput-byte v13, v7, v22

    aput-byte v21, v7, v23

    const/16 v13, 0x76

    aput-byte v13, v7, v31

    move-object/from16 v30, v7

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "5923e1"

    const/16 v13, 0xf

    :try_start_6
    new-array v6, v13, [B

    const/4 v13, 0x6

    aput-byte v13, v6, v15

    const/16 v13, 0x22

    aput-byte v13, v6, v11

    const/16 v13, 0x55

    aput-byte v13, v6, v12

    const/16 v13, 0x42

    aput-byte v13, v6, v14

    const/16 v13, 0x7e

    const/16 v20, 0x4

    aput-byte v13, v6, v20

    const/16 v13, 0x27

    const/16 v19, 0x5

    aput-byte v13, v6, v19

    const/16 v13, 0x38

    const/16 v18, 0x6

    aput-byte v13, v6, v18

    const/16 v13, 0x1b

    aput-byte v13, v6, v22

    const/16 v13, 0x66

    aput-byte v13, v6, v23

    const/16 v13, 0x2e

    aput-byte v13, v6, v31

    aput-byte v31, v6, v9

    const/16 v13, 0xb

    aput-byte v23, v6, v13

    const/16 v30, 0x72

    const/16 v10, 0xc

    aput-byte v30, v6, v10

    const/16 v30, 0x63

    const/16 v32, 0xd

    aput-byte v30, v6, v32

    const/16 v30, 0x71

    const/16 v33, 0xe

    aput-byte v30, v6, v33

    move-object/from16 v30, v6

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v7, v6}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/bytedance/retrofit2/client/Header;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "6f4769"

    :try_start_7
    new-array v6, v10, [B

    const/4 v7, 0x4

    aput-byte v7, v6, v15

    const/16 v20, 0x6b

    aput-byte v20, v6, v11

    const/16 v20, 0x49

    aput-byte v20, v6, v12

    const/16 v20, 0x57

    aput-byte v20, v6, v14

    aput-byte v10, v6, v7

    const/16 v7, 0x20

    const/16 v19, 0x5

    aput-byte v7, v6, v19

    const/16 v7, 0x21

    const/16 v18, 0x6

    aput-byte v7, v6, v18

    aput-byte v9, v6, v22

    const/16 v30, 0x51

    aput-byte v30, v6, v23

    const/16 v30, 0x7e

    aput-byte v30, v6, v31

    const/16 v30, 0x37

    aput-byte v30, v6, v9

    const/16 v30, 0x61

    aput-byte v30, v6, v13

    move-object/from16 v30, v6

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "015d33"

    const/16 v7, 0x18

    :try_start_8
    new-array v7, v7, [B

    const/16 v30, 0x20

    aput-byte v30, v7, v15

    const/16 v30, 0x23

    aput-byte v30, v7, v11

    const/16 v30, 0x56

    aput-byte v30, v7, v12

    const/16 v30, 0x1c

    aput-byte v30, v7, v14

    const/16 v19, 0x5

    const/16 v20, 0x4

    aput-byte v19, v7, v20

    const/16 v30, 0x27

    aput-byte v30, v7, v19

    const/16 v30, 0x32

    const/16 v18, 0x6

    aput-byte v30, v7, v18

    aput-byte v20, v7, v22

    const/16 v30, 0x6d

    aput-byte v30, v7, v23

    const/16 v30, 0x3b

    aput-byte v30, v7, v31

    const/16 v30, 0x2f

    aput-byte v30, v7, v9

    const/16 v30, 0x7c

    aput-byte v30, v7, v13

    const/16 v30, 0x49

    aput-byte v30, v7, v10

    const/16 v30, 0x13

    aput-byte v30, v7, v32

    const/16 v30, 0x18

    aput-byte v30, v7, v33

    const/16 v24, 0x21

    const/16 v30, 0xf

    aput-byte v24, v7, v30

    const/16 v30, 0x10

    const/16 v34, 0x27

    aput-byte v34, v7, v30

    const/16 v30, 0x5d

    const/16 v34, 0x11

    aput-byte v30, v7, v34

    const/16 v30, 0x12

    const/16 v34, 0x77

    aput-byte v34, v7, v30

    const/16 v30, 0x13

    const/16 v34, 0x20

    aput-byte v34, v7, v30

    const/16 v30, 0x14

    const/16 v34, 0x33

    aput-byte v34, v7, v30

    const/16 v30, 0x36

    const/16 v17, 0x15

    aput-byte v30, v7, v17

    const/16 v30, 0x16

    const/16 v34, 0x47

    aput-byte v34, v7, v30

    const/16 v30, 0x17

    const/16 v34, 0x1d

    aput-byte v34, v7, v30

    move-object/from16 v30, v7

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Lcom/bytedance/retrofit2/client/Header;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "ed2c94"

    const/16 v6, 0x10

    :try_start_9
    new-array v6, v6, [B

    const/16 v7, 0x6c

    aput-byte v7, v6, v15

    const/16 v7, 0x2b

    aput-byte v7, v6, v11

    const/16 v7, 0x55

    aput-byte v7, v6, v12

    aput-byte v14, v6, v14

    const/16 v7, 0x4b

    const/16 v20, 0x4

    aput-byte v7, v6, v20

    const/16 v7, 0x31

    const/16 v19, 0x5

    aput-byte v7, v6, v19

    const/16 v7, 0x63

    const/16 v18, 0x6

    aput-byte v7, v6, v18

    const/16 v7, 0x54

    aput-byte v7, v6, v22

    const/16 v7, 0x76

    aput-byte v7, v6, v23

    const/16 v7, 0x36

    aput-byte v7, v6, v31

    aput-byte v21, v6, v9

    const/16 v7, 0x72

    aput-byte v7, v6, v13

    aput-byte v10, v6, v10

    aput-byte v14, v6, v32

    aput-byte v22, v6, v33

    const/16 v7, 0x24

    const/16 v21, 0xf

    aput-byte v7, v6, v21

    move-object/from16 v30, v6

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6, v2}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getSsRetrofit(Ljava/lang/String;)Lcom/bytedance/retrofit2/Retrofit;

    move-result-object v2

    const-class v5, Lms/bd/o/Pgl/a;

    invoke-virtual {v2, v5}, Lcom/bytedance/retrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lms/bd/o/Pgl/a;

    if-eqz p6, :cond_1

    new-instance v5, Lcom/bytedance/retrofit2/mime/TypedByteArray;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-string v29, "13c0da"

    const/16 v6, 0x18

    :try_start_a
    new-array v6, v6, [B

    const/16 v7, 0x21

    aput-byte v7, v6, v15

    aput-byte v7, v6, v11

    aput-byte v15, v6, v12

    const/16 v7, 0x48

    aput-byte v7, v6, v14

    const/16 v7, 0x52

    const/16 v20, 0x4

    aput-byte v7, v6, v20

    const/16 v7, 0x75

    const/16 v19, 0x5

    aput-byte v7, v6, v19

    const/16 v7, 0x33

    const/16 v18, 0x6

    aput-byte v7, v6, v18

    aput-byte v18, v6, v22

    const/16 v7, 0x3b

    aput-byte v7, v6, v23

    const/16 v7, 0x6f

    aput-byte v7, v6, v31

    const/16 v7, 0x2e

    aput-byte v7, v6, v9

    const/16 v7, 0x7e

    aput-byte v7, v6, v13

    const/16 v7, 0x1f

    aput-byte v7, v6, v10

    const/16 v7, 0x47

    aput-byte v7, v6, v32

    const/16 v7, 0x4f

    aput-byte v7, v6, v33

    const/16 v7, 0x73

    const/16 v9, 0xf

    aput-byte v7, v6, v9

    const/16 v7, 0x10

    const/16 v9, 0x26

    aput-byte v9, v6, v7

    const/16 v7, 0x5f

    const/16 v9, 0x11

    aput-byte v7, v6, v9

    const/16 v7, 0x12

    const/16 v9, 0x21

    aput-byte v9, v6, v7

    const/16 v7, 0x13

    const/16 v9, 0x74

    aput-byte v9, v6, v7

    const/16 v7, 0x14

    const/16 v9, 0x32

    aput-byte v9, v6, v7

    const/16 v7, 0x34

    const/16 v9, 0x15

    aput-byte v7, v6, v9

    const/16 v7, 0x16

    const/16 v9, 0x11

    aput-byte v9, v6, v7

    const/16 v7, 0x17

    const/16 v9, 0x49

    aput-byte v9, v6, v7

    move-object/from16 v30, v6

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-array v7, v15, [Ljava/lang/String;

    move-object/from16 v9, p2

    invoke-direct {v5, v6, v9, v7}, Lcom/bytedance/retrofit2/mime/TypedByteArray;-><init>(Ljava/lang/String;[B[Ljava/lang/String;)V

    invoke-interface {v2, v0, v8, v5}, Lms/bd/o/Pgl/a;->a(Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/mime/TypedByteArray;)Lcom/bytedance/retrofit2/Call;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-interface {v2, v0, v8}, Lms/bd/o/Pgl/a;->a(Ljava/lang/String;Ljava/util/List;)Lcom/bytedance/retrofit2/Call;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_0
    :try_start_b
    invoke-virtual {v4, v0}, Lms/bd/o/Pgl/pblm$pgla;->a(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/bytedance/retrofit2/Call;->execute()Lcom/bytedance/retrofit2/SsResponse;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/SsResponse;->code()I

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/SsResponse;->headers()Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Lms/bd/o/Pgl/pbla;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lms/bd/o/Pgl/pblm$pgla;->b(Ljava/lang/String;I)V

    if-eqz v3, :cond_2

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_1
    :try_start_e
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/SsResponse;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/retrofit2/mime/TypedInput;

    invoke-interface {v3}, Lcom/bytedance/retrofit2/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/16 v7, 0x400

    :try_start_f
    new-array v7, v7, [B

    :goto_2
    const/16 v8, 0x400

    invoke-virtual {v3, v7, v15, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v6, v7, v15, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    instance-of v7, v6, Ljava/io/ByteArrayOutputStream;

    if-eqz v7, :cond_4

    move-object v7, v6

    check-cast v7, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    invoke-static {v3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    invoke-interface {v2}, Lcom/bytedance/retrofit2/Call;->cancel()V

    goto :goto_8

    :catchall_0
    const/4 v3, 0x0

    goto :goto_6

    :catchall_1
    move/from16 v16, v5

    goto :goto_4

    :catchall_2
    const/4 v0, 0x0

    :catchall_3
    :goto_4
    move/from16 v5, v16

    const/4 v3, 0x0

    goto :goto_5

    :catchall_4
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    :goto_5
    const/4 v6, 0x0

    :catchall_5
    :goto_6
    const v7, 0x1000001

    const/4 v8, 0x0

    const-string v13, "84e687"

    const/4 v9, 0x6

    :try_start_10
    new-array v9, v9, [B

    const/16 v10, 0x3d

    aput-byte v10, v9, v15

    const/16 v10, 0x3e

    aput-byte v10, v9, v11

    const/16 v10, 0x15

    aput-byte v10, v9, v12

    const/16 v10, 0x7d

    aput-byte v10, v9, v14

    const/16 v10, 0xf

    const/4 v14, 0x4

    aput-byte v10, v9, v14

    const/16 v10, 0x31

    const/4 v14, 0x5

    aput-byte v10, v9, v14

    move/from16 p1, v7

    move/from16 p2, v8

    const-wide/16 v7, 0x0

    move-wide/from16 p3, v7

    move-object/from16 p5, v13

    move-object/from16 p6, v9

    invoke-static/range {p1 .. p6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/SsResponse;->headers()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lms/bd/o/Pgl/pbla;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v4, v0, v5}, Lms/bd/o/Pgl/pblm$pgla;->a(Ljava/lang/String;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    invoke-static {v3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/bytedance/retrofit2/Call;->cancel()V

    :cond_6
    const/4 v8, 0x0

    :goto_8
    new-array v0, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v15

    aput-object v8, v0, v11

    return-object v0

    :catchall_6
    move-exception v0

    invoke-static {v3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->safeClose(Ljava/io/Closeable;)V

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/bytedance/retrofit2/Call;->cancel()V

    :cond_7
    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lms/bd/o/Pgl/pbla;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lms/bd/o/Pgl/pbla;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lms/bd/o/Pgl/pbla;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
