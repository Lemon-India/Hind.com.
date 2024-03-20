.class public final Lms/bd/o/Pgl/pblp;
.super Lms/bd/o/Pgl/pblo;
.source ""


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/pblo;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    new-instance v4, Lms/bd/o/Pgl/pblm$pgla;

    invoke-direct {v4}, Lms/bd/o/Pgl/pblm$pgla;-><init>()V

    const/16 v6, 0x56

    const/4 v13, 0x7

    const/4 v15, 0x4

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v20, -0x1

    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    instance-of v8, v11, Ljavax/net/ssl/HttpsURLConnection;

    const/16 v14, 0x14

    const/16 v23, 0x73

    if-eqz v8, :cond_4

    iget-object v8, v1, Lms/bd/o/Pgl/pblp;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v8, :cond_2

    const-class v8, Lms/bd/o/Pgl/pblp;

    monitor-enter v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v12, v1, Lms/bd/o/Pgl/pblp;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v12, :cond_1

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const v25, 0x1000001

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    if-lt v12, v14, :cond_0

    const-string v29, "b53eff"

    :try_start_3
    new-array v12, v5, [B

    const/16 v30, 0x47

    aput-byte v30, v12, v10

    const/16 v30, 0x1b

    aput-byte v30, v12, v9

    aput-byte v23, v12, v7

    move-object/from16 v30, v12

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :cond_0
    const-string v29, "b4f464"

    :try_start_4
    new-array v12, v13, [B

    const/16 v30, 0x47

    aput-byte v30, v12, v10

    const/16 v30, 0x1a

    aput-byte v30, v12, v9

    const/16 v30, 0x26

    aput-byte v30, v12, v7

    aput-byte v6, v12, v5

    const/16 v30, 0x58

    aput-byte v30, v12, v15

    const/16 v30, 0x6d

    const/16 v24, 0x5

    aput-byte v30, v12, v24

    const/16 v30, 0x33

    const/16 v22, 0x6

    aput-byte v30, v12, v22

    move-object/from16 v30, v12

    invoke-static/range {v25 .. v30}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :goto_0
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v13, 0x0

    :try_start_5
    invoke-virtual {v12, v13, v13, v13}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v12}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v12

    iput-object v12, v1, Lms/bd/o/Pgl/pblp;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    monitor-exit v8

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v13, 0x0

    :goto_2
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :cond_2
    const/4 v13, 0x0

    :goto_3
    move-object v8, v11

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v14, :cond_3

    iget-object v12, v1, Lms/bd/o/Pgl/pblp;->a:Ljavax/net/ssl/SSLSocketFactory;

    :goto_4
    invoke-virtual {v8, v12}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_5

    :cond_3
    new-instance v12, Lms/bd/o/Pgl/pblr;

    iget-object v13, v1, Lms/bd/o/Pgl/pblp;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v12, v13}, Lms/bd/o/Pgl/pblr;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_4

    :cond_4
    :goto_5
    const/16 v8, 0x2710

    invoke-virtual {v11, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v8, 0x1388

    invoke-virtual {v11, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const v26, 0x1000001

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-string v30, "f15ada"

    const/4 v8, 0x6

    :try_start_7
    new-array v12, v8, [B

    aput-byte v6, v12, v10

    const/16 v8, 0x30

    aput-byte v8, v12, v9

    const/16 v8, 0x45

    aput-byte v8, v12, v7

    const/16 v8, 0x10

    aput-byte v8, v12, v5

    const/16 v8, 0x4b

    aput-byte v8, v12, v15

    const/16 v8, 0x62

    const/4 v13, 0x5

    aput-byte v8, v12, v13

    move-object/from16 v31, v12

    invoke-static/range {v26 .. v31}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const v26, 0x1000001

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-string v30, "6897e1"

    :try_start_8
    new-array v12, v5, [B

    const/16 v13, 0x6d

    aput-byte v13, v12, v10

    const/16 v13, 0x75

    aput-byte v13, v12, v9

    aput-byte v10, v12, v7

    move-object/from16 v31, v12

    invoke-static/range {v26 .. v31}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v8, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const v26, 0x1000001

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-string v30, "b651cb"

    const/16 v8, 0xa

    :try_start_9
    new-array v12, v8, [B

    const/16 v8, 0x50

    aput-byte v8, v12, v10

    const/16 v8, 0x3b

    aput-byte v8, v12, v9

    const/16 v8, 0x48

    aput-byte v8, v12, v7

    const/16 v8, 0x4b

    aput-byte v8, v12, v5

    const/16 v8, 0x59

    aput-byte v8, v12, v15

    const/16 v8, 0x76

    const/16 v24, 0x5

    aput-byte v8, v12, v24

    const/4 v8, 0x6

    aput-byte v13, v12, v8

    const/16 v8, 0x1e

    const/16 v25, 0x7

    aput-byte v8, v12, v25

    const/16 v8, 0x6b

    const/16 v19, 0x8

    aput-byte v8, v12, v19

    const/16 v8, 0x6f

    const/16 v18, 0x9

    aput-byte v8, v12, v18

    move-object/from16 v31, v12

    invoke-static/range {v26 .. v31}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const v26, 0x1000001

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-string v30, "eb40f8"

    const/16 v12, 0xa

    :try_start_a
    new-array v6, v12, [B

    const/16 v12, 0x5f

    aput-byte v12, v6, v10

    const/16 v12, 0x65

    aput-byte v12, v6, v9

    const/16 v12, 0x42

    aput-byte v12, v6, v7

    const/16 v12, 0x54

    aput-byte v12, v6, v5

    aput-byte v14, v6, v15

    const/16 v12, 0xe

    const/16 v17, 0x5

    aput-byte v12, v6, v17

    const/16 v12, 0x6a

    const/16 v22, 0x6

    aput-byte v12, v6, v22

    const/16 v12, 0x4a

    const/16 v25, 0x7

    aput-byte v12, v6, v25

    const/16 v12, 0x8

    aput-byte v23, v6, v12

    const/16 v12, 0x65

    const/16 v18, 0x9

    aput-byte v12, v6, v18

    move-object/from16 v31, v6

    invoke-static/range {v26 .. v31}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v11, v8, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const v26, 0x1000001

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-string v30, "3fbfa9"

    const/16 v6, 0xa

    :try_start_b
    new-array v8, v6, [B

    const/16 v6, 0x17

    aput-byte v6, v8, v10

    const/16 v6, 0x77

    aput-byte v6, v8, v9

    aput-byte v14, v8, v7

    aput-byte v10, v8, v5

    const/16 v6, 0x13

    aput-byte v6, v8, v15

    const/16 v6, 0xf

    const/4 v12, 0x5

    aput-byte v6, v8, v12

    const/16 v12, 0x37

    const/16 v22, 0x6

    aput-byte v12, v8, v22

    const/16 v12, 0x42

    const/16 v25, 0x7

    aput-byte v12, v8, v25

    const/16 v12, 0x3d

    const/16 v19, 0x8

    aput-byte v12, v8, v19

    const/16 v12, 0x22

    const/16 v18, 0x9

    aput-byte v12, v8, v18

    move-object/from16 v31, v8

    invoke-static/range {v26 .. v31}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const v26, 0x1000001

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-string v30, "3155c1"

    :try_start_c
    new-array v12, v6, [B

    aput-byte v10, v12, v10

    const/16 v31, 0x2a

    aput-byte v31, v12, v9

    const/16 v32, 0x52

    aput-byte v32, v12, v7

    const/16 v31, 0x44

    aput-byte v31, v12, v5

    const/16 v31, 0x78

    aput-byte v31, v12, v15

    const/16 v31, 0x27

    const/16 v24, 0x5

    aput-byte v31, v12, v24

    const/16 v31, 0x3e

    const/16 v22, 0x6

    aput-byte v31, v12, v22

    const/16 v31, 0x13

    const/16 v25, 0x7

    aput-byte v31, v12, v25

    const/16 v31, 0x61

    const/16 v19, 0x8

    aput-byte v31, v12, v19

    const/16 v31, 0x28

    const/16 v18, 0x9

    aput-byte v31, v12, v18

    const/16 v21, 0xa

    aput-byte v6, v12, v21

    const/16 v33, 0xb

    aput-byte v10, v12, v33

    const/16 v14, 0xc

    aput-byte v13, v12, v14

    const/16 v31, 0xd

    const/16 v34, 0x65

    aput-byte v34, v12, v31

    const/16 v16, 0x77

    const/16 v17, 0xe

    aput-byte v16, v12, v17

    move-object/from16 v31, v12

    invoke-static/range {v26 .. v31}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v8, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const v26, 0x1000001

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-string v30, "2a06bc"

    :try_start_d
    new-array v8, v14, [B

    aput-byte v10, v8, v10

    const/16 v12, 0x6c

    aput-byte v12, v8, v9

    const/16 v12, 0x4d

    aput-byte v12, v8, v7

    const/16 v12, 0x56

    aput-byte v12, v8, v5

    const/16 v12, 0x58

    aput-byte v12, v8, v15

    const/16 v12, 0x7a

    const/16 v24, 0x5

    aput-byte v12, v8, v24

    const/16 v12, 0x25

    const/16 v22, 0x6

    aput-byte v12, v8, v22

    const/16 v12, 0xd

    const/16 v25, 0x7

    aput-byte v12, v8, v25

    const/16 v12, 0x55

    const/16 v19, 0x8

    aput-byte v12, v8, v19

    const/16 v12, 0x7f

    const/16 v18, 0x9

    aput-byte v12, v8, v18

    const/16 v12, 0x33

    const/16 v21, 0xa

    aput-byte v12, v8, v21

    const/16 v12, 0x66

    aput-byte v12, v8, v33

    move-object/from16 v31, v8

    invoke-static/range {v26 .. v31}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const v26, 0x1000001

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-string v30, "d64e8a"

    const/16 v12, 0x18

    :try_start_e
    new-array v12, v12, [B

    const/16 v31, 0x74

    aput-byte v31, v12, v10

    const/16 v31, 0x24

    aput-byte v31, v12, v9

    const/16 v31, 0x57

    aput-byte v31, v12, v7

    const/16 v31, 0x1d

    aput-byte v31, v12, v5

    const/16 v17, 0xe

    aput-byte v17, v12, v15

    const/16 v24, 0x5

    aput-byte v13, v12, v24

    const/16 v13, 0x66

    const/16 v22, 0x6

    aput-byte v13, v12, v22

    const/4 v13, 0x7

    aput-byte v5, v12, v13

    const/16 v13, 0x6c

    const/16 v19, 0x8

    aput-byte v13, v12, v19

    const/16 v13, 0x3a

    const/16 v18, 0x9

    aput-byte v13, v12, v18

    const/16 v13, 0x7b

    const/16 v21, 0xa

    aput-byte v13, v12, v21

    const/16 v13, 0x7b

    aput-byte v13, v12, v33

    const/16 v13, 0x48

    aput-byte v13, v12, v14

    const/16 v13, 0xd

    const/16 v31, 0x12

    aput-byte v31, v12, v13

    const/16 v13, 0x13

    const/16 v17, 0xe

    aput-byte v13, v12, v17

    aput-byte v23, v12, v6

    const/16 v13, 0x10

    aput-byte v23, v12, v13

    const/16 v13, 0x11

    const/16 v31, 0x5a

    aput-byte v31, v12, v13

    const/16 v13, 0x12

    const/16 v31, 0x76

    aput-byte v31, v12, v13

    const/16 v13, 0x13

    const/16 v31, 0x21

    aput-byte v31, v12, v13

    const/16 v13, 0x67

    const/16 v31, 0x14

    aput-byte v13, v12, v31

    const/16 v13, 0x15

    const/16 v31, 0x31

    aput-byte v31, v12, v13

    const/16 v13, 0x16

    const/16 v31, 0x46

    aput-byte v31, v12, v13

    const/16 v13, 0x17

    const/16 v31, 0x1c

    aput-byte v31, v12, v13

    move-object/from16 v31, v12

    invoke-static/range {v26 .. v31}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v8, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-lez v8, :cond_5

    const v26, 0x1000001

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-string v30, "bea2ce"

    const/4 v8, 0x6

    :try_start_f
    new-array v12, v8, [B

    const/16 v8, 0x50

    aput-byte v8, v12, v10

    const/16 v8, 0x68

    aput-byte v8, v12, v9

    const/16 v8, 0x1d

    aput-byte v8, v12, v7

    const/16 v8, 0x4d

    aput-byte v8, v12, v5

    const/16 v8, 0x55

    aput-byte v8, v12, v15

    const/16 v8, 0x77

    const/4 v13, 0x5

    aput-byte v8, v12, v13

    move-object/from16 v31, v12

    invoke-static/range {v26 .. v31}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    const v26, 0x1000001

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-string v30, "cc601b"

    :try_start_10
    new-array v12, v14, [B

    const/16 v13, 0x61

    aput-byte v13, v12, v10

    const/16 v13, 0x64

    aput-byte v13, v12, v9

    const/16 v13, 0x56

    aput-byte v13, v12, v7

    const/16 v13, 0x57

    aput-byte v13, v12, v5

    const/4 v13, 0x7

    aput-byte v13, v12, v15

    const/16 v25, 0x7a

    const/16 v24, 0x5

    aput-byte v25, v12, v24

    const/16 v25, 0x6e

    const/16 v22, 0x6

    aput-byte v25, v12, v22

    const/16 v25, 0x4b

    aput-byte v25, v12, v13

    const/16 v13, 0x63

    const/16 v19, 0x8

    aput-byte v13, v12, v19

    const/16 v13, 0x3d

    const/16 v18, 0x9

    aput-byte v13, v12, v18

    const/16 v13, 0x37

    const/16 v21, 0xa

    aput-byte v13, v12, v21

    const/16 v13, 0x72

    aput-byte v13, v12, v33

    move-object/from16 v31, v12

    invoke-static/range {v26 .. v31}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-array v13, v9, [Ljava/lang/Object;

    aput-object p3, v13, v10

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-lez v8, :cond_6

    const v26, 0x1000001

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-string v30, "6b528c"

    const/16 v8, 0x10

    :try_start_11
    new-array v8, v8, [B

    const/16 v12, 0x3f

    aput-byte v12, v8, v10

    const/16 v12, 0x2d

    aput-byte v12, v8, v9

    aput-byte v32, v8, v7

    aput-byte v32, v8, v5

    const/16 v12, 0x4a

    aput-byte v12, v8, v15

    const/16 v12, 0x66

    const/4 v13, 0x5

    aput-byte v12, v8, v13

    const/16 v12, 0x30

    const/4 v13, 0x6

    aput-byte v12, v8, v13

    const/4 v12, 0x7

    aput-byte v32, v8, v12

    const/16 v12, 0x71

    const/16 v13, 0x8

    aput-byte v12, v8, v13

    const/16 v12, 0x67

    const/16 v13, 0x9

    aput-byte v12, v8, v13

    const/16 v12, 0x34

    const/16 v13, 0xa

    aput-byte v12, v8, v13

    const/16 v12, 0x74

    aput-byte v12, v8, v33

    aput-byte v33, v8, v14

    const/16 v12, 0xd

    aput-byte v32, v8, v12

    const/16 v12, 0xe

    const/4 v13, 0x6

    aput-byte v13, v8, v12

    aput-byte v23, v8, v6

    move-object/from16 v31, v8

    invoke-static/range {v26 .. v31}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v11, v6, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v4, v0}, Lms/bd/o/Pgl/pblm$pgla;->a(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz p6, :cond_7

    const v26, 0x1000001

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-string v30, "d13332"

    :try_start_12
    new-array v0, v15, [B

    const/16 v2, 0x45

    aput-byte v2, v0, v10

    const/16 v2, 0x1c

    aput-byte v2, v0, v9

    aput-byte v23, v0, v7

    aput-byte v23, v0, v5

    move-object/from16 v31, v0

    invoke-static/range {v26 .. v31}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-object/from16 v0, p2

    :try_start_13
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    const v26, 0x1000001

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const-string v30, "0a3e2c"

    const/16 v6, 0xa

    :try_start_14
    new-array v8, v6, [B

    const/16 v6, 0x39

    aput-byte v6, v8, v10

    const/16 v6, 0x2e

    aput-byte v6, v8, v9

    const/16 v6, 0x54

    aput-byte v6, v8, v7

    const/4 v6, 0x5

    aput-byte v6, v8, v5

    const/16 v12, 0x40

    aput-byte v12, v8, v15

    const/16 v12, 0x78

    aput-byte v12, v8, v6

    const/16 v6, 0x3c

    const/4 v12, 0x6

    aput-byte v6, v8, v12

    const/16 v6, 0x47

    const/4 v12, 0x7

    aput-byte v6, v8, v12

    const/16 v6, 0x6b

    const/16 v12, 0x8

    aput-byte v6, v8, v12

    const/16 v6, 0x31

    const/16 v12, 0x9

    aput-byte v6, v8, v12

    move-object/from16 v31, v8

    invoke-static/range {v26 .. v31}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Lms/bd/o/Pgl/pblm$pgla;->b(Ljava/lang/String;I)V

    const/16 v6, 0xc8

    if-ne v0, v6, :cond_b

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    if-eqz v3, :cond_8

    :try_start_15
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_7
    const/16 v3, 0x100

    new-array v3, v3, [B

    :goto_8
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_9

    invoke-virtual {v8, v3, v10, v12}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_8

    :cond_9
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    instance-of v3, v8, Ljava/io/ByteArrayOutputStream;

    if-eqz v3, :cond_a

    move-object v3, v8

    check-cast v3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_9

    :cond_a
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    move-object v8, v6

    goto :goto_a

    :cond_b
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v1, v8}, Lms/bd/o/Pgl/pblo;->a(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Lms/bd/o/Pgl/pblo;->a(Ljava/io/OutputStream;)V

    :try_start_16
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    goto :goto_b

    :catch_0
    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v11, 0x0

    const-string v6, "81f122"

    move/from16 p1, v4

    move/from16 p2, v5

    move-wide/from16 p3, v11

    move-object/from16 p5, v6

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_b
    move-object v8, v3

    goto/16 :goto_12

    :catch_1
    move/from16 v20, v0

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_e

    :catch_2
    :goto_c
    move/from16 v0, v20

    goto :goto_f

    :catchall_3
    move-exception v0

    goto :goto_d

    :catchall_4
    move-exception v0

    const/4 v11, 0x0

    :goto_d
    const/4 v2, 0x0

    :goto_e
    const/4 v8, 0x0

    goto/16 :goto_13

    :catch_3
    const/4 v11, 0x0

    :catch_4
    const/4 v0, -0x1

    const/4 v2, 0x0

    :goto_f
    const/4 v6, 0x0

    :catch_5
    const v3, 0x1000001

    const/4 v8, 0x0

    const-string v14, "cfed9d"

    const/4 v12, 0x6

    :try_start_17
    new-array v13, v12, [B

    const/16 v12, 0x61

    aput-byte v12, v13, v10

    const/16 v12, 0x6c

    aput-byte v12, v13, v9

    const/16 v12, 0x15

    aput-byte v12, v13, v7

    const/16 v12, 0x2f

    aput-byte v12, v13, v5

    const/16 v12, 0xe

    aput-byte v12, v13, v15

    const/16 v12, 0x62

    const/16 v17, 0x5

    aput-byte v12, v13, v17

    move/from16 p1, v3

    move/from16 p2, v8

    const-wide/16 v26, 0x0

    move-wide/from16 p3, v26

    move-object/from16 p5, v14

    move-object/from16 p6, v13

    invoke-static/range {p1 .. p6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    if-eqz v11, :cond_c

    const v3, 0x1000001

    const/4 v8, 0x0

    const-string v14, "781d0b"

    const/16 v12, 0xa

    :try_start_18
    new-array v12, v12, [B

    const/16 v13, 0x3e

    aput-byte v13, v12, v10

    const/16 v13, 0x77

    aput-byte v13, v12, v9

    const/16 v13, 0x56

    aput-byte v13, v12, v7

    aput-byte v15, v12, v5

    const/16 v5, 0x42

    aput-byte v5, v12, v15

    const/16 v5, 0x79

    const/4 v13, 0x5

    aput-byte v5, v12, v13

    const/16 v5, 0x3b

    const/4 v13, 0x6

    aput-byte v5, v12, v13

    const/16 v5, 0x1e

    const/4 v13, 0x7

    aput-byte v5, v12, v13

    const/16 v5, 0x69

    const/16 v13, 0x8

    aput-byte v5, v12, v13

    const/16 v5, 0x30

    const/16 v13, 0x9

    aput-byte v5, v12, v13

    move/from16 p1, v3

    move/from16 p2, v8

    const-wide/16 v15, 0x0

    move-wide/from16 p3, v15

    move-object/from16 p5, v14

    move-object/from16 p6, v12

    invoke-static/range {p1 .. p6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_c
    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v4, v3, v0}, Lms/bd/o/Pgl/pblm$pgla;->a(Ljava/lang/String;I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    invoke-virtual {v1, v6}, Lms/bd/o/Pgl/pblo;->a(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Lms/bd/o/Pgl/pblo;->a(Ljava/io/OutputStream;)V

    if-eqz v11, :cond_d

    :try_start_19
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6

    goto :goto_11

    :catch_6
    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v8, "c222b6"

    move/from16 p1, v3

    move/from16 p2, v4

    move-wide/from16 p3, v5

    move-object/from16 p5, v8

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_d
    :goto_11
    const/4 v8, 0x0

    :goto_12
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    aput-object v8, v2, v9

    return-object v2

    :catchall_5
    move-exception v0

    move-object v8, v2

    move-object v2, v8

    move-object v8, v6

    :goto_13
    invoke-virtual {v1, v8}, Lms/bd/o/Pgl/pblo;->a(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Lms/bd/o/Pgl/pblo;->a(Ljava/io/OutputStream;)V

    if-eqz v11, :cond_e

    :try_start_1a
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7

    goto :goto_14

    :catch_7
    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "bacfd9"

    move/from16 p1, v3

    move/from16 p2, v4

    move-wide/from16 p3, v5

    move-object/from16 p5, v7

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_e
    :goto_14
    throw v0

    :array_0
    .array-data 1
        0x3at
        0x3bt
        0x16t
        0x7at
        0x5t
        0x34t
        0x69t
    .end array-data

    :array_1
    .array-data 1
        0x61t
        0x38t
        0x42t
        0x79t
        0x55t
        0x30t
        0x32t
    .end array-data

    :array_2
    .array-data 1
        0x60t
        0x6bt
        0x13t
        0x2dt
        0x53t
        0x3ft
        0x33t
    .end array-data
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

    invoke-direct/range {v0 .. v6}, Lms/bd/o/Pgl/pblp;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

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

    invoke-direct/range {v0 .. v6}, Lms/bd/o/Pgl/pblp;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

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

    invoke-direct/range {v0 .. v6}, Lms/bd/o/Pgl/pblp;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
